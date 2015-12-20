package ru.killer666.hearthstone;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.app.ProgressDialog;
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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import static ru.killer666.hearthstone.Wrapper.TAG;

public class UpdateChecker extends WaitableTask {
    private static final String prefsFile = "updater_settings";
    static int jenkinsBuild = 1; // Здесь содержать число 1, иначе патчинг кода Smali будет неверным
    private final int checkInterval = 3600;
    private final String versionUrl = "http://hearthstone-update-server.killer666.ru/version.json";
    private final String xposedVersionUrl = "http://hearthstone-update-server.killer666.ru/xposed_files.json";

    private String md5hex(String md5) {
        try {
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
            byte[] array = md.digest(md5.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte anArray : array) {
                sb.append(Integer.toHexString((anArray & 0xFF) | 0x100).substring(1, 3));
            }
            return sb.toString();
        } catch (java.security.NoSuchAlgorithmException ignored) {
        }
        return null;
    }

    private String convertStreamToString(InputStream is) {
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));
        StringBuilder sb = new StringBuilder();

        String line;
        try {
            while ((line = reader.readLine()) != null) {
                sb.append(line).append("\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return sb.toString();
    }

    ProgressDialog launchRingDialog(Activity activity, String title, String message) {
        ProgressDialog ringProgressDialog = ProgressDialog.show(activity,
                title, message, true);

        ringProgressDialog.setCancelable(false);

        return ringProgressDialog;
    }

    boolean doTask() {
        Log.i(TAG, "Updater is running...");

        final Activity activity = UnityPlayer.currentActivity;
        int versionCode;

        try {
            versionCode = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }

        final SharedPreferences preferences = Wrapper.getPreferences(prefsFile);

        if (!Wrapper.isXposed) {
            long lastChecked = preferences.getLong("lastcheck", 0);

            if (lastChecked + checkInterval > System.currentTimeMillis() / 1000) {
                Log.i(TAG, "Check skipped.");
                return false;
            }
        }

        // Downloading version file
        HttpClient httpclient = new DefaultHttpClient();
        httpclient.getParams().setParameter(CoreProtocolPNames.USER_AGENT,
                Wrapper.isXposed ? "Hearthstone Android/Xposed" : "Hearthstone Android/" + versionCode + ".jenkins-" + jenkinsBuild);

        HttpGet httpget = new HttpGet(Wrapper.isXposed ? xposedVersionUrl : versionUrl);
        JSONObject remoteData;

        try {
            HttpResponse response = httpclient.execute(httpget);
            InputStream instream = response.getEntity().getContent();
            remoteData = new JSONObject(convertStreamToString(instream));
            instream.close();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        if (Wrapper.isXposed) {
            List<XposedFile> xposedFiles = new ArrayList<>();

            try {
                JSONArray array = remoteData.getJSONArray("files");

                for (int i = 0; i < array.length(); i++) {
                    JSONObject file = array.getJSONObject(i);
                    XposedFile xposedFile = new XposedFile();

                    xposedFile.setFileName(file.getString("filename"));
                    xposedFile.setUrl(file.getString("url"));
                    xposedFile.setHash(file.getString("hash"));

                    xposedFiles.add(xposedFile);
                }
            } catch (JSONException e) {
                e.printStackTrace();
                return false;
            }

            Iterator<XposedFile> iterator = xposedFiles.iterator();

            while (iterator.hasNext()) {
                XposedFile xposedFile = iterator.next();
                xposedFile.setFile(new File(CachePathChecker.cachePath, xposedFile.getFileName()));
                String hash;

                try {
                    hash = this.md5hex(this.convertStreamToString(new FileInputStream(xposedFile.getFile())));
                } catch (FileNotFoundException e) {
                    continue;
                }

                if (xposedFile.getHash().equalsIgnoreCase(hash)) {
                    Log.i(TAG, xposedFile.getFileName() + " hashes equals, skipping");
                    iterator.remove();
                }
            }

            if (xposedFiles.size() != 0) {
                final Object waitObject = new Object();
                final ProgressDialog[] _progressDialog = new ProgressDialog[1];

                activity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        _progressDialog[0] = UpdateChecker.this.launchRingDialog(activity, "Загрузка файлов мода...", "");
                        waitObject.notifyAll();
                    }
                });

                try {
                    waitObject.wait();
                } catch (InterruptedException ignored) {
                }

                final ProgressDialog progressDialog = _progressDialog[0];

                for (final XposedFile xposedFile : xposedFiles) {
                    try {
                        final HttpResponse response = httpclient.execute(new HttpGet(xposedFile.getUrl()));
                        InputStream inputStream = response.getEntity().getContent();
                        OutputStream outputStream = new FileOutputStream(xposedFile.getFile());

                        activity.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                progressDialog.setMax(Integer.parseInt(response.getFirstHeader("Content-Length").getValue()));
                                progressDialog.setProgress(0);
                                progressDialog.setMessage(xposedFile.getFileName());
                            }
                        });

                        int read;
                        final int[] readed = new int[1];
                        byte[] bytes = new byte[1024];

                        while ((read = inputStream.read(bytes)) != -1) {
                            outputStream.write(bytes, 0, read);

                            readed[0] += read;

                            activity.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    progressDialog.setProgress(readed[0]);
                                }
                            });
                        }

                        inputStream.close();
                        outputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }

                activity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        progressDialog.dismiss();
                    }
                });
            }
        } else {
            int remoteVersionCode;
            int remoteVersionBuild;
            String remoteVersionName;

            try {
                remoteVersionCode = remoteData.getInt("code");
                remoteVersionBuild = remoteData.getInt("build");
                remoteVersionName = remoteData.getString("name");
            } catch (JSONException e) {
                e.printStackTrace();
                return false;
            }

            if (remoteVersionBuild > jenkinsBuild) {
                // Downloading
                Log.i(TAG, "Found update! (Current: " + versionCode + ", " + jenkinsBuild + "; New: " + remoteVersionCode
                        + ", " + remoteVersionBuild + ")");

                final CustomInfo customInfo = new CustomInfo(remoteVersionCode, remoteVersionBuild, remoteVersionName,
                        remoteData);

                activity.runOnUiThread(new Runnable() {
                    public void run() {
                        AlertDialog.Builder dlgAlert = new AlertDialog.Builder(activity);

                        dlgAlert.setMessage("Найдена новая версия " + customInfo.getRemoteVersionName() + " ("
                                + customInfo.getRemoteVersionCode() + (customInfo.getRemoteVersionBuild() != 1 ? ", сборка " + customInfo.getRemoteVersionBuild()
                                + ")" : "") + "! Обновить?");
                        dlgAlert.setTitle("Hearthstone");
                        dlgAlert.setPositiveButton("Да", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int which) {
                                String url;
                                try {
                                    url = customInfo.getRemoteData().getString("url");
                                } catch (JSONException e) {
                                    e.printStackTrace();
                                    endTask();
                                    return;
                                }

                                Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).mkdirs();

                                DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));

                                request.setAllowedNetworkTypes(
                                        DownloadManager.Request.NETWORK_WIFI | DownloadManager.Request.NETWORK_MOBILE)
                                        .setAllowedOverRoaming(false)
                                        .setDescription(
                                                "Обновление до версии " + customInfo.getRemoteVersionName() + ", "
                                                        + customInfo.getRemoteVersionCode() + ", сборка "
                                                        + customInfo.getRemoteVersionBuild());
                                request.setTitle("Hearthstone Mod Updater");
                                request.allowScanningByMediaScanner();
                                request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);

                                final String targetFilename = "Hearthstone-" + customInfo.getRemoteVersionName() + "-"
                                        + customInfo.getRemoteVersionCode() + "-jenkins-build-"
                                        + customInfo.getRemoteVersionBuild() + ".apk";
                                request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, targetFilename);

                                DownloadManager manager = (DownloadManager) activity
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
                                        activity.startActivity(newIntent);

                                        System.exit(0);
                                    }
                                };

                                activity.registerReceiver(receiver, new IntentFilter(
                                        DownloadManager.ACTION_DOWNLOAD_COMPLETE));
                                activity.registerReceiver(receiver, new IntentFilter(
                                        DownloadManager.ACTION_NOTIFICATION_CLICKED));

                                AlertDialog.Builder dlgAlert = new AlertDialog.Builder(activity);
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
        }

        return false;
    }

    static class XposedFile {
        private File file;
        private String fileName;
        private String url;
        private String hash;

        public File getFile() {
            return file;
        }

        public void setFile(File file) {
            this.file = file;
        }

        public String getFileName() {
            return fileName;
        }

        public void setFileName(String fileName) {
            this.fileName = fileName;
        }

        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }

        public String getHash() {
            return hash;
        }

        public void setHash(String hash) {
            this.hash = hash;
        }
    }

    static class CustomInfo {
        private int remoteVersionCode;
        private int remoteVersionBuild;
        private String remoteVersionName;
        private JSONObject remoteData;

        CustomInfo(int remoteVersionCode, int remoteVersionBuild, String remoteVersionName, JSONObject remoteData) {
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
