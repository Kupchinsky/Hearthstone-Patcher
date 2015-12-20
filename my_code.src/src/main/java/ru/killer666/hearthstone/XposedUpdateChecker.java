package ru.killer666.hearthstone;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.util.Log;
import com.blizzard.wtcg.hearthstone.HearthstoneAlert;
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
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import static ru.killer666.hearthstone.Wrapper.TAG;

public class XposedUpdateChecker extends WaitableTask {
    public static File assetsPath = null;
    private final String versionUrl = "http://hearthstone-update-server.killer666.ru/xposed_files.json";

    private String md5hex(String md5) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] array = md.digest(md5.getBytes());

            StringBuilder sb = new StringBuilder();

            for (byte anArray : array) {
                sb.append(Integer.toHexString((anArray & 0xFF) | 0x100).substring(1, 3));
            }

            return sb.toString();
        } catch (java.security.NoSuchAlgorithmException e) {
            Log.e(TAG, "No md5, wow", e);
        }

        return null;
    }

    private ProgressDialog launchRingDialog(Activity activity, String title, String message) {
        ProgressDialog ringProgressDialog = ProgressDialog.show(activity,
                title, message, true);

        ringProgressDialog.setCancelable(false);

        return ringProgressDialog;
    }

    private void downloadFailed(Exception e) {
        HearthstoneAlert.showAlert("", "Загрузка файлов мода не удалась!\n" + e.getMessage(), "ОК", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int item) {
                XposedUpdateChecker.this.endTask();
            }
        }, "", null, false);
    }

    @Override
    boolean doTask() {
        Log.i(TAG, "Xposed updater is running");

        final int versionCode = UpdateChecker.getVersionCode();

        if (versionCode == -1) {
            Log.i(TAG, "Invalid version code");
            return false;
        }

        HttpClient httpclient = new DefaultHttpClient();
        httpclient.getParams().setParameter(CoreProtocolPNames.USER_AGENT, "Hearthstone Android/Xposed-" + versionCode);

        HttpGet httpget = new HttpGet(versionUrl);
        JSONObject remoteData;

        try {
            HttpResponse response = httpclient.execute(httpget);
            InputStream instream = response.getEntity().getContent();
            remoteData = new JSONObject(UpdateChecker.convertStreamToString(instream));

            instream.close();
        } catch (Exception e) {
            Log.e(TAG, "Exception thrown during downloading", e);
            return false;
        }

        List<XposedAsset> xposedAssets = new ArrayList<>();

        try {
            JSONArray array = remoteData.getJSONArray("files");

            for (int i = 0; i < array.length(); i++) {
                JSONObject jsonObject = array.getJSONObject(i);
                XposedAsset xposedAsset = new XposedAsset();

                xposedAsset.setFileName(jsonObject.getString("filename"));
                xposedAsset.setUrl(jsonObject.getString("url"));
                xposedAsset.setHash(jsonObject.getString("hash"));

                xposedAssets.add(xposedAsset);
            }
        } catch (JSONException e) {
            Log.e(TAG, "Exception thrown during reading json", e);
            return false;
        }

        Iterator<XposedAsset> iterator = xposedAssets.iterator();

        while (iterator.hasNext()) {
            XposedAsset xposedAsset = iterator.next();
            String hash;

            try {
                hash = this.md5hex(UpdateChecker.convertStreamToString(UnityPlayer.currentActivity.getAssets().open(xposedAsset.getFileName())));
            } catch (IOException e) {
                Log.e(TAG, "Exception thrown during calculating md5 for file", e);
                continue;
            }

            if (xposedAsset.getHash().equalsIgnoreCase(hash)) {
                Log.i(TAG, xposedAsset.getFileName() + " hashes equals, skipping");
                iterator.remove();
            }
        }

        if (xposedAssets.size() != 0) {
            final Object waitObject = new Object();

            final ProgressDialog progressDialog;
            final ProgressDialog[] _progressDialog = new ProgressDialog[1];

            UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    _progressDialog[0] = XposedUpdateChecker.this.launchRingDialog(UnityPlayer.currentActivity, "Загрузка файлов мода...", "");
                    waitObject.notifyAll();
                }
            });

            try {
                waitObject.wait();
            } catch (InterruptedException e) {
                Log.e(TAG, "Interrupted", e);
            }

            progressDialog = _progressDialog[0];

            for (final XposedAsset xposedAsset : xposedAssets) {
                final HttpResponse response;

                try {
                    response = httpclient.execute(new HttpGet(xposedAsset.getUrl()));
                } catch (IOException e) {
                    Log.e(TAG, "Exception thrown during executing http request", e);
                    this.downloadFailed(e);

                    return true;
                }

                final InputStream inputStream;
                try {
                    inputStream = response.getEntity().getContent();
                } catch (IOException e) {
                    Log.e(TAG, "Exception thrown during getting input stream", e);
                    this.downloadFailed(e);

                    return true;
                }

                final OutputStream outputStream;
                try {
                    outputStream = new FileOutputStream(new File(assetsPath, xposedAsset.getFileName()));
                } catch (FileNotFoundException e) {
                    Log.e(TAG, "Exception thrown during getting output stream", e);
                    this.downloadFailed(e);

                    return true;
                }

                UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            progressDialog.setMax(Integer.parseInt(response.getFirstHeader("Content-Length").getValue()));
                        } catch (NumberFormatException e) {
                            Log.e(TAG, "Exception thrown during parsing Content-Length header", e);
                            progressDialog.setMax(0);
                        }

                        progressDialog.setProgress(0);
                        progressDialog.setMessage(xposedAsset.getFileName());
                    }
                });

                int read;
                final int[] readed = new int[1];
                byte[] bytes = new byte[1024];

                try {
                    while ((read = inputStream.read(bytes)) != -1) {
                        outputStream.write(bytes, 0, read);

                        readed[0] += read;

                        UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                progressDialog.setProgress(readed[0]);
                            }
                        });
                    }
                } catch (IOException e) {
                    Log.e(TAG, "Exception thrown during reading input stream/writing output stream", e);
                    this.downloadFailed(e);

                    return true;
                }

                try {
                    inputStream.close();
                    outputStream.close();
                } catch (IOException e) {
                    Log.e(TAG, "Exception thrown during closing streams", e);
                    this.downloadFailed(e);

                    return true;
                }
            }

            UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    progressDialog.dismiss();
                }
            });
        }

        return false;
    }

    static class XposedAsset {
        private String fileName;
        private String url;
        private String hash;

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
}
