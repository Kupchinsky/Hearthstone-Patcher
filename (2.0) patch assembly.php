<?
	define('ROOT', dirname(__FILE__) . DIRECTORY_SEPARATOR);
	define('APK', ROOT . 'com.blizzard.wtcg.hearthstone' . DIRECTORY_SEPARATOR);
	define('ASSEMBLIES', APK . 'assets' . DIRECTORY_SEPARATOR . 'bin' . DIRECTORY_SEPARATOR . 'Data' . DIRECTORY_SEPARATOR . 'Managed' . DIRECTORY_SEPARATOR);
	define('MY_ASSEMBLIES', ROOT . 'my_assemblies' . DIRECTORY_SEPARATOR);

	echo 'Disassemble code...' . PHP_EOL;
	exec(escapeshellarg('C:\Program Files (x86)\Microsoft SDKs\Windows\v8.1A\bin\NETFX 4.5.1 Tools\ildasm.exe') . ' /out=' . escapeshellarg(MY_ASSEMBLIES . 'Assembly-CSharp.il') . ' ' . escapeshellarg(ASSEMBLIES . 'Assembly-CSharp.dll'));

	echo 'Patching code...' . PHP_EOL;
	ini_set('memory_limit', -1);

	function il_patchmethod($filename, $method_prototype, $endmethod_comment, $newbody)
	{
		$data1 = file_get_contents($filename);
		$pos1 = strpos($data1, $method_prototype) + strlen($method_prototype);
		$pos2 = strpos($data1, $endmethod_comment, $pos1);

		if ($pos1 === false || $pos2 === false)
			throw new Exception('il_patchmethod');

		$data1_first = substr($data1, 0, $pos1);
		$data1_second = substr($data1, $pos2);

		file_put_contents($filename, $data1_first . PHP_EOL . $newbody . PHP_EOL . $data1_second);
	}

	il_patchmethod(
		MY_ASSEMBLIES . 'Assembly-CSharp.il',
		'.method public hidebysig static bool  IsAndroidDeviceTabletSized() cil managed',
		'  } // end of method MobileCallbackManager::IsAndroidDeviceTabletSized',
		'  {
    // Code size:       35 (0x23)
    .maxstack  2
    .locals init (class [UnityEngine]UnityEngine.AndroidJavaClass V_0,
             class [UnityEngine]UnityEngine.AndroidJavaObject V_1)
    IL_0000:  ldstr      "ru.killer666.hearthstone.InterfaceSelector"
    IL_0005:  newobj     instance void [UnityEngine]UnityEngine.AndroidJavaClass::.ctor(string)
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  ldstr      "selectedIface"
    IL_0011:  callvirt   instance !!0 [UnityEngine]UnityEngine.AndroidJavaObject::GetStatic<class [UnityEngine]UnityEngine.AndroidJavaObject>(string)
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  ldstr      "isTablet"
    IL_001d:  callvirt   instance !!0 [UnityEngine]UnityEngine.AndroidJavaObject::Get<bool>(string)
    IL_0022:  ret');

	echo 'Assembling...' . PHP_EOL;
	exec(escapeshellarg('C:\Windows\Microsoft.NET\Framework\v2.0.50727\ilasm.exe') . ' ' . escapeshellarg(MY_ASSEMBLIES . 'Assembly-CSharp.il') . ' /dll /resource=' . escapeshellarg(MY_ASSEMBLIES . 'Assembly-CSharp.res') . ' > ' . escapeshellarg(MY_ASSEMBLIES . 'Assembly-CSharp.log'));
