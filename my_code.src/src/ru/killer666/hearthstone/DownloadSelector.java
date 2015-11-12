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
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.InetAddress;

public class DownloadSelector extends WaitableTask {
    public static boolean isP2P = false;
    public static boolean isDownloadRequired = false;
    static String torrentFileUrl;

    private static File mainObb;
    private static File patchObb;

    private static final Runnable repeatableProgressUpdate = new Runnable() {
        @Override
        public void run() {
            m_progressBar.setProgress((int) sharedTorrent.getCompletion());
            m_progressText.setText("P2P: загружено " +
                    Formatter.formatFileSize(UnityPlayer.currentActivity, sharedTorrent.getDownloaded()) + "/" +
                    Formatter.formatFileSize(UnityPlayer.currentActivity, sharedTorrent.getLeft()) + ", " + sharedTorrent.getCompletion() + "%");

            if (isDownloading)
                handler.postDelayed(repeatableProgressUpdate, 1000);
        }
    };
    private static Handler handler;
    private static ProgressBar m_progressBar;
    private static TextView m_progressText;
    private static SharedTorrent sharedTorrent;
    private static boolean isDownloading = false;

    @SuppressWarnings("unused")
    public static void startP2P() {

        Log.i(Wrapper.TAG, "Downloading torrent file from " + torrentFileUrl);

        if (torrentFileUrl == null)
            return;

        // Download torrent file
        HttpGet httpget = new HttpGet(torrentFileUrl);
        CachePathChecker.cachePath.mkdirs();

        try {
            HttpResponse response = UpdateChecker.httpclient.execute(httpget);

            InputStream instream = response.getEntity().getContent();
            sharedTorrent = new SharedTorrent(IOUtils.toByteArray(instream), CachePathChecker.cachePath);
            instream.close();
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }

        //
        final Client client;

        try {
            client = new Client(InetAddress.getLocalHost(), sharedTorrent);
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }

        client.setMaxDownloadRate(0.0);
        client.setMaxUploadRate(0.1);

        Runtime.getRuntime().addShutdownHook(new Thread(new Client.ClientShutdown(client, null)));

        try {
            Class loadingScreen = Class.forName("com.blizzard.wtcg.hearthstone.LoadingScreen");

            Field f_m_progressBar = loadingScreen.getDeclaredField("m_progressBar");
            Field f_m_progressText = loadingScreen.getDeclaredField("m_progressText");

            f_m_progressBar.setAccessible(true);
            f_m_progressText.setAccessible(true);

            m_progressBar = (ProgressBar) f_m_progressBar.get(Wrapper.loadingScreen);
            m_progressText = (TextView) f_m_progressText.get(Wrapper.loadingScreen);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return;
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            return;
        }

        sharedTorrent = client.getTorrent();
        isDownloading = true;

        UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                handler = new Handler();
                handler.postDelayed(repeatableProgressUpdate, 1000);
            }
        });

        client.download();
        client.waitForCompletion();

        isDownloading = false;

        if (!client.getTorrent().isComplete()) {
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
            try {
                mainObb.createNewFile();
                patchObb.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    boolean doTask() {
        Log.i(Wrapper.TAG, "Okay, let's start");

        try {
            Class loadingScreen = Class.forName("com.blizzard.wtcg.hearthstone.LoadingScreen");

            Field m_mainObbPath = loadingScreen.getDeclaredField("m_mainObbPath");
            Field m_patchObbPath = loadingScreen.getDeclaredField("m_patchObbPath");

            m_mainObbPath.setAccessible(true);
            m_patchObbPath.setAccessible(true);

            mainObb = new File((String) m_mainObbPath.get(Wrapper.loadingScreen));
            patchObb = new File((String) m_patchObbPath.get(Wrapper.loadingScreen));

            isDownloadRequired = !mainObb.exists() || !patchObb.exists();

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

        Log.i(Wrapper.TAG, "Showing dialog...");

        UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
            public void run() {
                final CharSequence[] items = {"Google Play маркет", "Торрент (сразу распакованный кэш)", "Не загружать"};

                AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);

                builder.setTitle("Выберите способ загрузки кэша:");
                builder.setCancelable(false);
                builder.setSingleChoiceItems(items, -1, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int item) {
                        dialog.dismiss();

                        isP2P = item == 1;
                        endTask();
                    }
                });
                builder.create().show();
            }
        });

        return true;
    }
}
