<?
	define('ROOT', dirname(__FILE__) . DIRECTORY_SEPARATOR);
	define('APK', ROOT . 'com.blizzard.wtcg.hearthstone' . DIRECTORY_SEPARATOR);
	define('APK_DIST', APK . 'dist' . DIRECTORY_SEPARATOR);
	define('SMALI', APK . 'smali' . DIRECTORY_SEPARATOR);
	define('RELEASES', ROOT . 'releases' . DIRECTORY_SEPARATOR);

	foreach (explode("\n", file_get_contents(APK . 'apktool.yml')) as $line)
	{
		if (preg_match('/^versionCode: \'(.*)\'$/', trim($line), $matches) != 0)
		{
			$version_code = $matches[1];
			continue;
		}

		if (preg_match('/^versionName: (.*)$/', trim($line), $matches) != 0)
		{
			$version_name = $matches[1];
			continue;
		}

		if (preg_match('/^apkFileName: (.*)$/', trim($line), $matches) != 0)
		{
			$apk_name = $matches[1];
			continue;
		}
	}

	foreach (explode("\r\n", file_get_contents(SMALI . 'ru' . DIRECTORY_SEPARATOR . 'killer666' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'UpdateChecker.smali')) as $line)
	{
		if (preg_match('/^.field static currentBuild:I = 0x(.*)$/', trim($line), $matches) != 0)
		{
			$build = (int)hexdec($matches[1]);
			break;
		}
	}

	$target_path = RELEASES . 'Hearthstone-' . $version_name . '-' . $version_code . '-build-' . $build . '.apk';
	echo 'Current version: ' . $version_name . ' (' . $version_code . '), build ' . $build . PHP_EOL . 'Target name: ' . basename($target_path) . PHP_EOL;
	rename(APK_DIST . $apk_name . '-signed', $target_path);

	if (defined('IS_INCLUDED')) {
		copy($target_path, RELEASES . 'release.apk');
	}