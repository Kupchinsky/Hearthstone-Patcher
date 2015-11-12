.class public Lru/killer666/hearthstone/DownloadSelector;
.super Lru/killer666/hearthstone/WaitableTask;
.source "DownloadSelector.java"


# static fields
.field private static handler:Landroid/os/Handler;

.field public static isDownloadRequired:Z

.field private static isDownloading:Z

.field public static isP2P:Z

.field private static m_progressBar:Landroid/widget/ProgressBar;

.field private static m_progressText:Landroid/widget/TextView;

.field private static mainObb:Ljava/io/File;

.field private static patchObb:Ljava/io/File;

.field private static final repeatableProgressUpdate:Ljava/lang/Runnable;

.field private static sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-boolean v1, Lru/killer666/hearthstone/DownloadSelector;->isP2P:Z

    .line 22
    sput-boolean v1, Lru/killer666/hearthstone/DownloadSelector;->isDownloadRequired:Z

    .line 27
    new-instance v0, Lru/killer666/hearthstone/DownloadSelector$1;

    invoke-direct {v0}, Lru/killer666/hearthstone/DownloadSelector$1;-><init>()V

    sput-object v0, Lru/killer666/hearthstone/DownloadSelector;->repeatableProgressUpdate:Ljava/lang/Runnable;

    .line 43
    sput-boolean v1, Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/turn/ttorrent/client/SharedTorrent;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/ProgressBar;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lru/killer666/hearthstone/DownloadSelector;->m_progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lru/killer666/hearthstone/DownloadSelector;->m_progressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lru/killer666/hearthstone/DownloadSelector;->repeatableProgressUpdate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1
    .param p0, "x0"    # Landroid/os/Handler;

    .prologue
    .line 20
    sput-object p0, Lru/killer666/hearthstone/DownloadSelector;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static startP2P()V
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 49
    sget-object v0, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :try_start_8
    new-instance v7, Lcom/turn/ttorrent/client/Client;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/path/to/your.torrent"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/turn/ttorrent/client/SharedTorrent;->fromFile(Ljava/io/File;Ljava/io/File;)Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/turn/ttorrent/client/Client;-><init>(Ljava/net/InetAddress;Lcom/turn/ttorrent/client/SharedTorrent;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_9f

    .line 64
    .local v7, "client":Lcom/turn/ttorrent/client/Client;
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/turn/ttorrent/client/Client;->setMaxDownloadRate(D)V

    .line 65
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v7, v0, v1}, Lcom/turn/ttorrent/client/Client;->setMaxUploadRate(D)V

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/turn/ttorrent/client/Client$ClientShutdown;

    invoke-direct {v2, v7, v5}, Lcom/turn/ttorrent/client/Client$ClientShutdown;-><init>(Lcom/turn/ttorrent/client/Client;Ljava/util/Timer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 70
    :try_start_3c
    const-string v0, "com.blizzard.wtcg.hearthstone.LoadingScreen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 72
    .local v11, "loadingScreen":Ljava/lang/Class;
    const-string v0, "m_progressBar"

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 73
    .local v9, "f_m_progressBar":Ljava/lang/reflect/Field;
    const-string v0, "m_progressText"

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 75
    .local v10, "f_m_progressText":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lru/killer666/hearthstone/DownloadSelector;->m_progressBar:Landroid/widget/ProgressBar;

    .line 79
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lru/killer666/hearthstone/DownloadSelector;->m_progressText:Landroid/widget/TextView;
    :try_end_6a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_6a} :catch_a4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_6a} :catch_a9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3c .. :try_end_6a} :catch_ae

    .line 92
    invoke-virtual {v7}, Lcom/turn/ttorrent/client/Client;->getTorrent()Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v0

    sput-object v0, Lru/killer666/hearthstone/DownloadSelector;->sharedTorrent:Lcom/turn/ttorrent/client/SharedTorrent;

    .line 93
    sput-boolean v3, Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z

    .line 95
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lru/killer666/hearthstone/DownloadSelector$2;

    invoke-direct {v1}, Lru/killer666/hearthstone/DownloadSelector$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {v7}, Lcom/turn/ttorrent/client/Client;->download()V

    .line 104
    invoke-virtual {v7}, Lcom/turn/ttorrent/client/Client;->waitForCompletion()V

    .line 106
    sput-boolean v6, Lru/killer666/hearthstone/DownloadSelector;->isDownloading:Z

    .line 108
    invoke-virtual {v7}, Lcom/turn/ttorrent/client/Client;->getTorrent()Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->isComplete()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 109
    const-string v0, ""

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0438\u043b\u0430\u0441\u044c \u043d\u0435\u0443\u0434\u0430\u0447\u0435\u0439!"

    const-string v2, "\u041e\u041a"

    new-instance v3, Lru/killer666/hearthstone/DownloadSelector$3;

    invoke-direct {v3}, Lru/killer666/hearthstone/DownloadSelector$3;-><init>()V

    const-string v4, ""

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 127
    .end local v7    # "client":Lcom/turn/ttorrent/client/Client;
    .end local v9    # "f_m_progressBar":Ljava/lang/reflect/Field;
    .end local v10    # "f_m_progressText":Ljava/lang/reflect/Field;
    .end local v11    # "loadingScreen":Ljava/lang/Class;
    :goto_9e
    return-void

    .line 59
    :catch_9f
    move-exception v8

    .line 60
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9e

    .line 81
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "client":Lcom/turn/ttorrent/client/Client;
    :catch_a4
    move-exception v8

    .line 82
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v8}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_9e

    .line 84
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :catch_a9
    move-exception v8

    .line 85
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_9e

    .line 87
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_ae
    move-exception v8

    .line 88
    .local v8, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v8}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_9e

    .line 121
    .end local v8    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v9    # "f_m_progressBar":Ljava/lang/reflect/Field;
    .restart local v10    # "f_m_progressText":Ljava/lang/reflect/Field;
    .restart local v11    # "loadingScreen":Ljava/lang/Class;
    :cond_b3
    :try_start_b3
    sget-object v0, Lru/killer666/hearthstone/DownloadSelector;->mainObb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 122
    sget-object v0, Lru/killer666/hearthstone/DownloadSelector;->patchObb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bd} :catch_be

    goto :goto_9e

    .line 123
    :catch_be
    move-exception v8

    .line 124
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9e
.end method


