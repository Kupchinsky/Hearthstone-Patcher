package ru.killer666.hearthstone;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.blizzard.wtcg.hearthstone.HearthstoneAlert;
import com.sun.deploy.util.StringUtils;
import com.unity3d.player.UnityPlayer;

import java.util.ArrayList;
import java.util.List;

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
        String key = "infoshown_" + versionCode + "_" + UpdateChecker.jenkinsBuild;

        if (!preferences.getBoolean(key, false)) {
            String firstPart = "Изменения в сборке " + versionCode + " (" + UpdateChecker.jenkinsBuild + "):\n\n";
            List<String> secondParts = new ArrayList<>();

            switch (versionCode) {
                case 1083307: {
                    break;
                }
            }

            if (secondParts.size() != 0) {
                HearthstoneAlert
                        .showAlert(
                                "",
                                firstPart + StringUtils.join(secondParts, "\n"),
                                "ОК", new DialogInterface.OnClickListener() {
                                    public void onClick(DialogInterface dialog, int item) {
                                        dialog.dismiss();
                                        VersionChangesHistory.this.endTask();
                                    }
                                }, "", null, false);
            }

            SharedPreferences.Editor edit = preferences.edit();

            edit.putBoolean(key, true);
            edit.commit();

            return true;
        }

        return false;
    }
}
