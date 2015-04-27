.class public Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;
.super Landroid/app/NativeActivity;
.source "HearthstoneNativeActivity.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "HearthstoneNativeActivity"

.field public static s_UnityDownloaderState:I

.field public static s_quitClick:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private m_loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

.field private m_minSpecCheck:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 159
    const-string v0, "HearthstoneNativeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v0, "HearthstoneNativeActivity"

    const-string v1, "onActivityResult handled by GooglePlayIabPlugin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 207
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    .line 42
    invoke-virtual {p0, v3}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-class v1, Lcom/unity3d/plugin/downloader/UnityDownloaderService;

    invoke-static {p0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v1

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 47
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 48
    const v1, 0x1030007

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->setTheme(I)V

    .line 49
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 51
    new-instance v1, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 52
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hide_status_bar"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 57
    :cond_0
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v1

    const-string v2, "GLOBAL"

    invoke-virtual {v1, v2}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->loadStringsFile(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v1

    const-string v2, "GLUE"

    invoke-virtual {v1, v2}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->loadStringsFile(Ljava/lang/String;)V

    .line 60
    const-string v1, "HearthstoneNativeActivity"

    const-string v2, "onCreate.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    .line 63
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, v2}, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_minSpecCheck:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

    .line 64
    invoke-static {p0}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->Init(Landroid/app/Activity;)V

    .line 66
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$1;

    invoke-direct {v1, p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$1;-><init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)V

    sput-object v1, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    .line 72
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$2;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$2;-><init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)V

    .line 79
    .local v0, "continueClick":Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_minSpecCheck:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

    sget-object v2, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->showMinSpecWarning(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v1}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->Start()V

    .line 82
    :cond_1
    const-string v1, "HearthstoneNativeActivity"

    const-string v2, "done creating.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 199
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 200
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 4
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 189
    const-string v0, "HearthstoneNativeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Downloader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 183
    const-string v0, "HearthstoneNativeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Downloader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sput p1, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    .line 185
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/NativeActivity;->onLowMemory()V

    .line 152
    const-string v0, "SceneMgr"

    const-string v1, "LowMemoryWarning"

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_CancelInput()V

    .line 93
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->Hide()V

    .line 95
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 98
    :cond_1
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 100
    const-string v0, "HearthstoneNativeActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 109
    :cond_1
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 111
    const-string v1, "HearthstoneNativeActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 118
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$3;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$3;-><init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)V

    .line 127
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 177
    const-string v0, "HearthstoneNativeActivity"

    const-string v1, "Unity Downloader service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 179
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 180
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 133
    const-string v0, "HearthstoneNativeActivity"

    const-string v1, "on start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "HearthstoneNativeActivity"

    const-string v1, "on stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 213
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 214
    return-void
.end method
