.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->MoveToSdcard()V
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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_downloadObbThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-boolean v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 485
    :cond_0
    :goto_0
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->appMovedToSdcard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    const-string v0, "LoadingScreen"

    const-string v1, "App is on sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getRemovableStorage()Ljava/io/File;

    move-result-object v9

    .line 491
    .local v9, "removableStorage":Ljava/io/File;
    if-eqz v9, :cond_3

    .line 493
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, "source":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 495
    .local v7, "dest":Ljava/lang/String;
    const-string v0, "LoadingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source and dest dirs are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    .end local v7    # "dest":Ljava/lang/String;
    .end local v9    # "removableStorage":Ljava/io/File;
    .end local v10    # "source":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 500
    .restart local v7    # "dest":Ljava/lang/String;
    .restart local v9    # "removableStorage":Ljava/io/File;
    .restart local v10    # "source":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    :try_start_1
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;

    invoke-direct {v1, p0, v10}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 515
    const-string v0, "LoadingScreen"

    const-string v1, "copying folders.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const/4 v1, 0x1

    # invokes: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v0, v10, v7, v1}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$4(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    const-string v0, "LoadingScreen"

    const-string v1, "suceeded copying folders.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    # invokes: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->removeFolder(Ljava/lang/String;)Z
    invoke-static {v0, v10}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$5(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 530
    .end local v7    # "dest":Ljava/lang/String;
    .end local v9    # "removableStorage":Ljava/io/File;
    .end local v10    # "source":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v0, "LoadingScreen"

    const-string v1, "done moving to sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 521
    .restart local v7    # "dest":Ljava/lang/String;
    .restart local v9    # "removableStorage":Ljava/io/File;
    .restart local v10    # "source":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 522
    .local v8, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iput-boolean v6, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    .line 523
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 524
    const-string v0, "GLUE_LOADINGSCREEN_ERROR_INSTALLING_TITLE"

    const-string v1, "GLUE_LOADINGSCREEN_ERROR_FILESYSTEM_MESSAGE"

    .line 525
    const-string v2, "GLOBAL_QUIT"

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, "Изменить путь"

    sget-object v5, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;

    .line 524
    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_2

    .line 483
    .end local v7    # "dest":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "removableStorage":Ljava/io/File;
    .end local v10    # "source":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
