package ru.killer666.hearthstone;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.format.Formatter;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.blizzard.wtcg.hearthstone.HearthstoneAlert;
import com.turn.ttorrent.client.Client;
import com.turn.ttorrent.client.SharedTorrent;
import com.unity3d.player.UnityPlayer;
import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;

import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.InetAddress;

public class DownloadSelector extends WaitableTask {
    public static boolean isSkipMarketDownload = false;
    private boolean isP2P = false;
    static String torrentFileUrl;

    private File mainObb;
    private File patchObb;

    private final Runnable repeatableProgressUpdate = new Runnable() {
        @Override
        public void run() {
            DownloadSelector.this.updateProgress((int) sharedTorrent.getCompletion(),
                    "P2P: загружено " +
                            Formatter.formatFileSize(UnityPlayer.currentActivity, sharedTorrent.getDownloaded()) + "/" +
                            Formatter.formatFileSize(UnityPlayer.currentActivity, sharedTorrent.getLeft()) + ", " + sharedTorrent.getCompletion() + "%");

            if (isDownloading)
                handler.postDelayed(repeatableProgressUpdate, 1000);
        }
    };
    private Handler handler;
    private ProgressBar m_progressBar;
    private TextView m_progressText;
    private SharedTorrent sharedTorrent;
    private boolean isDownloading = false;

    private void updateProgress(final int percent, final String text) {
        UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                DownloadSelector.this.m_progressBar.setProgress(percent);
                DownloadSelector.this.m_progressText.setText(text);
            }
        });
    }

    private void startDownload() throws Exception {

        if (DownloadSelector.torrentFileUrl == null)
            throw new NullPointerException("Cancelled, torrentFileUrl == null");

        Class loadingScreen = Class.forName("com.blizzard.wtcg.hearthstone.LoadingScreen");

        Field f_m_progressBar = loadingScreen.getDeclaredField("m_progressBar");
        Field f_m_progressText = loadingScreen.getDeclaredField("m_progressText");

        f_m_progressBar.setAccessible(true);
        f_m_progressText.setAccessible(true);

        this.m_progressBar = (ProgressBar) f_m_progressBar.get(Wrapper.loadingScreen);
        this.m_progressText = (TextView) f_m_progressText.get(Wrapper.loadingScreen);

        // Download torrent file
        Log.i(Wrapper.TAG, "Downloading torrent file from " + DownloadSelector.torrentFileUrl);

        this.updateProgress(0, "Скачивание торрент файла...");
        HttpGet httpget = new HttpGet(DownloadSelector.torrentFileUrl);
        CachePathChecker.cachePath.mkdirs();

        HttpResponse response = UpdateChecker.httpclient.execute(httpget);

        InputStream instream = response.getEntity().getContent();
        this.sharedTorrent = new SharedTorrent(IOUtils.toByteArray(instream), CachePathChecker.cachePath);
        instream.close();

        final Client client = new Client(InetAddress.getLocalHost(), this.sharedTorrent);

        client.setMaxDownloadRate(0.0);
        client.setMaxUploadRate(0.1);

        this.isDownloading = true;
        Thread shutdownHook = new Thread(new Client.ClientShutdown(client, null));
        Runtime.getRuntime().addShutdownHook(shutdownHook);

        UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                handler = new Handler();
                handler.postDelayed(repeatableProgressUpdate, 1000);
            }
        });

        client.download();
        client.waitForCompletion();

        this.isDownloading = false;
        Runtime.getRuntime().removeShutdownHook(shutdownHook);

        if (!this.sharedTorrent.isComplete()) {
            HearthstoneAlert
                    .showAlert(
                            "",
                            "Загрузка завершилась неудачей!",
                            "ОК", new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int item) {
                                    dialog.dismiss();
                                    System.exit(0);
                                }
                            }, "", null, false);
        } else {
            this.mainObb.createNewFile();
            this.patchObb.createNewFile();

            this.endTask();
        }
    }

    @Override
    boolean doTask() {
        Log.i(Wrapper.TAG, "Okay, let's start");

        boolean isDownloadRequired;

        try {
            Class loadingScreen = Class.forName("com.blizzard.wtcg.hearthstone.LoadingScreen");

            Field m_mainObbPath = loadingScreen.getDeclaredField("m_mainObbPath");
            Field m_patchObbPath = loadingScreen.getDeclaredField("m_patchObbPath");

            m_mainObbPath.setAccessible(true);
            m_patchObbPath.setAccessible(true);

            this.mainObb = new File((String) m_mainObbPath.get(Wrapper.loadingScreen));
            this.patchObb = new File((String) m_patchObbPath.get(Wrapper.loadingScreen));

            isDownloadRequired = !this.mainObb.exists() || !this.patchObb.exists();
            Log.i(Wrapper.TAG, "isDownloadRequired: " + isDownloadRequired);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            return false;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return false;
        }

        if (isDownloadRequired) {
            Log.i(Wrapper.TAG, "Showing dialog...");

            final Object waitObject = new Object();

            UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
                public void run() {
                    final CharSequence[] items = {"Google Play маркет", "Торрент (сразу распакованный кэш)", "Не загружать"};

                    final AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);

                    builder.setTitle("Выберите способ загрузки кэша:");
                    builder.setCancelable(false);
                    builder.setSingleChoiceItems(items, -1, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int item) {
                            dialog.dismiss();

                            DownloadSelector.isSkipMarketDownload = item > 0;
                            DownloadSelector.this.isP2P = item == 1;

                            synchronized (waitObject) {
                                waitObject.notifyAll();
                            }
                        }
                    });
                    builder.create().show();
                }
            });

            synchronized (waitObject) {
                try {
                    waitObject.wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }

            if (this.isP2P) {
                try {
                    this.startDownload();
                } catch (Exception e) {
                    e.printStackTrace();

                    HearthstoneAlert.showAlert("", "Ошибка при загрузке: " + e.getClass().getCanonicalName() + " ("
                            + e.getMessage() + ")\n\nПовторите попытку, возможно поможет", "ОК", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int item) {
                            dialog.dismiss();
                            DownloadSelector.this.endTask();
                        }
                    }, "", null, false);
                }
            } else
                this.endTask();
        }

        return isDownloadRequired;
    }
}
