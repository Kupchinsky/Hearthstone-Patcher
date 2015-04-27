.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->ExtractAssetsFromApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 546
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v10, v10, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_moveToSdcardThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->join()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-boolean v10, v10, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    if-eqz v10, :cond_0

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_0
    :goto_0
    const-string v10, "LoadingScreen"

    const-string v11, "Extracting assets from apk..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v10, v10, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "apkHash"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "storedApkHash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v10}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getApkHash()Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "apkHash":Ljava/lang/String;
    const-string v10, "LoadingScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "checking android apk with hash "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " == "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(old)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->archivedFilesNeedExtracting()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 560
    const-string v10, "LoadingScreen"

    const-string v11, "Skipping extracting apk, missing or already extracted."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_1
    return-void

    .line 564
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v10, v10, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    new-instance v11, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4$1;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 573
    .local v8, "startTime":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v11, v11, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "bin/Data/Raw"

    invoke-virtual {v10, v11, v12}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFolderSize(Landroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide v6

    .line 574
    .local v6, "folderBytes":J
    const-string v10, "LoadingScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "folder bytes to copy is "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v10}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v10

    long-to-int v11, v6

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v11, v11, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "bin/Data/Raw"

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyAssetsFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 579
    .local v4, "endTime":J
    const-string v10, "LoadingScreen"

    const-string v11, "extracting %sMB of files from apk took %ss"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-wide/32 v14, 0x100000

    div-long v14, v6, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sub-long v14, v4, v8

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v10, v10, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "apkHash"

    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 546
    .end local v2    # "apkHash":Ljava/lang/String;
    .end local v3    # "storedApkHash":Ljava/lang/String;
    .end local v4    # "endTime":J
    .end local v6    # "folderBytes":J
    .end local v8    # "startTime":J
    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method
