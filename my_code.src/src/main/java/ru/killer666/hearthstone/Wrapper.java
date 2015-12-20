package ru.killer666.hearthstone;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.unity3d.player.UnityPlayer;

import java.util.ArrayList;
import java.util.List;

public class Wrapper {
    static final String TAG = "HearthstoneWrapper";
    private static final List<WaitableTask> tasks = new ArrayList<WaitableTask>();
    public static boolean isXposed = false;
    public static boolean isHasAssembly = true;

    static SharedPreferences getPreferences(String name) {
        return UnityPlayer.currentActivity.getSharedPreferences(name, Context.MODE_PRIVATE);
    }

    static void runTasks() {
        for (WaitableTask task : tasks) {
            Log.i(TAG, "Running task " + task.getClass().getSimpleName() + "...");

            boolean isRequiredToWait = task.doTask();

            if (!isRequiredToWait) {
                Log.i(TAG, "Skipped.");
                continue;
            }

            while (!task.getEnded()) {
                try {
                    synchronized (task.getWaitObject()) {
                        task.getWaitObject().wait();
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }

            Log.i(TAG, "Task completed.");
        }

        tasks.clear();
    }

    public static void LoadingScreen_DownloadObbFromGoogle_run() {
        tasks.add(isHasAssembly ? new InterfaceSelector() : new InterfaceNotAvailable());
        tasks.add(new CachePathChecker());
        tasks.add(new UpdateChecker());

        runTasks();
    }
}
