.class public Lru/killer666/hearthstone/DownloadSelector;
.super Lru/killer666/hearthstone/WaitableTask;
.source "DownloadSelector.java"


# static fields
.field public static isSkipMarketDownload:Z

.field static torrentFileUrl:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private isDownloading:Z

.field private isP2P:Z

.field private m_progressBar:Landroid/widget/ProgressBar;

.field private m_progressText:Landroid/widget/TextView;

.field private mainObb:Ljava/io/File;

.field private patchObb:Ljava/io/File;

.field private final repeatableProgressUpdate:Ljava/lang/Runnable;

.field private sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lru/killer666/hearthstone/DownloadSelector;->isSkipMarketDownload:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 25
    iput-boolean v1, p0, Lru/killer666/hearthstone/DownloadSelector;->isP2P:Z

    .line 31
    new-instance v0, Lru/killer666/hearthstone/DownloadSelector$1;

    invoke-direct {v0, p0}, Lru/killer666/hearthstone/DownloadSelector$1;-><init>(Lru/killer666/hearthstone/DownloadSelector;)V

    iput-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->repeatableProgressUpdate:Ljava/lang/Runnable;

    .line 47
    iput-boolean v1, p0, Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z

    return-void
.end method

.method static synthetic access$000(Lru/killer666/hearthstone/DownloadSelector;)Lcom/turn/ttorrent/client/SharedTorrent;
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/DownloadSelector;

    .prologue
    .line 23
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;

    return-object v0
.end method

