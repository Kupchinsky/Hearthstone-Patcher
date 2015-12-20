package ru.killer666.hearthstone;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.util.Log;
import com.unity3d.player.UnityPlayer;

class InterfaceSelector extends WaitableTask {
    public static final SelectedInterface selectedIface = new SelectedInterface();
    private static final String prefsFile = "iface_settings";

    private void setInterface(int newInterface) {
        selectedIface.isTablet = newInterface == 0;
    }

    // UI Thread
    private void askToNotAsk() {
        AlertDialog.Builder dlgAlert = new AlertDialog.Builder(UnityPlayer.currentActivity);

        dlgAlert.setMessage("Применить интерфейс для " + (selectedIface.isTablet ? "планшетов" : "телефонов")
                + " и больше не спрашивать?");
        dlgAlert.setTitle("Hearthstone");
        dlgAlert.setPositiveButton("Да", new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                SharedPreferences preferences = Wrapper.getPreferences(prefsFile);
                SharedPreferences.Editor edit = preferences.edit();

                edit.putBoolean("notaskagain", true);
                edit.commit();

                endTask();
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

    @Override
    boolean doTask() {
        Log.i(Wrapper.TAG, "Okay, let's start");

        final SharedPreferences preferences = Wrapper.getPreferences(prefsFile);

        // Не спрашивать снова
        boolean prefNotAskAgain = preferences.getBoolean("notaskagain", false);

        // Выбранный интерфейс
        int prefIface = preferences.getInt("selected", -1);

        if (prefNotAskAgain && prefIface != -1 && prefIface != 2) {
            Log.i(Wrapper.TAG, "Force use " + prefIface + " interface.");
            setInterface(prefIface);
            return false;
        }

        Log.i(Wrapper.TAG, "Showing dialog...");

        UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
            public void run() {
                final CharSequence[] items = {"Для планшетов", "Для телефонов (более крупный текст)"};

                AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);

                builder.setTitle("Выберите интерфейс:");
                builder.setCancelable(false);
                builder.setSingleChoiceItems(items, -1, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int item) {
                        dialog.dismiss();

                        SharedPreferences.Editor edit = preferences.edit();

                        edit.putInt("selected", item);
                        edit.commit();

                        setInterface(item);
                        askToNotAsk();
                    }
                });
                builder.create().show();
            }
        });

        return true;
    }

    static class SelectedInterface {
        public boolean isTablet;
    }
}
