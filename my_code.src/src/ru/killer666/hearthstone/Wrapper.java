package ru.killer666.hearthstone;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.blizzard.wtcg.hearthstone.LoadingScreen;
import com.unity3d.player.UnityPlayer;

import java.util.ArrayList;
import java.util.List;

public class Wrapper {
    static final String TAG = "HearthstoneWrapper";
    static LoadingScreen loadingScreen;
    private static final List<WaitableTask> tasks = new ArrayList<WaitableTask>();

    static SharedPreferences getPreferences(String name) {
        return UnityPlayer.currentActivity.getSharedPreferences(name, Context.MODE_PRIVATE);
    }

    static void runTasks() {
        for (WaitableTask task : tasks) {
            Log.i(TAG, "Running task " + task.getClass().getSimpleName() + "...");

            boolean isRequiredToRunning = task.doTask();

            if (!isRequiredToRunning) {
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

    @SuppressWarnings("unused")
    public static void LoadingScreen_DownloadObbFromGoogle_run(LoadingScreen loadingScreen) {


        Wrapper.loadingScreen = loadingScreen;

        tasks.add(new VersionChangesHistory());
        tasks.add(new InterfaceSelector());
        tasks.add(new CachePathChecker());
        tasks.add(new UpdateChecker());
        tasks.add(new DownloadSelector());

        runTasks();
    }
}