.method static synthetic access$100(Lru/killer666/hearthstone/DownloadSelector;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lru/killer666/hearthstone/DownloadSelector;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lru/killer666/hearthstone/DownloadSelector;->updateProgress(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lru/killer666/hearthstone/DownloadSelector;)Z
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/DownloadSelector;

    .prologue
    .line 23
    iget-boolean v0, p0, Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z

    return v0
.end method

.method static synthetic access$300(Lru/killer666/hearthstone/DownloadSelector;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/DownloadSelector;

    .prologue
    .line 23
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->repeatableProgressUpdate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lru/killer666/hearthstone/DownloadSelector;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/DownloadSelector;

    .prologue
    .line 23
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lru/killer666/hearthstone/DownloadSelector;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/DownloadSelector;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 23
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lru/killer666/hearthstone/DownloadSelector;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/DownloadSelector;

    .prologue
    .line 23
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->m_progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lru/killer666/hearthstone/DownloadSelector;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/DownloadSelector;

    .prologue
    .line 23
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->m_progressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lru/killer666/hearthstone/DownloadSelector;Z)Z
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/DownloadSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lru/killer666/hearthstone/DownloadSelector;->isP2P:Z

    return p1
.end method

.method private startDownload()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 61
    sget-object v0, Lru/killer666/hearthstone/DownloadSelector;->torrentFileUrl:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cancelled, torrentFileUrl == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_f
    const-string v0, "com.blizzard.wtcg.hearthstone.LoadingScreen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 66
    .local v12, "loadingScreen":Ljava/lang/Class;
    const-string v0, "m_progressBar"

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 67
    .local v8, "f_m_progressBar":Ljava/lang/reflect/Field;
    const-string v0, "m_progressText"

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 69
    .local v9, "f_m_progressText":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->m_progressBar:Landroid/widget/ProgressBar;

    .line 73
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->m_progressText:Landroid/widget/TextView;

    .line 76
    const-string v0, "HearthstoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading torrent file from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lru/killer666/hearthstone/DownloadSelector;->torrentFileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "\u0421\u043a\u0430\u0447\u0438\u0432\u0430\u043d\u0438\u0435 \u0442\u043e\u0440\u0440\u0435\u043d\u0442 \u0444\u0430\u0439\u043b\u0430..."

    invoke-direct {p0, v6, v0}, Lru/killer666/hearthstone/DownloadSelector;->updateProgress(ILjava/lang/String;)V

    .line 79
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    sget-object v0, Lru/killer666/hearthstone/DownloadSelector;->torrentFileUrl:Ljava/lang/String;

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 80
    .local v10, "httpget":Lorg/apache/http/client/methods/HttpGet;
    sget-object v0, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 82
    sget-object v0, Lru/killer666/hearthstone/UpdateChecker;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 84
    .local v13, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 85
    .local v11, "instream":Ljava/io/InputStream;
    new-instance v0, Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-static {v11}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    sget-object v2, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lcom/turn/ttorrent/client/SharedTorrent;-><init>([BLjava/io/File;)V

    iput-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;

    .line 86
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 88
    new-instance v7, Lcom/turn/ttorrent/client/Client;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-direct {v7, v0, v1}, Lcom/turn/ttorrent/client/Client;-><init>(Ljava/net/InetAddress;Lcom/turn/ttorrent/client/SharedTorrent;)V

    .line 90
    .local v7, "client":Lcom/turn/ttorrent/client/Client;
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/turn/ttorrent/client/Client;->setMaxDownloadRate(D)V

    .line 91
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v7, v0, v1}, Lcom/turn/ttorrent/client/Client;->setMaxUploadRate(D)V

    .line 93
    iput-boolean v3, p0, Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z

    .line 94
    new-instance v14, Ljava/lang/Thread;

    new-instance v0, Lcom/turn/ttorrent/client/Client$ClientShutdown;

    invoke-direct {v0, v7, v5}, Lcom/turn/ttorrent/client/Client$ClientShutdown;-><init>(Lcom/turn/ttorrent/client/Client;Ljava/util/Timer;)V

    invoke-direct {v14, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    .local v14, "shutdownHook":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 97
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lru/killer666/hearthstone/DownloadSelector$3;

    invoke-direct {v1, p0}, Lru/killer666/hearthstone/DownloadSelector$3;-><init>(Lru/killer666/hearthstone/DownloadSelector;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v7}, Lcom/turn/ttorrent/client/Client;->download()V

    .line 106
    invoke-virtual {v7}, Lcom/turn/ttorrent/client/Client;->waitForCompletion()V

    .line 108
    iput-boolean v6, p0, Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z

    .line 109
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 111
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->isComplete()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 112
    const-string v0, ""

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0438\u043b\u0430\u0441\u044c \u043d\u0435\u0443\u0434\u0430\u0447\u0435\u0439!"

    const-string v2, "\u041e\u041a"

    new-instance v3, Lru/killer666/hearthstone/DownloadSelector$4;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/DownloadSelector$4;-><init>(Lru/killer666/hearthstone/DownloadSelector;)V

    const-string v4, ""

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 128
    :goto_e0
    return-void

    .line 123
    :cond_e1
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->mainObb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 124
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->patchObb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 126
    invoke-virtual {p0}, Lru/killer666/hearthstone/DownloadSelector;->endTask()V

    goto :goto_e0
.end method

.method private updateProgress(ILjava/lang/String;)V
    .registers 5
    .param p1, "percent"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lru/killer666/hearthstone/DownloadSelector$2;

    invoke-direct {v1, p0, p1, p2}, Lru/killer666/hearthstone/DownloadSelector$2;-><init>(Lru/killer666/hearthstone/DownloadSelector;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method


# virtual methods
.method doTask()Z
    .registers 14

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 132
    const-string v0, "HearthstoneWrapper"

    const-string v1, "Okay, let\'s start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_9
    const-string v0, "com.blizzard.wtcg.hearthstone.LoadingScreen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 139
    .local v9, "loadingScreen":Ljava/lang/Class;
    const-string v0, "m_mainObbPath"

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 140
    .local v10, "m_mainObbPath":Ljava/lang/reflect/Field;
    const-string v0, "m_patchObbPath"

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 142
    .local v11, "m_patchObbPath":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 145
    new-instance v1, Ljava/io/File;

    sget-object v0, Lru/killer666/hearthstone/Wrapper;->loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lru/killer666/hearthstone/DownloadSelector;->mainObb:Ljava/io/File;

    .line 146
    new-instance v1, Ljava/io/File;

    sget-object v0, Lru/killer666/hearthstone/Wrapper;->loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lru/killer666/hearthstone/DownloadSelector;->patchObb:Ljava/io/File;

    .line 148
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->mainObb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector;->patchObb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8f

    .line 149
    .local v8, "isDownloadRequired":Z
    :cond_51
    :goto_51
    const-string v0, "HearthstoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDownloadRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_69} :catch_91
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_69} :catch_96
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_69} :catch_9b

    .line 162
    if-eqz v8, :cond_8d

    .line 163
    const-string v0, "HearthstoneWrapper"

    const-string v1, "Showing dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 167
    .local v12, "waitObject":Ljava/lang/Object;
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lru/killer666/hearthstone/DownloadSelector$5;

    invoke-direct {v1, p0, v12}, Lru/killer666/hearthstone/DownloadSelector$5;-><init>(Lru/killer666/hearthstone/DownloadSelector;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    monitor-enter v12

    .line 193
    :try_start_82
    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_85} :catch_a0
    .catchall {:try_start_82 .. :try_end_85} :catchall_a5

    .line 197
    :goto_85
    :try_start_85
    monitor-exit v12
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_a5

    .line 199
    iget-boolean v0, p0, Lru/killer666/hearthstone/DownloadSelector;->isP2P:Z

    if-eqz v0, :cond_eb

    .line 201
    :try_start_8a
    invoke-direct {p0}, Lru/killer666/hearthstone/DownloadSelector;->startDownload()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_a8

    .end local v12    # "waitObject":Ljava/lang/Object;
    :cond_8d
    :goto_8d
    move v6, v8

    .line 217
    .end local v8    # "isDownloadRequired":Z
    .end local v9    # "loadingScreen":Ljava/lang/Class;
    .end local v10    # "m_mainObbPath":Ljava/lang/reflect/Field;
    .end local v11    # "m_patchObbPath":Ljava/lang/reflect/Field;
    :goto_8e
    return v6

    .restart local v9    # "loadingScreen":Ljava/lang/Class;
    .restart local v10    # "m_mainObbPath":Ljava/lang/reflect/Field;
    .restart local v11    # "m_patchObbPath":Ljava/lang/reflect/Field;
    :cond_8f
    move v8, v6

    .line 148
    goto :goto_51

    .line 151
    .end local v9    # "loadingScreen":Ljava/lang/Class;
    .end local v10    # "m_mainObbPath":Ljava/lang/reflect/Field;
    .end local v11    # "m_patchObbPath":Ljava/lang/reflect/Field;
    :catch_91
    move-exception v7

    .line 152
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_8e

    .line 154
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :catch_96
    move-exception v7

    .line 155
    .local v7, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v7}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_8e

    .line 157
    .end local v7    # "e":Ljava/lang/NoSuchFieldException;
    :catch_9b
    move-exception v7

    .line 158
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_8e

    .line 194
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    .restart local v8    # "isDownloadRequired":Z
    .restart local v9    # "loadingScreen":Ljava/lang/Class;
    .restart local v10    # "m_mainObbPath":Ljava/lang/reflect/Field;
    .restart local v11    # "m_patchObbPath":Ljava/lang/reflect/Field;
    .restart local v12    # "waitObject":Ljava/lang/Object;
    :catch_a0
    move-exception v7

    .line 195
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_a1
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_85

    .line 197
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_a5
    move-exception v0

    monitor-exit v12
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_a5

    throw v0

    .line 202
    :catch_a8
    move-exception v7

    .line 203
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041e\u0448\u0438\u0431\u043a\u0430 \u043f\u0440\u0438 \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0435: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n\n\u041f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u0435 \u043f\u043e\u043f\u044b\u0442\u043a\u0443, \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u043f\u043e\u043c\u043e\u0436\u0435\u0442"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u041e\u041a"

    new-instance v3, Lru/killer666/hearthstone/DownloadSelector$6;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/DownloadSelector$6;-><init>(Lru/killer666/hearthstone/DownloadSelector;)V

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_8d

    .line 214
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_eb
    invoke-virtual {p0}, Lru/killer666/hearthstone/DownloadSelector;->endTask()V

    goto :goto_8d
.end method
