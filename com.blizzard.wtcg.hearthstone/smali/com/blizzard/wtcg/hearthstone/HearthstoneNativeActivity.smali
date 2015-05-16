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
    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 228
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
    .line 165
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

    .line 167
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    :goto_0
    return-void

    .line 173
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
    .line 211
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    .line 44
    invoke-virtual {p0, v3}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->requestWindowFeature(I)Z

    .line 45
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-class v1, Lcom/unity3d/plugin/downloader/UnityDownloaderService;

    invoke-static {p0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v1

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 49
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 50
    const v1, 0x1030007

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->setTheme(I)V

    .line 51
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 53
    new-instance v1, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 54
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hide_status_bar"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 59
    :cond_0
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v1

    const-string v2, "GLOBAL"

    invoke-virtual {v1, v2}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->loadStringsFile(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v1

    const-string v2, "GLUE"

    invoke-virtual {v1, v2}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->loadStringsFile(Ljava/lang/String;)V

    .line 62
    const-string v1, "HearthstoneNativeActivity"

    const-string v2, "onCreate.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    .line 65
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v1, v2}, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_minSpecCheck:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

    .line 66
    invoke-static {p0}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->Init(Landroid/app/Activity;)V

    .line 68
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$1;

    invoke-direct {v1, p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$1;-><init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)V

    sput-object v1, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$2;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$2;-><init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)V

    .line 81
    .local v0, "continueClick":Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_minSpecCheck:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

    sget-object v2, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_quitClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->showMinSpecWarning(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    invoke-virtual {v1}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->Start()V

    .line 84
    :cond_1
    const-string v1, "HearthstoneNativeActivity"

    const-string v2, "done creating.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 205
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 206
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 4
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 195
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

    .line 196
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 189
    const-string v0, "HearthstoneNativeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unity Downloader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sput p1, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->s_UnityDownloaderState:I

    .line 191
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 235
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
    .line 233
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
    .line 232
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/NativeActivity;->onLowMemory()V

    .line 158
    const-string v0, "SceneMgr"

    const-string v1, "LowMemoryWarning"

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_CancelInput()V

    .line 95
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->Hide()V

    .line 97
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 100
    :cond_1
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 102
    const-string v0, "HearthstoneNativeActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 111
    :cond_1
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 113
    const-string v1, "HearthstoneNativeActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 120
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$3;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$3;-><init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)V

    .line 129
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 183
    const-string v0, "HearthstoneNativeActivity"

    const-string v1, "Unity Downloader service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 185
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 186
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 134
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 135
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    sput-boolean v1, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_isMusicPlaying:Z

    .line 136
    const-string v1, "HearthstoneNativeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is music playing ?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_isMusicPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 139
    const-string v1, "HearthstoneNativeActivity"

    const-string v2, "on start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "HearthstoneNativeActivity"

    const-string v1, "on stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 146
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 219
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 220
    return-void
.end method
