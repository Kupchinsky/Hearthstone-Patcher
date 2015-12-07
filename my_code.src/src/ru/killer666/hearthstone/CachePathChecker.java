package ru.killer666.hearthstone;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Environment;
import android.text.InputType;
import android.util.Log;
import android.widget.EditText;
import com.blizzard.wtcg.hearthstone.HearthstoneAlert;
import com.unity3d.player.UnityPlayer;

import java.io.File;
import java.util.LinkedHashMap;

import static ru.killer666.hearthstone.Wrapper.TAG;

public class CachePathChecker extends WaitableTask {
    static final String prefsFile = "cache_settings";
    public static File cachePath = null;
    static boolean restartRequired = false;
    static CachePathChecker instance = null;
    public static DialogInterface.OnClickListener setPathClick = new DialogInterface.OnClickListener() {
        public void onClick(DialogInterface dialog,
                            int item) {
            SharedPreferences.Editor edit = Wrapper
                    .getPreferences(prefsFile).edit();

            edit.remove("cache_path");
            edit.commit();

            restartRequired = true;

            if (instance != null)
                instance.doTask();
        }
    };

    public CachePathChecker() {
        instance = this;
    }

    @Override
    public boolean doTask() {
        final String preferencesPath = Wrapper.getPreferences(prefsFile).getString("cache_path", null);

        if (preferencesPath != null) {
            cachePath = new File(preferencesPath);
            return false;
        }

        UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
            public void run() {
                final LinkedHashMap<CharSequence, String> items = new LinkedHashMap<CharSequence, String>();

                items.put("SD-карта по умолчанию для KitKat/Lollipop+ (" + Environment.getExternalStorageDirectory()
                        + "...)", "" + Environment.getExternalStorageDirectory());

                if (System.getenv("SECONDARY_STORAGE") != null)
                    items.put("SD-карта (Secondary)", System.getenv("SECONDARY_STORAGE"));

                items.put("SD-карта 0 (/storage/sdcard0/...)", "/storage/sdcard0");
                items.put("SD-карта 1 (/storage/sdcard1/...)", "/storage/sdcard1");
                items.put("Другой путь (указать вручную)", null);

                final CharSequence[] items_keys = items.keySet().toArray(new CharSequence[items.size()]);
                AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);

                builder.setTitle("Укажите путь для хранения ящиков:");
                builder.setCancelable(false);
                builder.setSingleChoiceItems(items_keys, -1, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int item) {
                        String targetPath = items.get(items_keys[item]);

                        dialog.dismiss();

                        if (targetPath == null) {
                            AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);
                            builder.setTitle("Укажите путь для хранения ящиков:");
                            builder.setCancelable(false);

                            final EditText input = new EditText(UnityPlayer.currentActivity);
                            input.setInputType(InputType.TYPE_CLASS_TEXT);
                            input.setText(preferencesPath == null ? Environment.getExternalStorageDirectory()
                                    + "/Android/data/com.blizzard.wtcg.hearthstone/files" : preferencesPath);

                            builder.setView(input);
                            builder.setPositiveButton("Принять", new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int item) {
                                    setCachePath(input.getText().toString());
                                }
                            });

                            builder.create().show();
                        } else setCachePath(targetPath + "/Android/data/com.blizzard.wtcg.hearthstone/files");
                    }
                });

                builder.create().show();
            }
        });

        return true;
    }

    private void setCachePath(String path) {
        Log.i(TAG, "Attempt to set cache path to " + path);

        try {
            cachePath = new File(path);
            cachePath.mkdirs();

            File file = new File(cachePath, "emptyfile_" + System.currentTimeMillis());

            file.createNewFile();
            file.delete();

            endTask();

            SharedPreferences.Editor edit = Wrapper.getPreferences(prefsFile).edit();

            edit.putString("cache_path", path);
            edit.commit();

            Log.i(TAG, "Cache path successfully set to " + path);

            if (restartRequired) {
                HearthstoneAlert.showAlert("", "Требуется перезапуск", "ОК", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int item) {
                        System.exit(0);
                    }
                }, "", null, false);
            }
        } catch (Exception e) {
            Log.i(TAG,
                    "Failed to set cache path to " + path + ": " + e.getClass().getCanonicalName() + " ("
                            + e.getMessage() + ")");

            HearthstoneAlert.showAlert("", "Вы выбрали путь: " + path
                    + "\nПри попытке создать там файл мы получили ошибку: " + e.getClass().getCanonicalName() + " ("
                    + e.getMessage() + ")\n\nУкажите другой путь!", "ОК", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int item) {
                    dialog.dismiss();
                    instance.doTask();
                }
            }, "", null, false);
        }
    }
}
