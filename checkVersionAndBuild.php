<?
	define('ROOT', dirname(__FILE__) . DIRECTORY_SEPARATOR);
	define('DIST', ROOT . 'dist' . DIRECTORY_SEPARATOR);
	define('JSON_FILE', ROOT . 'version.json');
	define('APK', ROOT . 'com.blizzard.wtcg.hearthstone' . DIRECTORY_SEPARATOR);
	define('MY_ASSEMBLIES', ROOT . 'my_assemblies' . DIRECTORY_SEPARATOR);
	define('RELEASES', ROOT . 'releases' . DIRECTORY_SEPARATOR);
	define('IS_INCLUDED', true);
	define('APK_STORAGE', ROOT . 'original-apks' . DIRECTORY_SEPARATOR);

	function print_result($result) {
		echo $result['stdout'] . PHP_EOL;
		echo $result['stderr'] . PHP_EOL;
	}

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

	echo 'Waiting for phantomjs...' . PHP_EOL;
	$result = my_exec('"' . escapeshellarg(DIST . 'phantomjs.exe') . ' ' . escapeshellarg(ROOT . 'checkVersion.js') . ' https://m.apkpure.com/store/apps/details?id=com.blizzard.wtcg.hearthstone"');

	print_result($result);

	if ($result['return'] != 0) {
		die;
	}

	$is_build = true;
	$data_remote = json_decode($result['stdout'], true);

	if (file_exists(JSON_FILE))
	{
		$data_local = json_decode(file_get_contents(JSON_FILE), true);
		echo 'Previous version: ' . $data_local['name'] . ' (' . $data_local['code'] . ')' . PHP_EOL;

		if ($data_remote['version'] != $data_local['name'] && (int)$data_remote['build'] > (int)$data_local['code']) {
			echo 'Update found! New version: ' . $data_remote['version'] . ' (' . $data_remote['build'] . ')' . PHP_EOL;
		} else {
			$is_build = false;
		}
	}

	if (!$is_build) {
		die('No build');
	}

	echo 'Building...' . PHP_EOL;

	//
	if (!is_dir(APK_STORAGE)) {
		mkdir(APK_STORAGE);
	} else {
		print_result(my_exec('del /q ' . escapeshellarg(APK_STORAGE . '*')));
	}

	echo '(0) Downloading APK...' . PHP_EOL;
	define('APK_NEW', APK_STORAGE . 'com.blizzard.wtcg.hearthstone_' . $data_remote['version'] . '_' . $data_remote['build'] . '.apk');
	file_put_contents(APK_NEW, fopen($data_remote['link'], 'r'));
	//

	//
	echo '(1) Extracting APK...' . PHP_EOL;

	if (is_dir(APK)) {
		print_result(my_exec('rmdir /q /s ' . escapeshellarg(APK)));
	}

	$result = my_exec('"' . escapeshellarg(ROOT . '(1) extract apk.bat') . ' ' . escapeshellarg(APK_NEW) . '"');
	print_result($result);
	//

	//
	echo '(2.0) Patching assembly...' . PHP_EOL;

	if (is_dir(MY_ASSEMBLIES)) {
		print_result(my_exec('del /q ' . escapeshellarg(MY_ASSEMBLIES . '*')));
	}

	require_once ROOT . '(2.0) patch assembly.php';
	//

	//
	echo '(2.1) Patching code...' . PHP_EOL;
	require_once ROOT . '(2.1) patch.php';
	//

	//
	echo '(3.1) Making release APK...' . PHP_EOL;

	if (is_dir(RELEASES)) {
		print_result(my_exec('del /q ' . escapeshellarg(RELEASES . '*')));
	}

	require_once ROOT . '(3.1) make release apk.php';
	//