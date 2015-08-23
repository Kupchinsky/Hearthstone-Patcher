<?
	define('ROOT', dirname(__FILE__) . DIRECTORY_SEPARATOR);
	define('APK', ROOT . 'com.blizzard.wtcg.hearthstone' . DIRECTORY_SEPARATOR);
	define('APK_DIST', APK . 'dist' . DIRECTORY_SEPARATOR);
	define('SMALI', APK . 'smali' . DIRECTORY_SEPARATOR);
	define('DIST', ROOT . 'dist' . DIRECTORY_SEPARATOR);
	define('DIST_LIB', DIST . 'lib' . DIRECTORY_SEPARATOR);
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
			$version_code = $matches[1];
			continue;
		}

		if (preg_match('/^apkFileName: (.*)$/', trim($line), $matches) != 0)
		{
			$apk_name = $matches[1];
			continue;
		}
	}

	$manifest_file = explode("\r\n", file_get_contents(MANIFEST_FILE));

	function startsWith($haystack, $needle)
	{
		$length = strlen($needle);
		return (substr($haystack, 0, $length) === $needle);
	}

	foreach ($manifest_file as &$line)
	{
		if (startsWith(trim($line), '<manifest xmlns:amazon="http://schemas.amazon.com/apk/res/android" xmlns:android="http://schemas.android.com/apk/res/android"'))
			$line = preg_replace('/^<manifest (.*) package="(.*)" platformBuildVersionCode="(.*)" platformBuildVersionName="(.*)">/', '<manifest ${1} package="com.blizzard.wtcg.hearthstonex" platformBuildVersionCode="${3}" platformBuildVersionName="${4}">', $line);
		else if (startsWith(trim($line), '<activity android:configChanges="locale|fontScale|keyboard|keyboardHidden|mcc|mnc|navigation|orientation|screenLayout|screenSize|smallestScreenSize|touchscreen|uiMode" android:label="@string/app_name" android:launchMode="singleTask" android:name="com.blizzard.wtcg.hearthstone.HearthstoneNativeActivity"'))
			$line = preg_replace('/^<manifest (.*) package="(.*)" platformBuildVersionCode="(.*)" platformBuildVersionName="(.*)">/', '<manifest ${1} package="com.blizzard.wtcg.hearthstonex" platformBuildVersionCode="${3}" platformBuildVersionName="${4}">', $line);
			break;
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
		'    .registers 3

    .prologue
    .line 17
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/sdcard0/Android/data/com.blizzard.wtcg.hearthstone/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0');

	patchmethod(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen.smali',
		'.method public getObbPath(Ljava/lang/String;)Ljava/lang/String;',
		'    .registers 4
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/storage/sdcard0/Android/obb/com.blizzard.wtcg.hearthstone/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    const-string v1, ".' . $version_code . '.com.blizzard.wtcg.hearthstone.obb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0');

	my_exec('rm -rf ' . escapeshellarg(APK_DIST . '*'));

	echo 'Packing debug APK...' . PHP_EOL;
	$result = my_exec('java -jar ' . escapeshellarg(DIST . 'apktool.jar') . ' b ' . escapeshellarg(APK . '.'));
	if ($result['return'] != 0)
	{
		print_r($result);
		die;
	}

	echo 'Signing debug APK...' . PHP_EOL;
	$result = my_exec('java -Xmx512m -jar ' . escapeshellarg(DIST_LIB . 'signapk.jar') . ' -w ' . escapeshellarg(DIST_LIB . 'testkey.x509.pem') . ' ' . escapeshellarg(DIST_LIB . 'testkey.pk8') . ' ' . escapeshellarg(APK_DIST . $apk_name) . ' ' . escapeshellarg(APK_DIST . $apk_name));
	if ($result['return'] != 0)
	{
		print_r($result);
		die;
	}

	chdir(APK_DIST);
	$result = my_exec('..' . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . 'dist' . DIRECTORY_SEPARATOR . 'lib' . DIRECTORY_SEPARATOR . 'zipalign -f 4 ' . escapeshellarg($apk_name) . ' ' . escapeshellarg($apk_name . '-signed-debug.apk'));
	if ($result['return'] != 0)
	{
		print_r($result);
		die;
	}

	exec('explorer /e,/select,' . escapeshellarg(APK_DIST . $apk_name . '-signed-debug.apk'));