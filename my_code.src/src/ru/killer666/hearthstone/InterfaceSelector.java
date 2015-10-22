package ru.killer666.hearthstone;

import com.unity3d.player.UnityPlayer;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.util.Log;

class InterfaceSelector extends WaitableTask
{
	private static final String				prefsFile		= "iface_settings";
	public static final SelectedInterface	selectedIface	= new SelectedInterface();

	private void setInterface(int newInterface)
	{
		selectedIface.isTablet = newInterface == 0;
	}

	// UI Thread
	private void askToNotAsk()
	{
		AlertDialog.Builder dlgAlert = new AlertDialog.Builder(UnityPlayer.currentActivity);

		dlgAlert.setMessage("��������� ��������� ��� " + (selectedIface.isTablet ? "���������" : "���������")
				+ " � ������ �� ����������?");
		dlgAlert.setTitle("Hearthstone");
		dlgAlert.setPositiveButton("��", new DialogInterface.OnClickListener()
		{
			public void onClick(DialogInterface dialog, int which)
			{
				SharedPreferences preferences = Wrapper.getPreferences(prefsFile);
				SharedPreferences.Editor edit = preferences.edit();

				edit.putBoolean("notaskagain", true);
				edit.commit();

				endTask();
			}
		});
		dlgAlert.setNegativeButton("���", new DialogInterface.OnClickListener()
		{
			public void onClick(DialogInterface dialog, int which)
			{
				endTask();
			}
		});

		dlgAlert.setCancelable(false);
		dlgAlert.create().show();
	}

	@Override
	boolean doTask()
	{
		Log.i(Wrapper.TAG, "Okay, let's start");

		final SharedPreferences preferences = Wrapper.getPreferences(prefsFile);

		// �� ���������� �����
		boolean prefNotAskAgain = preferences.getBoolean("notaskagain", false);

		// ��������� ���������
		int prefIface = preferences.getInt("selected", -1);

		if (prefNotAskAgain && prefIface != -1 && prefIface != 2)
		{
			Log.i(Wrapper.TAG, "Force use " + prefIface + " interface.");
			setInterface(prefIface);
			return false;
		}

		Log.i(Wrapper.TAG, "Showing dialog...");

		UnityPlayer.currentActivity.runOnUiThread(new Runnable()
		{
			public void run()
			{
				final CharSequence[] items = { "��� ���������", "��� ��������� (����� ������� �����)" };

				AlertDialog.Builder builder = new AlertDialog.Builder(UnityPlayer.currentActivity);

				builder.setTitle("�������� ���������:");
				builder.setCancelable(false);
				builder.setSingleChoiceItems(items, -1, new DialogInterface.OnClickListener()
				{
					public void onClick(DialogInterface dialog, int item)
					{
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

	static class SelectedInterface
	{
		public boolean	isTablet;
	}
}
