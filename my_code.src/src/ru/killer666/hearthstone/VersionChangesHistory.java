package ru.killer666.hearthstone;

import com.blizzard.wtcg.hearthstone.HearthstoneAlert;
import com.unity3d.player.UnityPlayer;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;

public class VersionChangesHistory extends WaitableTask
{
	private static final String	prefsFile	= "history_settings";

	boolean doTask()
	{
		final Activity activity = UnityPlayer.currentActivity;
		int versionCode = 0;

		try
		{
			versionCode = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionCode;
		}
		catch (PackageManager.NameNotFoundException e)
		{
			e.printStackTrace();
			return true;
		}

		SharedPreferences preferences = Wrapper.getPreferences(prefsFile);
		String key = "infoshown_" + versionCode + "_" + UpdateChecker.currentBuild;

		if (!preferences.getBoolean(key, false))
		{
			HearthstoneAlert
					.showAlert(
							"",
							"Изменения в версии " + versionCode + " (" + UpdateChecker.currentBuild + "):\n\n- Добавил вывод сообщения об ошибке при выборе неверного пути до хранения ящиков.",
							"ОК", new DialogInterface.OnClickListener()
							{
								public void onClick(DialogInterface dialog, int item)
								{
									dialog.dismiss();
									endTask();
								}
							}, "", null, false);

			SharedPreferences.Editor edit = preferences.edit();

			edit.putBoolean(key, true);
			edit.commit();

			return true;
		}

		return false;
	}
}
