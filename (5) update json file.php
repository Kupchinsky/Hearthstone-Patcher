<?
	define('ROOT', dirname(__FILE__) . DIRECTORY_SEPARATOR);
	define('APK', ROOT . 'com.blizzard.wtcg.hearthstone' . DIRECTORY_SEPARATOR);
	define('SMALI', APK . 'smali' . DIRECTORY_SEPARATOR);
	define('JSON_FILE', ROOT . 'version.json');

	foreach (explode("\n", file_get_contents(APK . 'apktool.yml')) as $line)
	{
		if (preg_match('/^versionCode: \'(.*)\'$/', trim($line), $matches) != 0)
		{
			$version_code = (int)$matches[1];
			continue;
		}

		if (preg_match('/^versionName: (.*)$/', trim($line), $matches) != 0)
		{
			$version_name = $matches[1];
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

	if (file_exists(JSON_FILE))
	{
		$data = json_decode(file_get_contents(JSON_FILE), true);
		echo 'Previous version: ' . $data['name'] . ' (' . $data['code'] . '), build ' . $data['build'] . PHP_EOL;
	}

	echo 'Current version: ' . $version_name . ' (' . $version_code . '), build ' . $build . PHP_EOL . 'Enter url: ';
	$url = trim(fgets(STDIN));

	file_put_contents(JSON_FILE, json_encode(array
	(
		'code' => $version_code,
		'name' => $version_name,
		'build' => $build,
		'url' => $url
	)));