package ru.killer666.hearthstone;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Environment;
import android.text.InputType;
import android.widget.EditText;

import com.blizzard.wtcg.hearthstone.HearthstoneAlert;
import com.unity3d.player.UnityPlayer;

import java.io.File;
import java.util.LinkedList;

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

				if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.KITKAT)
					items.add("SD-����� (KitKat/Lollipop) (/storage/emulated/...)");
				else
				{
					items.add("SD-����� 0 (/storage/sdcard0/...)");
					items.add("SD-����� 1 (/storage/sdcard1/...)");
					items.add("������� ���������� (/mnt/usbotg/...)");
				}

				items.add("������ ���� (������� �������)");

				AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);

				builder.setTitle("������� ���� ��� �������� ������:");
				builder.setCancelable(false);
				builder.setSingleChoiceItems(items.toArray(new CharSequence[items.size()]), -1,
						new DialogInterface.OnClickListener()
						{
							public void onClick(DialogInterface dialog, int item)
							{
								String targetPath = null;

								if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.KITKAT)
								{
									switch (item)
									{
										case 0:
											targetPath = Environment.getExternalStorageDirectory().toString();
											break;
										case 1:
											break;
									}
								}
								else
								{
									switch (item)
									{
										case 0:
											targetPath = "/storage/sdcard0";
											break;
										case 1:
											targetPath = "/storage/sdcard1";
											break;
										case 2:
											targetPath = "/mnt/usbotg";
											break;
										case 3:
											break;
									}
								}

								dialog.dismiss();

								if (targetPath == null)
								{
									AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);
									builder.setTitle("������� ���� ��� �������� ������:");
									builder.setCancelable(false);

									final EditText input = new EditText(UnityPlayer.currentActivity);
									input.setInputType(InputType.TYPE_CLASS_TEXT);
									input.setText(preferencesPath == null ? Environment.getExternalStorageDirectory()
											+ "/Android/data/com.blizzard.wtcg.hearthstone/files" : preferencesPath);

									builder.setView(input);
									builder.setPositiveButton("�������", new DialogInterface.OnClickListener()
									{
										public void onClick(DialogInterface dialog, int item)
										{
											setCachePath(input.getText().toString());
											endTask();
										}
									});

									builder.create().show();
								}
								else
								{
									setCachePath(targetPath + "/Android/data/com.blizzard.wtcg.hearthstone/files");
									endTask();
								}
							}
						});

				builder.create().show();
			}
		});

		return true;
	}

	private void setCachePath(String path)
	{
		cachePath = new File(path);

		SharedPreferences.Editor edit = Wrapper.getPreferences(prefsFile).edit();

		edit.putString("cache_path", path);
		edit.commit();

		if (restartRequired)
		{
			HearthstoneAlert.showAlert("", "��������� ����������", "��", new DialogInterface.OnClickListener()
			{
				public void onClick(DialogInterface dialog, int item)
				{
					System.exit(0);
				}
			}, "", null, false);
		}
	}
}
