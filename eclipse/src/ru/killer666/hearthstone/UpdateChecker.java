package ru.killer666.hearthstone;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.CoreProtocolPNames;
import org.json.JSONException;
import org.json.JSONObject;

import com.unity3d.player.UnityPlayer;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;

import static ru.killer666.hearthstone.Wrapper.TAG;

public class UpdateChecker extends WaitableTask
{
	private static final String	prefsFile		= "updater_settings";
	private final int			checkInterval	= 3600;
	private final String		versionUrl		= "http://hearthstone-update-server.killer666.ru/version.json";
	private static int			currentBuild	= 1;

	private String convertStreamToString(InputStream is)
	{
		BufferedReader reader = new BufferedReader(new InputStreamReader(is));
		StringBuilder sb = new StringBuilder();

		String line = null;
		try
		{
			while ((line = reader.readLine()) != null)
			{
				sb.append(line + "\n");
			}
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				is.close();
			}
			catch (IOException e)
			{
				e.printStackTrace();
			}
		}

		return sb.toString();
	}

	boolean doTask()
	{
		Log.i(TAG, "Updater is running...");

		final SharedPreferences preferences = Wrapper.getPreferences(prefsFile);

		long lastChecked = preferences.getLong("lastcheck", 0);

		if (lastChecked + checkInterval > System.currentTimeMillis() / 1000)
		{
			Log.i(TAG, "Check skipped.");
			return false;
		}

		final Activity activity = UnityPlayer.currentActivity;
		int versionCode = 0;

		try
		{
			versionCode = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionCode;
		}
		catch (PackageManager.NameNotFoundException e)
		{
			e.printStackTrace();
			return false;
		}

		// Downloading version file
		HttpClient httpclient = new DefaultHttpClient();
		httpclient.getParams().setParameter(CoreProtocolPNames.USER_AGENT,
				"Hearthstone Android/" + versionCode + "." + currentBuild);

		HttpGet httpget = new HttpGet(versionUrl);
		JSONObject remoteData = null;

		try
		{
			HttpResponse response = httpclient.execute(httpget);

			InputStream instream = response.getEntity().getContent();
			remoteData = new JSONObject(convertStreamToString(instream));
			instream.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}

		int remoteVersionCode = 0;
		int remoteVersionBuild = 0;
		String remoteVersionName = null;

		try
		{
			remoteVersionCode = remoteData.getInt("code");
			remoteVersionBuild = remoteData.getInt("build");
			remoteVersionName = remoteData.getString("name");
		}
		catch (JSONException e)
		{
			e.printStackTrace();
			return false;
		}

		if (versionCode != 0
				&& (remoteVersionCode > versionCode || (remoteVersionCode == versionCode && remoteVersionBuild > currentBuild)))
		{
			// Downloading
			Log.i(TAG, "Found update! (Current: " + versionCode + ", " + currentBuild + "; New: " + remoteVersionCode
					+ ", " + remoteVersionBuild + ")");

			final CustomInfo customInfo = new CustomInfo(remoteVersionCode, remoteVersionBuild, remoteVersionName,
					remoteData);

			activity.runOnUiThread(new Runnable()
			{
				public void run()
				{
					AlertDialog.Builder dlgAlert = new AlertDialog.Builder(activity);

					dlgAlert.setMessage("Найдена новая версия " + customInfo.getRemoteVersionName() + " ("
							+ customInfo.getRemoteVersionCode() + ", сборка " + customInfo.getRemoteVersionBuild()
							+ ")! Обновить?");
					dlgAlert.setTitle("Hearthstone");
					dlgAlert.setPositiveButton("Да", new DialogInterface.OnClickListener()
					{
						public void onClick(DialogInterface dialog, int which)
						{
							String url;
							try
							{
								url = customInfo.getRemoteData().getString("url");
							}
							catch (JSONException e)
							{
								e.printStackTrace();
								endTask();
								return;
							}

							Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).mkdirs();

							DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));

							request.setAllowedNetworkTypes(
									DownloadManager.Request.NETWORK_WIFI | DownloadManager.Request.NETWORK_MOBILE)
									.setAllowedOverRoaming(false)
									.setDescription(
											"Обновление до версии " + customInfo.getRemoteVersionName() + ", "
													+ customInfo.getRemoteVersionCode() + ", сборка "
													+ customInfo.getRemoteVersionBuild());
							request.setTitle("Hearthstone Mod Updater");
							request.allowScanningByMediaScanner();
							request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);

							final String targetFilename = "Hearthstone-" + customInfo.getRemoteVersionName() + "-"
									+ customInfo.getRemoteVersionCode() + "-build-"
									+ customInfo.getRemoteVersionBuild() + ".apk";
							request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, targetFilename);

							DownloadManager manager = (DownloadManager) activity
									.getSystemService(Context.DOWNLOAD_SERVICE);
							manager.enqueue(request);

							BroadcastReceiver receiver = new BroadcastReceiver()
							{
								public void onReceive(Context ctxt, Intent intent)
								{
									File file = new File(Environment
											.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS),
											targetFilename);
									file.setReadable(true, false);

									Intent newIntent = new Intent(Intent.ACTION_VIEW);
									newIntent.setDataAndType(Uri.fromFile(file),
											"application/vnd.android.package-archive");
									activity.startActivity(newIntent);

									System.exit(0);
								}
							};

							activity.registerReceiver(receiver, new IntentFilter(
									DownloadManager.ACTION_DOWNLOAD_COMPLETE));
							activity.registerReceiver(receiver, new IntentFilter(
									DownloadManager.ACTION_NOTIFICATION_CLICKED));

							AlertDialog.Builder dlgAlert = new AlertDialog.Builder(activity);
							dlgAlert.setMessage("Ожидайте загрузки нового APK...");
							dlgAlert.setTitle("Hearthstone");

							dlgAlert.setCancelable(false);
							dlgAlert.create().show();
						}
					});
					dlgAlert.setNegativeButton("Нет", new DialogInterface.OnClickListener()
					{
						public void onClick(DialogInterface dialog, int which)
						{
							endTask();
						}
					});

					dlgAlert.setCancelable(false);
					dlgAlert.create().show();
				}
			});

			return true;
		}
		else
		{
			Log.i(TAG, "Version is actually! (Current: " + versionCode + ", Remote: " + remoteVersionCode + ", Build: "
					+ remoteVersionBuild + ")");

			SharedPreferences.Editor edit = preferences.edit();
			edit.putLong("lastcheck", System.currentTimeMillis() / 1000);
			edit.commit();
		}

		return false;
	}

	static class CustomInfo
	{
		private int			remoteVersionCode;
		private int			remoteVersionBuild;
		private String		remoteVersionName;
		private JSONObject	remoteData;

		CustomInfo(int remoteVersionCode, int remoteVersionBuild, String remoteVersionName, JSONObject remoteData)
		{
			this.remoteVersionCode = remoteVersionCode;
			this.remoteVersionBuild = remoteVersionBuild;
			this.remoteVersionName = remoteVersionName;
			this.remoteData = remoteData;
		}

		int getRemoteVersionCode()
		{
			return remoteVersionCode;
		}

		int getRemoteVersionBuild()
		{
			return remoteVersionBuild;
		}

		String getRemoteVersionName()
		{
			return remoteVersionName;
		}

		JSONObject getRemoteData()
		{
			return remoteData;
		}
	}
}
