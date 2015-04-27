<?
	define('ROOT', dirname(__FILE__) . DIRECTORY_SEPARATOR);
	define('APK', ROOT . 'com.blizzard.wtcg.hearthstone' . DIRECTORY_SEPARATOR);
	define('APK_DIST', APK . 'dist' . DIRECTORY_SEPARATOR);
	define('SMALI', APK . 'smali' . DIRECTORY_SEPARATOR);
	define('DIST', ROOT . 'dist' . DIRECTORY_SEPARATOR);
	define('DIST_LIB', DIST . 'lib' . DIRECTORY_SEPARATOR);
	define('JSON_FILE', ROOT . 'version.json');
	define('UPDATER_FILE', SMALI . 'ru' . DIRECTORY_SEPARATOR . 'killer666' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'UpdateChecker.smali');
	define('UPDATER_FILE2', ROOT . 'my_code' . DIRECTORY_SEPARATOR . 'ru' . DIRECTORY_SEPARATOR . 'killer666' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'UpdateChecker.smali');
	define('MANIFEST_FILE', APK . 'AndroidManifest.xml');

	function my_exec($cmd, $input = '')
	{
		$proc = proc_open($cmd, array( 0 => array('pipe', 'r'), 1 => array('pipe', 'w'), 2 => array('pipe', 'w')), $pipes);

		fwrite($pipes[0], $input);
		fclose($pipes[0]);

		$stdout = stream_get_contents($pipes[1]);
		fclose($pipes[1]);

		$stderr = stream_get_contents($pipes[2]);
		fclose($pipes[2]);

		$rtn = proc_close($proc);

		return array('stdout' => $stdout, 'stderr' => $stderr, 'return' => $rtn);
	}

	foreach (explode("\n", file_get_contents(APK . 'apktool.yml')) as $line)
	{
		if (preg_match('/^versionCode: \'(.*)\'$/', trim($line), $matches) != 0)
		{
			$version_code = (int)$matches[1];
			continue;
		}

		if (preg_match('/^apkFileName: (.*)$/', trim($line), $matches) != 0)
		{
			$apk_name = $matches[1];
			continue;
		}
	}

	foreach (explode("\r\n", file_get_contents(UPDATER_FILE2)) as $line)
	{
		if (preg_match('/^.field private static final currentBuild:I = 0x(.*)$/', trim($line), $matches) != 0)
		{
			$build = (int)hexdec($matches[1]);
			break;
		}
	}

	$old_version_data = json_decode(file_get_contents(JSON_FILE), true);

	if ($old_version_data['code'] == $version_code && $build == $old_version_data['build'])
	{
		echo 'Increment build number? (old: ' . $build . '): ';
		$ask = trim(fgets(STDIN));
		$mode = 0;
	}
	elseif ($version_code > $old_version_data['code'])
	{
		echo 'Version changed (was ' . $old_version_data['code'] . ', new ' . $version_code . ')! Reset build to 1? ';
		$ask = trim(fgets(STDIN));
		$mode = 1;
	}

	if (isset($mode) && ($ask == 'y' || $ask == 'yes'))
	{
		$new_build = ($mode == 0 ? ++$build: 1);
		$updater_file = explode("\r\n", file_get_contents(UPDATER_FILE));
		$updater_file2 = explode("\r\n", file_get_contents(UPDATER_FILE2));

		foreach ($updater_file as &$line)
		{
			if (preg_match('/^.field private static final currentBuild:I = 0x(.*)$/', trim($line), $matches) != 0)
			{
				$line = preg_replace('/^.field private static final currentBuild:I = 0x(.*)$/', '.field private static final currentBuild:I = 0x' . dechex($new_build), $line);
				break;
			}
		}

		foreach ($updater_file2 as &$line)
		{
			if (preg_match('/^.field private static final currentBuild:I = 0x(.*)$/', trim($line), $matches) != 0)
			{
				$line = preg_replace('/^.field private static final currentBuild:I = 0x(.*)$/', '.field private static final currentBuild:I = 0x' . dechex($new_build), $line);
				break;
			}
		}

		file_put_contents(UPDATER_FILE, implode("\r\n", $updater_file));
		file_put_contents(UPDATER_FILE2, implode("\r\n", $updater_file2));
	}

	$manifest_file = explode("\r\n", file_get_contents(MANIFEST_FILE));

	function startsWith($haystack, $needle)
	{
		$length = strlen($needle);
		return (substr($haystack, 0, $length) === $needle);
	}

	foreach ($manifest_file as &$line)
	{
		if (startsWith(trim($line), '<manifest xmlns:android="http://schemas.android.com/apk/res/android"'))
		{
			$line = preg_replace('/^<manifest (.*) package="(.*)" platformBuildVersionCode="(.*)" platformBuildVersionName="(.*)">/', '<manifest ${1} package="com.blizzard.wtcg.hearthstone" platformBuildVersionCode="${3}" platformBuildVersionName="${4}">', $line);
			break;
		}
	}

	file_put_contents(MANIFEST_FILE, implode("\r\n", $manifest_file));

	function patchmethod($filename, $method_prototype, $newbody)
	{
		$data1 = file_get_contents($filename);
		$pos1 = strpos($data1, $method_prototype) + strlen($method_prototype);
		$pos2 = strpos($data1, '.end method', $pos1) - 1;

		$data1_first = substr($data1, 0, $pos1);
		$data1_second = substr($data1, $pos2);

		file_put_contents($filename, $data1_first . PHP_EOL . $newbody . PHP_EOL . $data1_second);
	}

	patchmethod(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen.smali',
		'.method public static getFilesDir()Ljava/io/File;',
		'    .registers 1

    .prologue
    .line 999
    sget-object v0, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    return-object v0');

	patchmethod(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen.smali',
		'.method public getObbPath(Ljava/lang/String;)Ljava/lang/String;',
		'    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 591
    const-string v1, "main"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 592
    .local v0, "main":Z
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_packageInfo:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2, v0, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1');

	my_exec('rm -rf ' . escapeshellarg(APK_DIST . '*'));

	echo 'Packing APK (build ' . $build . ')...' . PHP_EOL;
	$result = my_exec('java -jar ' . escapeshellarg(DIST . 'apktool.jar') . ' b ' . escapeshellarg(APK . '.'));
	if ($result['return'] != 0)
	{
		print_r($result);
		die;
	}

	echo 'Signing APK...' . PHP_EOL;
	$result = my_exec('java -Xmx512m -jar ' . escapeshellarg(DIST_LIB . 'signapk.jar') . ' -w ' . escapeshellarg(DIST_LIB . 'testkey.x509.pem') . ' ' . escapeshellarg(DIST_LIB . 'testkey.pk8') . ' ' . escapeshellarg(APK_DIST . $apk_name) . ' ' . escapeshellarg(APK_DIST . $apk_name));
	if ($result['return'] != 0)
	{
		print_r($result);
		die;
	}

	chdir(APK_DIST);
	$result = my_exec('..' . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'dist' . DIRECTORY_SEPARATOR . 'lib' . DIRECTORY_SEPARATOR . 'zipalign -f 4 ' . escapeshellarg($apk_name) . ' ' . escapeshellarg($apk_name . '-signed'));
	if ($result['return'] != 0)
	{
		print_r($result);
		die;
	}