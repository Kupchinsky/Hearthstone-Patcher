package ru.killer666.hearthstone.modlauncher.xposed;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XModuleResources;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import dalvik.system.DexClassLoader;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.IXposedHookZygoteInit;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

public class XposedMain implements IXposedHookLoadPackage, IXposedHookZygoteInit {

    private static File assetsPath = null;
    private byte[] modDex = null;

    public String getDataDir(final Context context) throws Exception {
        return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.dataDir;
    }

    @Override
    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
        if (!lpparam.packageName.equals("com.blizzard.wtcg.hearthstone")) {
            return;
        }

        XposedHelpers.findAndHookMethod("com.blizzard.wtcg.hearthstone.LoadingScreen", lpparam.classLoader, "DownloadObbFromGoogle", new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) throws Throwable {
                Class<?> unityPlayer = XposedHelpers.findClass("com.unity3d.player.UnityPlayer", lpparam.classLoader);
                Activity activity = (Activity) XposedHelpers.getStaticObjectField(unityPlayer, "currentActivity");

                assetsPath = new File(XposedMain.this.getDataDir(activity), "mod");
                assetsPath.mkdirs();

                File odexPath = new File(assetsPath, "odex");
                odexPath.mkdirs();

                File modDexPath = new File(assetsPath, "mod.dex");

                if (!modDexPath.exists()) {
                    if (modDex == null) {
                        throw new IllegalStateException("modDex == null");
                    }

                    FileOutputStream fileOutputStream = new FileOutputStream(modDexPath);
                    fileOutputStream.write(XposedMain.this.modDex);
                    fileOutputStream.close();
                }

                DexClassLoader classLoader = new DexClassLoader(
                        modDexPath.getAbsolutePath(),
                        odexPath.getAbsolutePath(),
                        null, lpparam.classLoader);

                Class<?> updateCheckerClass = classLoader.loadClass("ru.killer666.hearthstone.XposedUpdateChecker");
                XposedHelpers.setStaticObjectField(updateCheckerClass, "assetsPath", assetsPath);

                Class<?> wrapperClass = classLoader.loadClass("ru.killer666.hearthstone.Wrapper");
                XposedHelpers.setStaticObjectField(wrapperClass, "isXposed", true);
                XposedHelpers.callStaticMethod(wrapperClass, "LoadingScreen_DownloadObbFromGoogle_run");
            }
        });

        XposedHelpers.findAndHookMethod("android.content.res.AssetManager", lpparam.classLoader, "open", String.class, new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                if (assetsPath == null) {
                    return;
                }

                String fileName = (String) param.args[0];
                File file = new File(assetsPath, fileName);

                XposedBridge.log("Asset: " + file.getAbsolutePath());

                if (file.exists()) {
                    param.setResult(new FileInputStream(file));
                }
            }
        });
    }

    @Override
    public void initZygote(StartupParam startupParam) throws Throwable {
        Resources resources = XModuleResources.createInstance(startupParam.modulePath, null);
        this.modDex = XposedHelpers.assetAsByteArray(resources, "mod.dex");
    }
}
