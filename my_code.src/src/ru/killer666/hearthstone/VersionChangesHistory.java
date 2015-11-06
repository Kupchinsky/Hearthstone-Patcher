package ru.killer666.hearthstone;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.blizzard.wtcg.hearthstone.HearthstoneAlert;
import com.unity3d.player.UnityPlayer;

public class VersionChangesHistory extends WaitableTask {
    private static final String prefsFile = "history_settings";

    boolean doTask() {
        final Activity activity = UnityPlayer.currentActivity;
        int versionCode;

        try {
            versionCode = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return true;
        }

        SharedPreferences preferences = Wrapper.getPreferences(prefsFile);
        String key = "infoshown_" + versionCode + "_" + UpdateChecker.currentBuild;

        if (!preferences.getBoolean(key, false)) {
            switch (versionCode) {
                case 1060407: {
                    HearthstoneAlert
                            .showAlert(
                                    "",
                                    "Изменения в сборке " + versionCode + " (" + UpdateChecker.currentBuild + "):\n\n- Возможно исправлена проверка Failure to initialize! Your hardware does not support this application, sorry! (просьба отписаться в топике 4pda.ru, если у вас она была и исчезла)",
                                    "ОК", new DialogInterface.OnClickListener() {
                                        public void onClick(DialogInterface dialog, int item) {
                                            dialog.dismiss();
                                            endTask();
                                        }
                                    }, "", null, false);
                    break;
                }
            }

            SharedPreferences.Editor edit = preferences.edit();

            edit.putBoolean(key, true);
            edit.commit();

            return true;
        }

        return false;
    }
}
