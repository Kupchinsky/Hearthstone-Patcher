.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->DownloadObbFromGoogle()V
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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 777
    invoke-static {}, Lru/killer666/hearthstone/Wrapper;->LoadingScreen_DownloadObbFromGoogle_run()V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_store:Ljava/lang/String;

    const-string v3, "google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Skipping OBB download because store is not google: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v9, v9, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_store:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->appMovedToSdcard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    const-string v2, "LoadingScreen"

    const-string v3, "Skipping OBB download because app is moved to SD Card"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_2
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const-string v3, "main"

    invoke-virtual {v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v28, "mainObbFile":Ljava/io/File;
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const-string v3, "patch"

    invoke-virtual {v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v30, "patchObbFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFinalObbSizes()[J

    move-result-object v29

    .line 355
    .local v29, "obbSizes":[J
    const/4 v2, 0x0

    aget-wide v4, v29, v2

    .line 356
    .local v4, "mainObbSize":J
    const/4 v2, 0x1

    aget-wide v6, v29, v2

    .line 358
    .local v6, "patchObbSize":J
    const/4 v8, 0x0

    .line 360
    .local v8, "downloadCompleteOrFailed":Z
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "checking for main obb file "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "checking for patch obb file "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    :cond_3
    const-string v2, "LoadingScreen"

    const-string v3, "Downloading Obb From Google Play..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/unity3d/plugin/downloader/UnityDownloaderService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 371
    const/16 v2, 0x14

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/unity3d/plugin/downloader/UnityDownloaderService;->SALT:[B

    .line 375
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 377
    .local v27, "launchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    const/4 v3, 0x0

    const/high16 v9, 0x8000000

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v31

    .line 379
    .local v31, "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    const-class v3, Lcom/unity3d/plugin/downloader/UnityDownloaderService;

    move-object/from16 v0, v31

    invoke-static {v2, v0, v3}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v32

    .line 381
    .local v32, "startResult":I
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "DownloaderClientMarshaller result = "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    if-nez v32, :cond_4

    .line 384
    const/4 v8, 0x1

    .line 394
    .end local v27    # "launchIntent":Landroid/content/Intent;
    .end local v31    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v32    # "startResult":I
    :cond_4
    :goto_1
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v2

    const-string v3, "GLUE_LOADINGSCREEN_DOWNLOADING"

    const-string v9, "{0}/{1}MB"

    invoke-virtual {v2, v3, v9}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 395
    .local v25, "downloadGlue":Ljava/lang/String;
    const-string v2, "{0}"

    const-string v3, "%.1f"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 396
    const-string v2, "{1}"

    const-string v3, "%.1f"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 397
    move-object/from16 v15, v25

    .line 399
    .local v15, "downloadText":Ljava/lang/String;
    add-long v2, v4, v6

    long-to-double v2, v2

    const-wide/high16 v18, 0x4130000000000000L    # 1048576.0

    div-double v16, v2, v18

    .line 401
    .local v16, "totalDownloadMB":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v9, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    new-instance v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;JJ)V

    invoke-virtual {v9, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 408
    const-string v2, "LoadingScreen"

    const-string v3, "starting wait for download.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_2
    if-eqz v8, :cond_7

    .line 437
    new-instance v28, Ljava/io/File;

    .end local v28    # "mainObbFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const-string v3, "main"

    invoke-virtual {v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .restart local v28    # "mainObbFile":Ljava/io/File;
    new-instance v30, Ljava/io/File;

    .end local v30    # "patchObbFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const-string v3, "patch"

    invoke-virtual {v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v30    # "patchObbFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 441
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    .line 442
    sget v2, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_6

    .line 443
    sget v2, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_b

    .line 445
    :cond_6
    const-string v18, "GLUE_LOADINGSCREEN_ERROR_INSTALLING_TITLE"

    const-string v19, "GLUE_LOADINGSCREEN_ERROR_FILESYSTEM_MESSAGE"

    .line 446
    const-string v20, "GLOBAL_QUIT"

    sget-object v21, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v22, "Изменить путь"

    sget-object v23, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;

    const/16 v24, 0x1

    .line 445
    invoke-static/range {v18 .. v24}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0

    .line 387
    .end local v15    # "downloadText":Ljava/lang/String;
    .end local v16    # "totalDownloadMB":D
    .end local v25    # "downloadGlue":Ljava/lang/String;
    :catch_0
    move-exception v26

    .line 389
    .local v26, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "LoadingScreen"

    const-string v3, "Cannot find own package! MAYDAY!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 391
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 413
    .end local v26    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "downloadText":Ljava/lang/String;
    .restart local v16    # "totalDownloadMB":D
    .restart local v25    # "downloadGlue":Ljava/lang/String;
    :cond_7
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const-string v3, "main"

    invoke-virtual {v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v11, "mainObb":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const-string v3, "patch"

    invoke-virtual {v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v13, "patchObb":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const-string v9, "main"

    invoke-virtual {v3, v9}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v12, "mainObbTmp":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const-string v9, "patch"

    invoke-virtual {v3, v9}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v14, "patchObbTmp":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    new-instance v9, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v17}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;D)V

    invoke-virtual {v2, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 429
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    or-int/2addr v8, v2

    .line 430
    sget v2, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    :goto_4
    or-int/2addr v8, v2

    .line 432
    sget v2, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    const/16 v3, 0xd

    if-le v2, v3, :cond_a

    const/4 v2, 0x1

    :goto_5
    or-int/2addr v8, v2

    .line 434
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 429
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 430
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 432
    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 450
    .end local v11    # "mainObb":Ljava/io/File;
    .end local v12    # "mainObbTmp":Ljava/io/File;
    .end local v13    # "patchObb":Ljava/io/File;
    .end local v14    # "patchObbTmp":Ljava/io/File;
    :cond_b
    sget v2, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_c

    .line 451
    sget v2, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_d

    .line 454
    :cond_c
    const-string v18, "GLUE_LOADINGSCREEN_ERROR_INSTALLING_TITLE"

    const-string v19, "GLUE_LOADINGSCREEN_ERROR_CONNECTION_MESSAGE"

    .line 455
    const-string v20, "GLOBAL_QUIT"

    sget-object v21, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v22, ""

    const/16 v23, 0x0

    const/16 v24, 0x1

    .line 454
    invoke-static/range {v18 .. v24}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0

    .line 460
    :cond_d
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v2

    const-string v3, "GLUE_LOADINGSCREEN_ERROR_DOWNLOADING_TITLE"

    const-string v9, "Error Downloading"

    invoke-virtual {v2, v3, v9}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 461
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v2

    const-string v3, "GLUE_LOADINGSCREEN_ERROR_DOWNLOADING_MESSAGE"

    const-string v9, "Please uninstall and download Hearthstone from Google Play again."

    invoke-virtual {v2, v3, v9}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 462
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v2

    const-string v3, "GLOBAL_QUIT"

    const-string v9, "Quit"

    invoke-virtual {v2, v3, v9}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 463
    sget-object v21, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v22, ""

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 459
    invoke-static/range {v18 .. v24}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 466
    :cond_e
    const-string v2, "LoadingScreen"

    const-string v3, "finished downloading obbs!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 371
    :array_0
    .array-data 1
        0x1t
        0x3t
        -0x2bt
        -0x1t
        0x36t
        0x66t
        -0xft
        -0x2at
        0x2bt
        0x2t
        -0x7t
        -0x13t
        0x9t
        0x5t
        -0x10t
        -0x6ct
        -0x1ft
        0x50t
        -0x1t
        0x9t
    .end array-data
.end method