# virtual methods
.method doTask()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 131
    const-string v4, "HearthstoneWrapper"

    const-string v7, "Okay, let\'s start"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_9
    const-string v4, "com.blizzard.wtcg.hearthstone.LoadingScreen"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 136
    .local v1, "loadingScreen":Ljava/lang/Class;
    const-string v4, "m_mainObbPath"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 137
    .local v2, "m_mainObbPath":Ljava/lang/reflect/Field;
    const-string v4, "m_patchObbPath"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 139
    .local v3, "m_patchObbPath":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    new-instance v7, Ljava/io/File;

    sget-object v4, Lru/killer666/hearthstone/Wrapper;->loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v7, Lru/killer666/hearthstone/DownloadSelector;->mainObb:Ljava/io/File;

    .line 143
    new-instance v7, Ljava/io/File;

    sget-object v4, Lru/killer666/hearthstone/Wrapper;->loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v7, Lru/killer666/hearthstone/DownloadSelector;->patchObb:Ljava/io/File;

    .line 145
    sget-object v4, Lru/killer666/hearthstone/DownloadSelector;->mainObb:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_51

    sget-object v4, Lru/killer666/hearthstone/DownloadSelector;->patchObb:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_67

    :cond_51
    move v4, v5

    :goto_52
    sput-boolean v4, Lru/killer666/hearthstone/DownloadSelector;->isDownloadRequired:Z
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_54} :catch_69
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_54} :catch_6f
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_54} :catch_75

    .line 158
    const-string v4, "HearthstoneWrapper"

    const-string v6, "Showing dialog..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v6, Lru/killer666/hearthstone/DownloadSelector$4;

    invoke-direct {v6, p0}, Lru/killer666/hearthstone/DownloadSelector$4;-><init>(Lru/killer666/hearthstone/DownloadSelector;)V

    invoke-virtual {v4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v4, v5

    .line 180
    .end local v1    # "loadingScreen":Ljava/lang/Class;
    .end local v2    # "m_mainObbPath":Ljava/lang/reflect/Field;
    .end local v3    # "m_patchObbPath":Ljava/lang/reflect/Field;
    :goto_66
    return v4

    .restart local v1    # "loadingScreen":Ljava/lang/Class;
    .restart local v2    # "m_mainObbPath":Ljava/lang/reflect/Field;
    .restart local v3    # "m_patchObbPath":Ljava/lang/reflect/Field;
    :cond_67
    move v4, v6

    .line 145
    goto :goto_52

    .line 147
    .end local v1    # "loadingScreen":Ljava/lang/Class;
    .end local v2    # "m_mainObbPath":Ljava/lang/reflect/Field;
    .end local v3    # "m_patchObbPath":Ljava/lang/reflect/Field;
    :catch_69
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v4, v6

    .line 149
    goto :goto_66

    .line 150
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6f
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    move v4, v6

    .line 152
    goto :goto_66

    .line 153
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_75
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v4, v6

    .line 155
    goto :goto_66
.end method
