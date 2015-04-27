.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->ExtractAssetsFromObb(Ljava/lang/String;Ljava/lang/Thread;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

.field private final synthetic val$joiningThread:Ljava/lang/Thread;

.field private final synthetic val$obbPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Ljava/lang/Thread;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$joiningThread:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$obbPath:Ljava/lang/String;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 653
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$joiningThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-boolean v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 656
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_store:Ljava/lang/String;

    const-string v3, "google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 729
    :goto_1
    return-void

    .line 658
    :cond_1
    const-string v2, "LoadingScreen"

    const-string v3, "Extracting assets from obb..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$obbPath:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 661
    .local v17, "storedObbHash":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$obbPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 662
    .local v15, "obbHash":Ljava/lang/String;
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checking obb file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$obbPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with hash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(old)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->archivedFilesNeedExtracting()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 667
    :cond_2
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping extracting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$obbPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", missing or already extracted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 671
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    new-instance v3, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5$1;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 680
    .local v18, "startTime":J
    const-wide/16 v22, 0x0

    .line 683
    .local v22, "uncompressedBytes":J
    :try_start_1
    new-instance v16, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$obbPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 685
    .local v16, "obbZip":Ljava/util/zip/ZipFile;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v12

    .local v12, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_4

    .line 692
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/Data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 694
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "obb bytes to copy is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v2

    move-wide/from16 v0, v22

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 698
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_5

    .line 707
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 724
    .end local v12    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v16    # "obbZip":Ljava/util/zip/ZipFile;
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 726
    .local v10, "endTime":J
    const-string v2, "LoadingScreen"

    const-string v3, "extracting %sMB of files from obb took %ss"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/32 v6, 0x100000

    div-long v6, v22, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sub-long v6, v10, v18

    long-to-double v6, v6

    const-wide v24, 0x408f400000000000L    # 1000.0

    div-double v6, v6, v24

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$obbPath:Ljava/lang/String;

    invoke-interface {v2, v3, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 687
    .end local v10    # "endTime":J
    .restart local v12    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v16    # "obbZip":Ljava/util/zip/ZipFile;
    :cond_4
    :try_start_2
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/zip/ZipEntry;

    .line 688
    .local v13, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    add-long v22, v22, v2

    goto/16 :goto_2

    .line 700
    .end local v13    # "entry":Ljava/util/zip/ZipEntry;
    :cond_5
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/zip/ZipEntry;

    .line 701
    .restart local v13    # "entry":Ljava/util/zip/ZipEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->val$obbPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 702
    .local v14, "fromAssetPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 703
    .local v20, "toPath":Ljava/lang/String;
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copyAsset(fromAssetPath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    # invokes: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Z
    invoke-static {v2, v3, v4, v5}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$6(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Z
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 710
    .end local v12    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v13    # "entry":Ljava/util/zip/ZipEntry;
    .end local v14    # "fromAssetPath":Ljava/lang/String;
    .end local v16    # "obbZip":Ljava/util/zip/ZipFile;
    .end local v20    # "toPath":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 713
    .local v9, "e":Ljava/util/zip/ZipException;
    invoke-virtual {v9}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto/16 :goto_4

    .line 715
    .end local v9    # "e":Ljava/util/zip/ZipException;
    :catch_1
    move-exception v9

    .line 717
    .local v9, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    .line 718
    const-string v2, "GLUE_LOADINGSCREEN_ERROR_INSTALLING_TITLE"

    const-string v3, "GLUE_LOADINGSCREEN_ERROR_FILESYSTEM_MESSAGE"

    .line 719
    const-string v4, "GLOBAL_QUIT"

    sget-object v5, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v6, "Изменить путь"

    sget-object v7, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;

    const/4 v8, 0x1

    .line 718
    invoke-static/range {v2 .. v8}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 720
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 653
    .end local v9    # "e":Ljava/io/IOException;
    .end local v15    # "obbHash":Ljava/lang/String;
    .end local v17    # "storedObbHash":Ljava/lang/String;
    .end local v18    # "startTime":J
    .end local v22    # "uncompressedBytes":J
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method
