<?
	define('ROOT', dirname(__FILE__) . DIRECTORY_SEPARATOR);
	define('BIN', ROOT . 'target' . DIRECTORY_SEPARATOR . 'classes' . DIRECTORY_SEPARATOR);
	define('TMP', ROOT . 'tmp' . DIRECTORY_SEPARATOR);
	define('PATCHERROOT', realpath(ROOT . '..' . DIRECTORY_SEPARATOR) . DIRECTORY_SEPARATOR);
	define('DIST', PATCHERROOT . 'dist' . DIRECTORY_SEPARATOR);

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

	$rii = new RecursiveIteratorIterator(new RecursiveDirectoryIterator(BIN));
	$classes = array();

	foreach ($rii as $file)
	{
		if ($file->isDir())
			continue;

		$filepath = $file->getPathname();

		if (pathinfo($filepath, PATHINFO_EXTENSION) == 'class')
			$classes[] = $filepath;
	}

	if (!is_dir(TMP)) {
		mkdir(TMP);
	} else {
		my_exec('rm -rf ' . escapeshellarg(TMP . '*'));
	}

	$result = my_exec('java -cp ' . escapeshellarg(DIST . 'dx.jar;' . DIST . 'gson-2.3.1.jar;' . DIST . '.') . ' dxrunjson ' . escapeshellarg(TMP . 'classes.dex'), json_encode($classes));

	if ($result['return'] != 0)
	{
		print_r($result);
		die;
	}

	$result = my_exec('java -jar ' . escapeshellarg(DIST . 'baksmali-2.0.5.jar') . ' ' . escapeshellarg(TMP . 'classes.dex') . ' -o ' . escapeshellarg(TMP . '.'));

	if ($result['return'] != 0)
	{
		print_r($result);
		die;
	}

	my_exec('rm -rf ' . escapeshellarg(TMP . 'classes.dex'));
	my_exec('cp -r ' . escapeshellarg(TMP . '*') . ' ' . escapeshellarg(PATCHERROOT . 'my_code'));