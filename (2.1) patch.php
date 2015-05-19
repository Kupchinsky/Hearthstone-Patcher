<?
	define('ROOT', dirname(__FILE__) . DIRECTORY_SEPARATOR);
	define('APK', ROOT . 'com.blizzard.wtcg.hearthstone' . DIRECTORY_SEPARATOR);
	define('SMALI', APK . 'smali' . DIRECTORY_SEPARATOR);
	define('ASSEMBLIES', APK . 'assets' . DIRECTORY_SEPARATOR . 'bin' . DIRECTORY_SEPARATOR . 'Data' . DIRECTORY_SEPARATOR . 'Managed' . DIRECTORY_SEPARATOR);
	define('MY_CODE', ROOT . 'my_code' . DIRECTORY_SEPARATOR);
	define('MY_ASSEMBLIES', ROOT . 'my_assemblies' . DIRECTORY_SEPARATOR);

	echo 'Copying my code...' . PHP_EOL;
	exec('cp -r ' . escapeshellarg(MY_CODE . '*') . ' ' . escapeshellarg(SMALI . '.'));

	echo 'Copying my assemblies...' . PHP_EOL;
	exec('cp -r ' . escapeshellarg(MY_ASSEMBLIES . '*.dll') . ' ' . escapeshellarg(ASSEMBLIES . '.'));

	function patchmethod($filename, $method_prototype, $newbody)
	{
		$data1 = file_get_contents($filename);
		$pos1 = strpos($data1, $method_prototype) + strlen($method_prototype);
		$pos2 = strpos($data1, '.end method', $pos1) - 1;

		$data1_first = substr($data1, 0, $pos1);
		$data1_second = substr($data1, $pos2);

		file_put_contents($filename, $data1_first . PHP_EOL . $newbody . PHP_EOL . $data1_second);
	}

	function patchmethodpart($filename, $method_prototype, $after, $newcode)
	{
		$data1 = file_get_contents($filename);
		$pos1 = strpos($data1, $method_prototype) + strlen($method_prototype);
		$pos2 = strpos($data1, $after, $pos1) + strlen($after);

		$code_before = substr($data1, $pos2, strlen($newcode));

		if (strcmp($code_before, $newcode) == 0)
			return;

		$data1_first = substr($data1, 0, $pos2);
		$data1_second = substr($data1, $pos2);

		file_put_contents($filename, $data1_first . $newcode . PHP_EOL . $data1_second);
	}

	function patchmethodpart_replace($filename, $method_prototype, $after, $replace, $newcode)
	{
		$data1 = file_get_contents($filename);
		$pos1 = strpos($data1, $method_prototype) + strlen($method_prototype);
		$pos2 = strpos($data1, $after, $pos1) + strlen($after);

		$replace_before = substr($data1, $pos2, strlen($replace));

		if (strcmp($replace_before, $replace) != 0)
			return;

		$data1_first = substr($data1, 0, $pos2);
		$data1_second = substr($data1, $pos2 + strlen($replace));

		file_put_contents($filename, $data1_first . $newcode . PHP_EOL . $data1_second);
	}

	// MinSpec disable
	patchmethod(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'MinSpecCheck.smali',
		'.method public showMinSpecWarning(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z',
		'    .locals 1
    .param p1, "paramOnClickListener1"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "paramOnClickListener2"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0');

	// Using our cache path
	patchmethod(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen.smali',
		'.method public static getFilesDir()Ljava/io/File;',
		'    .registers 1

    .prologue
    .line 999
    sget-object v0, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    return-object v0');

	// To start wrapper
	patchmethodpart(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen$2.smali',
		'.method public run()V',
		'.prologue
',
		'    .line 777
    invoke-static {}, Lru/killer666/hearthstone/Wrapper;->LoadingScreen_DownloadObbFromGoogle_run()V
');

	// To add buttons into "Not enough space message"
	patchmethodpart_replace(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen$2.smali',
		'.method public run()V',
		'.line 446
',
		'    const-string v20, "GLOBAL_QUIT"

    sget-object v21, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v22, ""

    const/16 v23, 0x0
',
'    const-string v20, "GLOBAL_QUIT"

    sget-object v21, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v22, "Изменить путь"

    sget-object v23, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;');

	patchmethodpart_replace(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen$3.smali',
		'.method public run()V',
		'.line 525
',
		'    const-string v2, "GLOBAL_QUIT"

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, ""

    const/4 v5, 0x0
',
'    const-string v2, "GLOBAL_QUIT"

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, "Изменить путь"

    sget-object v5, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;');

	patchmethodpart_replace(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen$5.smali',
		'.method public run()V',
		'.line 719
',
		'    const-string v4, "GLOBAL_QUIT"

    sget-object v5, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v6, ""

    const/4 v7, 0x0
',
'    const-string v4, "GLOBAL_QUIT"

    sget-object v5, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v6, "Изменить путь"

    sget-object v7, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;
');

	patchmethodpart_replace(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen.smali',
		'.method private copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Z',
		'.line 920
',
		'    const-string v2, "GLOBAL_QUIT"

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, ""

    const/4 v5, 0x0
',
'    const-string v2, "GLOBAL_QUIT"

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, "Изменить путь"

    sget-object v5, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;');

	patchmethodpart_replace(
		SMALI . 'com' . DIRECTORY_SEPARATOR . 'blizzard' . DIRECTORY_SEPARATOR . 'wtcg' . DIRECTORY_SEPARATOR . 'hearthstone' . DIRECTORY_SEPARATOR . 'LoadingScreen.smali',
		'.method protected copyAssetsFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z',
		'.line 831
',
		'    const-string v2, "GLOBAL_QUIT"

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, ""

    const/4 v5, 0x0
',
'    const-string v2, "GLOBAL_QUIT"

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, "Изменить путь"

    sget-object v5, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;');