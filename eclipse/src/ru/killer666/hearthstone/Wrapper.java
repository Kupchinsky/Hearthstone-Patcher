package ru.killer666.hearthstone;

import java.util.ArrayList;
import java.util.List;

import com.unity3d.player.UnityPlayer;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

public class Wrapper
{
	static final String						TAG		= "HearthstoneWrapper";
	private static final List<WaitableTask>	tasks	= new ArrayList<WaitableTask>();

	static SharedPreferences getPreferences(String name)
	{
		return UnityPlayer.currentActivity.getSharedPreferences(name, Context.MODE_PRIVATE);
	}

	static void runTasks()
	{
		for (WaitableTask task : tasks)
		{
			Log.i(TAG, "Running task " + task.getClass().getSimpleName() + "...");

			boolean isRequiredToRunning = task.doTask();

			if (!isRequiredToRunning)
			{
				Log.i(TAG, "Skipped.");
				continue;
			}

			while (!task.getEnded())
			{
				try
				{
					synchronized (task.getWaitObject())
					{
						task.getWaitObject().wait();
					}
				}
				catch (InterruptedException e)
				{
					e.printStackTrace();
				}
			}

			Log.i(TAG, "Task completed.");
		}

		tasks.clear();
	}

	public static void LoadingScreen_DownloadObbFromGoogle_run()
	{
		tasks.add(new VersionChangesHistory());
		tasks.add(new InterfaceSelector());
		tasks.add(new CachePathChecker());
		tasks.add(new UpdateChecker());

		runTasks();
	}
}
