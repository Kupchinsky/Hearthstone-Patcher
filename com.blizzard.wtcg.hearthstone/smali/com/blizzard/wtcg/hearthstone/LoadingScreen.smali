.class public Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
.super Ljava/lang/Object;
.source "LoadingScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadingScreen"


# instance fields
.field final _this:Landroid/app/Activity;

.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field m_apkThread:Ljava/lang/Thread;

.field m_downloadObbThread:Ljava/lang/Thread;

.field m_loadingFailed:Z

.field m_mainObbThread:Ljava/lang/Thread;

.field m_moveToSdcardThread:Ljava/lang/Thread;

.field m_packageInfo:Landroid/content/pm/PackageInfo;

.field m_patchObbThread:Ljava/lang/Thread;

.field private m_progressBar:Landroid/widget/ProgressBar;

.field private m_progressLayout:Landroid/widget/RelativeLayout;

.field m_progressText:Landroid/widget/TextView;

.field m_store:Ljava/lang/String;

.field private s_buffer:[B


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 4
    .param p1, "mUnityPlayer"    # Lcom/unity3d/player/UnityPlayer;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_store:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    .line 860
    const/high16 v1, 0x500000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->s_buffer:[B

    .line 83
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    .line 84
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 85
    const-string v1, "LoadingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "files dir: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_packageInfo:Landroid/content/pm/PackageInfo;

    .line 89
    const-string v1, "LoadingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Package Manager Info: versionName - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " versionCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_packageInfo:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getStoreFromClientConfig()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_store:Ljava/lang/String;

    .line 94
    return-void

    .line 91
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "LoadingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " aborting..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private Dismiss()V
    .locals 2

    .prologue
    .line 739
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)V

    .line 763
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 764
    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$1(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Landroid/widget/ProgressBar;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 884
    invoke-direct {p0, p1, p2, p3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 862
    invoke-direct {p0, p1}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->removeFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Ljava/io/InputStream;Ljava/io/OutputStream;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-direct {p0, p1, p2, p3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Z

    move-result v0

    return v0
.end method

.method public static appMovedToSdcard()Z
    .locals 4

    .prologue
    .line 153
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 154
    .local v0, "sourceDir":Ljava/lang/String;
    const-string v1, "LoadingScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "source dir is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v1, "/mnt/asec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 159
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static archivedFilesNeedExtracting()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 166
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "filesDir":Ljava/lang/String;
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checking for archived files.."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/Data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/DBF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/Strings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "fromAssetPath"    # Ljava/lang/String;
    .param p3, "toPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "fromAssetPath"    # Ljava/lang/String;
    .param p3, "toPath"    # Ljava/lang/String;
    .param p4, "updateProgress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 844
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copyAsset(fromAssetPath="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 848
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 849
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 850
    new-instance v1, Ljava/io/FileOutputStream;

    .end local v1    # "out":Ljava/io/FileOutputStream;
    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 851
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    invoke-direct {p0, v0, v1, p4}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Z

    .line 852
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 853
    const/4 v0, 0x0

    .line 854
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 855
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 856
    const/4 v1, 0x0

    .line 857
    const/4 v2, 0x1

    return v2
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Z
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "updateProgress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 939
    const-wide/16 v2, 0x0

    .line 941
    .local v2, "totalRead":J
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->s_buffer:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 951
    const/4 v1, 0x1

    return v1

    .line 943
    :cond_1
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->s_buffer:[B

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 944
    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 945
    if-eqz p3, :cond_0

    .line 947
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .param p3, "updateProgress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 929
    .local v0, "in":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 930
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 931
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-direct {p0, v0, v1, p3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Z

    move-result v2

    .line 932
    .local v2, "res":Z
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    .line 933
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    .line 934
    return v2
.end method

.method private copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "fromPath"    # Ljava/lang/String;
    .param p2, "toPath"    # Ljava/lang/String;
    .param p3, "updateProgress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    const-string v0, "LoadingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyFolder(fromAssetPath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 890
    .local v11, "root":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 895
    .local v9, "files":[Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 897
    :cond_0
    const-string v0, "LoadingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyFolder failed to process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skipping..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v10, 0x1

    .line 922
    .end local v9    # "files":[Ljava/lang/String;
    .end local v11    # "root":Ljava/io/File;
    :cond_1
    :goto_0
    return v10

    .line 901
    .restart local v9    # "files":[Ljava/lang/String;
    .restart local v11    # "root":Ljava/io/File;
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 903
    const/4 v10, 0x1

    .line 904
    .local v10, "res":Z
    array-length v1, v9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v8, v9, v0

    .line 906
    .local v8, "file":Ljava/lang/String;
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v2, "."

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v10, v2

    .line 904
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 912
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyFolder(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/2addr v10, v2

    goto :goto_2

    .line 916
    .end local v8    # "file":Ljava/lang/String;
    .end local v9    # "files":[Ljava/lang/String;
    .end local v10    # "res":Z
    .end local v11    # "root":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 918
    .local v7, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    .line 919
    const-string v0, "GLUE_LOADINGSCREEN_ERROR_INSTALLING_TITLE"

    const-string v1, "GLUE_LOADINGSCREEN_ERROR_FILESYSTEM_MESSAGE"

    .line 920
    const-string v2, "GLOBAL_QUIT"

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, "Изменить путь"

    sget-object v5, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x1

    .line 919
    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 921
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 922
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static getFileChecksum(Ljava/lang/String;)[B
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 957
    .local v3, "fileStream":Ljava/io/InputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 959
    .local v0, "buffer":[B
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 963
    .local v2, "digest":Ljava/security/MessageDigest;
    :cond_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 964
    .local v1, "bytesRead":I
    if-lez v1, :cond_1

    .line 966
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 968
    :cond_1
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 969
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 970
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    return-object v4
.end method

.method public static getFilesDir()Ljava/io/File;
    .registers 3

    .prologue
    .line 17
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/sdcard0/Android/data/com.blizzard.wtcg.hearthstone/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

.end method

.method public static getRemovableStorage()Ljava/io/File;
    .locals 10

    .prologue
    .line 187
    const-string v5, "SECONDARY_STORAGE"

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "paths":[Ljava/lang/String;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_2

    .line 202
    .end local v2    # "paths":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3

    .line 190
    .restart local v2    # "paths":[Ljava/lang/String;
    :cond_2
    aget-object v1, v2, v5

    .line 191
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "file":Ljava/io/File;
    const-string v7, "LoadingScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "storage dir "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 194
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/Android/data/com.blizzard.wtcg.hearthstone/files"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v3, "removableFilesDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 196
    const-string v7, "LoadingScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "removableFilesDir "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    .line 190
    .end local v3    # "removableFilesDir":Ljava/io/File;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public static getSHA1Checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 975
    const-string v2, ""

    .line 979
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFileChecksum(Ljava/lang/String;)[B

    move-result-object v0

    .line 980
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 986
    .end local v0    # "b":[B
    .end local v1    # "i":I
    :goto_1
    return-object v2

    .line 982
    .restart local v0    # "b":[B
    .restart local v1    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 980
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 985
    .end local v0    # "b":[B
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private removeFolder(Ljava/lang/String;)Z
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 864
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    .local v3, "root":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "files":[Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 869
    :cond_0
    const-string v4, "LoadingScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "removeFolder failed to process "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipping..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v2, 0x1

    .line 881
    :goto_0
    return v2

    .line 873
    :cond_1
    const/4 v2, 0x1

    .line 874
    .local v2, "res":Z
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_2

    .line 879
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    and-int/2addr v2, v4

    .line 880
    const-string v4, "LoadingScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "removed folder "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    :cond_2
    aget-object v0, v1, v4

    .line 876
    .local v0, "file":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 874
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 877
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->removeFolder(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v2, v6

    goto :goto_2
.end method


# virtual methods
.method public DownloadObbFromGoogle()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)V

    .line 470
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_downloadObbThread:Ljava/lang/Thread;

    .line 471
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_downloadObbThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 472
    return-void
.end method

.method public ExtractAssetsFromApk()V
    .locals 2

    .prologue
    .line 541
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)V

    .line 583
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_apkThread:Ljava/lang/Thread;

    .line 584
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_apkThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 585
    return-void
.end method

.method public ExtractAssetsFromObb(Ljava/lang/String;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 2
    .param p1, "obbPath"    # Ljava/lang/String;
    .param p2, "joiningThread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 647
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$5;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Ljava/lang/Thread;Ljava/lang/String;)V

    .line 731
    .local v1, "r":Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 732
    .local v0, "obbThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 733
    return-object v0
.end method

.method public Init()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)V

    .line 323
    .local v0, "startProgress":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    const-string v1, "LoadingScreen"

    const-string v2, "done waiting for progress bar"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method public MoveToSdcard()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 477
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)V

    .line 534
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_moveToSdcardThread:Ljava/lang/Thread;

    .line 535
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_moveToSdcardThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 536
    return-void
.end method

.method public Start()V
    .locals 3

    .prologue
    .line 102
    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "f":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 106
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->Init()V

    .line 109
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->DownloadObbFromGoogle()V

    .line 112
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->MoveToSdcard()V

    .line 114
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->ExtractAssetsFromApk()V

    .line 116
    const-string v1, "main"

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_apkThread:Ljava/lang/Thread;

    invoke-virtual {p0, v1, v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->ExtractAssetsFromObb(Ljava/lang/String;Ljava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_mainObbThread:Ljava/lang/Thread;

    .line 118
    const-string v1, "patch"

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_mainObbThread:Ljava/lang/Thread;

    invoke-virtual {p0, v1, v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->ExtractAssetsFromObb(Ljava/lang/String;Ljava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_patchObbThread:Ljava/lang/Thread;

    .line 120
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->Dismiss()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "f":Landroid/widget/FrameLayout;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected copyAssetsFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "fromAssetPath"    # Ljava/lang/String;
    .param p3, "toPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 808
    const-string v0, "LoadingScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyAssetsFolder(fromAssetPath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 812
    .local v9, "files":[Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 813
    const/4 v10, 0x1

    .line 814
    .local v10, "res":Z
    array-length v1, v9

    move v0, v11

    :goto_0
    if-lt v0, v1, :cond_1

    .line 833
    .end local v9    # "files":[Ljava/lang/String;
    .end local v10    # "res":Z
    :cond_0
    :goto_1
    return v10

    .line 814
    .restart local v9    # "files":[Ljava/lang/String;
    .restart local v10    # "res":Z
    :cond_1
    aget-object v8, v9, v0

    .line 816
    .local v8, "file":Ljava/lang/String;
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v2, "."

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v10, v2

    .line 824
    :goto_2
    if-eqz v10, :cond_0

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->copyAssetsFolder(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    and-int/2addr v10, v2

    goto :goto_2

    .line 827
    .end local v8    # "file":Ljava/lang/String;
    .end local v9    # "files":[Ljava/lang/String;
    .end local v10    # "res":Z
    :catch_0
    move-exception v7

    .line 829
    .local v7, "e":Ljava/io/IOException;
    iput-boolean v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    .line 830
    const-string v0, "GLUE_LOADINGSCREEN_ERROR_INSTALLING_TITLE"

    const-string v1, "GLUE_LOADINGSCREEN_ERROR_FILESYSTEM_MESSAGE"

    .line 831
    const-string v2, "GLOBAL_QUIT"

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, "Изменить путь"

    sget-object v5, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;

    .line 830
    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 832
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move v10, v11

    .line 833
    goto/16 :goto_1
.end method

.method public getApkHash()Ljava/lang/String;
    .locals 8

    .prologue
    .line 133
    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "jar":Ljava/util/jar/JarFile;
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v3

    .line 135
    .local v3, "manifestEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 136
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 137
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 139
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 148
    .end local v2    # "jar":Ljava/util/jar/JarFile;
    .end local v3    # "manifestEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_1
    return-object v5

    .line 137
    .restart local v2    # "jar":Ljava/util/jar/JarFile;
    .restart local v3    # "manifestEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v4    # "md":Ljava/security/MessageDigest;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "entry":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/Attributes;

    const-string v7, "SHA1-Digest"

    invoke-virtual {v5, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 141
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "jar":Ljava/util/jar/JarFile;
    .end local v3    # "manifestEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v4    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 148
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    const-string v5, ""

    goto :goto_1

    .line 144
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getFinalObbSizes()[J
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 599
    const/4 v6, 0x2

    :try_start_0
    new-array v5, v6, [J

    .line 600
    .local v5, "obbSizes":[J
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "assets/bin/Data/Raw/obbManifest.txt"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 601
    .local v4, "obbSizeStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 603
    .local v3, "obbSizeReader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v5

    if-lt v1, v6, :cond_1

    .line 615
    .end local v1    # "i":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "obbSizeReader":Ljava/io/BufferedReader;
    .end local v4    # "obbSizeStream":Ljava/io/InputStream;
    .end local v5    # "obbSizes":[J
    :cond_0
    :goto_1
    return-object v5

    .line 605
    .restart local v1    # "i":I
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "obbSizeReader":Ljava/io/BufferedReader;
    .restart local v4    # "obbSizeStream":Ljava/io/InputStream;
    .restart local v5    # "obbSizes":[J
    :cond_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v1    # "i":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "obbSizeReader":Ljava/io/BufferedReader;
    .end local v4    # "obbSizeStream":Ljava/io/InputStream;
    .end local v5    # "obbSizes":[J
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/io/IOException;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    .line 612
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 613
    const-string v6, "LoadingScreen"

    const-string v7, "Unable to get final obb download sizes!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-array v5, v8, [J

    goto :goto_1
.end method

.method protected getFolderSize(Landroid/content/res/AssetManager;Ljava/lang/String;)J
    .locals 8
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 768
    const-wide/16 v0, 0x0

    .line 771
    .local v0, "bytes":J
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 772
    .local v3, "files":[Ljava/lang/String;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 782
    .end local v3    # "files":[Ljava/lang/String;
    :goto_1
    return-wide v0

    .line 772
    .restart local v3    # "files":[Ljava/lang/String;
    :cond_0
    aget-object v2, v3, v4

    .line 774
    .local v2, "file":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 775
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 772
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 777
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFolderSize(Landroid/content/res/AssetManager;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_2

    .line 779
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected getFolderSize(Ljava/lang/String;)J
    .locals 10
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 787
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    .local v4, "folderFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    move-wide v0, v6

    .line 803
    :cond_0
    :goto_0
    return-wide v0

    .line 790
    :cond_1
    const-wide/16 v0, 0x0

    .line 792
    .local v0, "bytes":J
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 793
    .local v3, "files":[Ljava/lang/String;
    if-nez v3, :cond_2

    move-wide v0, v6

    goto :goto_0

    .line 795
    :cond_2
    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v2, v3, v5

    .line 797
    .local v2, "file":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 798
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 795
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 800
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFolderSize(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v0, v8

    goto :goto_2
.end method

.method public getObbHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "obbPath"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "obbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/storage/sdcard0/Android/obb/com.blizzard.wtcg.hearthstone/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    const-string v1, ".849007.com.blizzard.wtcg.hearthstone.obb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

.end method

.method public getStoreFromClientConfig()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 621
    const-string v4, "unknown"

    .line 624
    .local v4, "store":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "assets/bin/Data/Raw/client.config"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 625
    .local v1, "clientConfigStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 627
    .local v0, "clientConfigReader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 641
    .end local v0    # "clientConfigReader":Ljava/io/BufferedReader;
    .end local v1    # "clientConfigStream":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    :goto_1
    const-string v6, "LoadingScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Store gotten from client config: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-object v4

    .line 629
    .restart local v0    # "clientConfigReader":Ljava/io/BufferedReader;
    .restart local v1    # "clientConfigStream":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 630
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 631
    .local v5, "tokens":[Ljava/lang/String;
    array-length v6, v5

    if-le v6, v8, :cond_0

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "store"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 632
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 635
    .end local v0    # "clientConfigReader":Ljava/io/BufferedReader;
    .end local v1    # "clientConfigStream":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 637
    .local v2, "e":Ljava/io/IOException;
    iput-boolean v8, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    .line 638
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 639
    const-string v6, "LoadingScreen"

    const-string v7, "Failed to read client config, returning unknown store!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
