package ru.killer666.hearthstone;

import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.*;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import com.unity3d.player.UnityPlayer;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.CoreProtocolPNames;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.*;

import static ru.killer666.hearthstone.Wrapper.TAG;

public class UpdateChecker extends WaitableTask {
    private static final String prefsFile = "updater_settings";
    static int jenkinsBuild = 1; // Здесь содержать число 1, иначе патчинг кода Smali будет неверным
    private final int checkInterval = 3600;
    private final String versionUrl = "http://hearthstone-update-server.killer666.ru/version.json";

    static String convertStreamToString(InputStream is) {
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));
        StringBuilder sb = new StringBuilder();

        String line;
        try {
            while ((line = reader.readLine()) != null) {
                sb.append(line).append("\n");
            }
        } catch (IOException e) {
            Log.e(TAG, "Exception thrown during reading stream", e);
        } finally {
            try {
                is.close();
            } catch (IOException e) {
                Log.e(TAG, "Exception thrown during closing input stream", e);
            }
        }

        return sb.toString();
    }

    static int getVersionCode() {
        try {
            return UnityPlayer.currentActivity.getPackageManager().getPackageInfo(UnityPlayer.currentActivity.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Exception thrown during getting version code", e);
            return -1;
        }
    }

    @Override
    boolean doTask() {
        Log.i(TAG, "Updater is running");

        final int versionCode = getVersionCode();

        if (versionCode == -1) {
            Log.i(TAG, "Invalid version code");
            return false;
        }

        final SharedPreferences preferences = Wrapper.getPreferences(prefsFile);

        if (preferences.getLong("lastcheck", 0) + checkInterval > System.currentTimeMillis() / 1000) {
            Log.i(TAG, "Check skipped");
            return false;
        }

        HttpClient httpclient = new DefaultHttpClient();
        httpclient.getParams().setParameter(CoreProtocolPNames.USER_AGENT, "Hearthstone Android/" + versionCode + ".jenkins-" + jenkinsBuild);

        HttpGet httpget = new HttpGet(versionUrl);
        JSONObject remoteData;

        try {
            HttpResponse response = httpclient.execute(httpget);
            InputStream instream = response.getEntity().getContent();
            remoteData = new JSONObject(convertStreamToString(instream));
            instream.close();
        } catch (Exception e) {
            Log.e(TAG, "Exception thrown during downloading", e);
            return false;
        }

        int remoteVersionCode;
        int remoteVersionBuild;
        String remoteVersionName;

        try {
            remoteVersionCode = remoteData.getInt("code");
            remoteVersionBuild = remoteData.getInt("build");
            remoteVersionName = remoteData.getString("name");
        } catch (JSONException e) {
            Log.e(TAG, "Exception thrown during parsing json data", e);
            return false;
        }

        if (remoteVersionBuild > jenkinsBuild) {
            // Downloading
            Log.i(TAG, "Found update! (Current: " + versionCode + ", " + jenkinsBuild + "; New: " + remoteVersionCode
                    + ", " + remoteVersionBuild + ")");

            final TempStorage tempStorage = new TempStorage(remoteVersionCode, remoteVersionBuild, remoteVersionName,
                    remoteData);

            UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
                public void run() {
                    AlertDialog.Builder dlgAlert = new AlertDialog.Builder(UnityPlayer.currentActivity);

                    dlgAlert.setMessage("Найдена новая версия " + tempStorage.getRemoteVersionName() + " ("
                            + tempStorage.getRemoteVersionCode() + (tempStorage.getRemoteVersionBuild() != 1 ? ", сборка " + tempStorage.getRemoteVersionBuild()
                            + ")" : "") + "! Обновить?");
                    dlgAlert.setTitle("Hearthstone");
                    dlgAlert.setPositiveButton("Да", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            String url;
                            try {
                                url = tempStorage.getRemoteData().getString("url");
                            } catch (JSONException e) {
                                Log.e(TAG, "Exception thrown during parsing json", e);
                                UpdateChecker.this.endTask();

                                return;
                            }

                            Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).mkdirs();

                            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));

                            request.setAllowedNetworkTypes(
                                    DownloadManager.Request.NETWORK_WIFI | DownloadManager.Request.NETWORK_MOBILE)
                                    .setAllowedOverRoaming(false)
                                    .setDescription(
                                            "Обновление до версии " + tempStorage.getRemoteVersionName() + ", "
                                                    + tempStorage.getRemoteVersionCode() + ", сборка "
                                                    + tempStorage.getRemoteVersionBuild());
                            request.setTitle("Hearthstone Mod Updater");
                            request.allowScanningByMediaScanner();
                            request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);

                            final String targetFilename = "Hearthstone-" + tempStorage.getRemoteVersionName() + "-"
                                    + tempStorage.getRemoteVersionCode() + "-jenkins-build-"
                                    + tempStorage.getRemoteVersionBuild() + ".apk";
                            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, targetFilename);

                            DownloadManager manager = (DownloadManager) UnityPlayer.currentActivity
                                    .getSystemService(Context.DOWNLOAD_SERVICE);
                            manager.enqueue(request);

                            BroadcastReceiver receiver = new BroadcastReceiver() {
                                public void onReceive(Context ctxt, Intent intent) {
                                    File file = new File(Environment
                                            .getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS),
                                            targetFilename);
                                    file.setReadable(true, false);

                                    Intent newIntent = new Intent(Intent.ACTION_VIEW);
                                    newIntent.setDataAndType(Uri.fromFile(file),
                                            "application/vnd.android.package-archive");
                                    UnityPlayer.currentActivity.startActivity(newIntent);

                                    System.exit(0);
                                }
                            };

                            UnityPlayer.currentActivity.registerReceiver(receiver, new IntentFilter(
                                    DownloadManager.ACTION_DOWNLOAD_COMPLETE));
                            UnityPlayer.currentActivity.registerReceiver(receiver, new IntentFilter(
                                    DownloadManager.ACTION_NOTIFICATION_CLICKED));

                            AlertDialog.Builder dlgAlert = new AlertDialog.Builder(UnityPlayer.currentActivity);
                            dlgAlert.setMessage("Ожидайте загрузки нового APK...");
                            dlgAlert.setTitle("Hearthstone");

                            dlgAlert.setCancelable(false);
                            dlgAlert.create().show();
                        }
                    });
                    dlgAlert.setNegativeButton("Нет", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            endTask();
                        }
                    });

                    dlgAlert.setCancelable(false);
                    dlgAlert.create().show();
                }
            });

            return true;
        } else {
            Log.i(TAG, "Version is actually! (Current: " + versionCode + ", Remote: " + remoteVersionCode + ", Build: "
                    + remoteVersionBuild + ")");

            SharedPreferences.Editor edit = preferences.edit();
            edit.putLong("lastcheck", System.currentTimeMillis() / 1000);
            edit.commit();
        }

        return false;
    }

    static class TempStorage {
        private int remoteVersionCode;
        private int remoteVersionBuild;
        private String remoteVersionName;
        private JSONObject remoteData;

        TempStorage(int remoteVersionCode, int remoteVersionBuild, String remoteVersionName, JSONObject remoteData) {
            this.remoteVersionCode = remoteVersionCode;
            this.remoteVersionBuild = remoteVersionBuild;
            this.remoteVersionName = remoteVersionName;
            this.remoteData = remoteData;
        }

        int getRemoteVersionCode() {
            return remoteVersionCode;
        }

        int getRemoteVersionBuild() {
            return remoteVersionBuild;
        }

        String getRemoteVersionName() {
            return remoteVersionName;
        }

        JSONObject getRemoteData() {
            return remoteData;
        }
    }
}
