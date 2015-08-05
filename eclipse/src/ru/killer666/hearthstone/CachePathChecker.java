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
import java.util.LinkedList;

import static ru.killer666.hearthstone.Wrapper.TAG;

public class CachePathChecker extends WaitableTask
{
	public static File								cachePath		= null;
	public static DialogInterface.OnClickListener	setPathClick	= new DialogInterface.OnClickListener()
																	{
																		public void onClick(DialogInterface dialog,
																				int item)
																		{
																			SharedPreferences.Editor edit = Wrapper
																					.getPreferences(prefsFile).edit();

																			edit.remove("cache_path");
																			edit.commit();

																			restartRequired = true;

																			if (instance != null)
																				instance.doTask();
																		}
																	};
	static boolean									restartRequired	= false;
	static CachePathChecker							instance		= null;
	static final String								prefsFile		= "cache_settings";

	public CachePathChecker()
	{
		instance = this;
	}

	@Override
	public boolean doTask()
	{
		final String preferencesPath = Wrapper.getPreferences(prefsFile).getString("cache_path", null);

		if (preferencesPath != null)
		{
			cachePath = new File(preferencesPath);
			return false;
		}

		UnityPlayer.currentActivity.runOnUiThread(new Runnable()
		{
			public void run()
			{
				LinkedList<CharSequence> items = new LinkedList<CharSequence>();

				items.add("SD-карта (KitKat/Lollipop) (" + Environment.getExternalStorageDirectory() + "...)");
				items.add("SD-карта 0 (/storage/sdcard0/...)");
				items.add("SD-карта 1 (/storage/sdcard1/...)");
				items.add("Внешнее устройство (/mnt/usbotg/...)");
				items.add("Другой путь (указать вручную)");

				AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);

				builder.setTitle("Укажите путь для хранения ящиков:");
				builder.setCancelable(false);
				builder.setSingleChoiceItems(items.toArray(new CharSequence[items.size()]), -1,
						new DialogInterface.OnClickListener()
						{
							public void onClick(DialogInterface dialog, int item)
							{
								String targetPath = null;

								switch (item)
								{
									case 0:
										targetPath = "" + Environment.getExternalStorageDirectory();
										break;
									case 1:
										targetPath = "/storage/sdcard0";
										break;
									case 2:
										targetPath = "/storage/sdcard1";
										break;
									case 3:
										targetPath = "/mnt/usbotg";
										break;
									default:
										break;
								}

								dialog.dismiss();

								if (targetPath == null)
								{
									AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);
									builder.setTitle("Укажите путь для хранения ящиков:");
									builder.setCancelable(false);

									final EditText input = new EditText(UnityPlayer.currentActivity);
									input.setInputType(InputType.TYPE_CLASS_TEXT);
									input.setText(preferencesPath == null ? Environment.getExternalStorageDirectory()
											+ "/Android/data/com.blizzard.wtcg.hearthstone/files" : preferencesPath);

									builder.setView(input);
									builder.setPositiveButton("Принять", new DialogInterface.OnClickListener()
									{
										public void onClick(DialogInterface dialog, int item)
										{
											setCachePath(input.getText().toString());
										}
									});

									builder.create().show();
								}
								else setCachePath(targetPath + "/Android/data/com.blizzard.wtcg.hearthstone/files");
							}
						});

				builder.create().show();
			}
		});

		return true;
	}

	private void setCachePath(String path)
	{
		Log.i(TAG, "Attempt to set cache path to " + path);

		try
		{
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

			if (restartRequired)
			{
				HearthstoneAlert.showAlert("", "Требуется перезапуск", "ОК", new DialogInterface.OnClickListener()
				{
					public void onClick(DialogInterface dialog, int item)
					{
						System.exit(0);
					}
				}, "", null, false);
			}
		}
		catch (Exception e)
		{
			Log.i(TAG,
					"Failed to set cache path to " + path + ": " + e.getClass().getCanonicalName() + " ("
							+ e.getMessage() + ")");

			HearthstoneAlert.showAlert("", "Вы выбрали путь: " + path
					+ "\nПри попытке создать там файл мы получили ошибку: " + e.getClass().getCanonicalName() + " ("
					+ e.getMessage() + ")\n\nУкажите другой путь!", "ОК", new DialogInterface.OnClickListener()
			{
				public void onClick(DialogInterface dialog, int item)
				{
					dialog.dismiss();
					instance.doTask();
				}
			}, "", null, false);
		}
	}
}
