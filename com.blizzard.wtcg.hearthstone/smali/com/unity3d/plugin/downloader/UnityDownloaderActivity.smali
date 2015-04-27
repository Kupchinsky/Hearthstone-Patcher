.class public Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;
.super Landroid/app/Activity;
.source "UnityDownloaderActivity.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OBB"

.field public static s_instance:Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;

.field public static s_isDone:Z


# instance fields
.field private mAverageSpeed:Landroid/widget/TextView;

.field private mCellMessage:Landroid/view/View;

.field private mDashboard:Landroid/view/View;

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mPB:Landroid/widget/ProgressBar;

.field private mPauseButton:Landroid/widget/Button;

.field private mProgressFraction:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field private mState:I

.field private mStatePaused:Z

.field private mStatusText:Landroid/widget/TextView;

.field private mTimeRemaining:Landroid/widget/TextView;

.field private mWiFiSettingsButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->s_instance:Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->s_isDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initializeDownloadUI()V
    .locals 2

    .prologue
    .line 108
    const-class v1, Lcom/unity3d/plugin/downloader/UnityDownloaderService;

    invoke-static {p0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v1

    iput-object v1, p0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 112
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "f":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->setContentView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method private setButtonPausedState(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 190
    return-void
.end method

.method private setState(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 182
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v6, 0x1030055

    invoke-virtual {p0, v6}, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->setTheme(I)V

    .line 52
    sput-object p0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->s_instance:Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;

    .line 54
    invoke-virtual {p0, v8}, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->requestWindowFeature(I)Z

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, "launchIntent":Landroid/content/Intent;
    const-string v6, "unityplayer.Activity"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 59
    .local v3, "mainActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v1, "intentToLaunchMainActivityFromNotification":Landroid/content/Intent;
    const/high16 v6, 0x10200000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {p0, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 67
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-class v6, Lcom/unity3d/plugin/downloader/UnityDownloaderService;

    invoke-static {p0, v4, v6}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v5

    .line 69
    .local v5, "startResult":I
    if-eqz v5, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->initializeDownloadUI()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .end local v1    # "intentToLaunchMainActivityFromNotification":Landroid/content/Intent;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v3    # "mainActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "startResult":I
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "OBB"

    const-string v7, "Cannot find own package! MAYDAY!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 81
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    sput-boolean v8, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->s_isDone:Z

    .line 82
    invoke-virtual {p0}, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->finish()V

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "OBB"

    const-string v7, "Cannot find own package! MAYDAY!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 4
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .prologue
    .line 293
    const-string v0, "OBB"

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

    .line 294
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->setState(I)V

    .line 200
    const/4 v3, 0x1

    .line 201
    .local v3, "showDashboard":Z
    const/4 v2, 0x0

    .line 204
    .local v2, "showCellMessage":Z
    packed-switch p1, :pswitch_data_0

    .line 255
    :pswitch_0
    const/4 v1, 0x1

    .line 256
    .local v1, "paused":Z
    const/4 v0, 0x1

    .line 257
    .local v0, "indeterminate":Z
    const/4 v3, 0x1

    .line 272
    :goto_0
    return-void

    .line 208
    .end local v0    # "indeterminate":Z
    .end local v1    # "paused":Z
    :pswitch_1
    const/4 v1, 0x0

    .line 209
    .restart local v1    # "paused":Z
    const/4 v0, 0x1

    .line 210
    .restart local v0    # "indeterminate":Z
    goto :goto_0

    .line 213
    .end local v0    # "indeterminate":Z
    .end local v1    # "paused":Z
    :pswitch_2
    const/4 v3, 0x1

    .line 214
    const/4 v1, 0x0

    .line 215
    .restart local v1    # "paused":Z
    const/4 v0, 0x1

    .line 216
    .restart local v0    # "indeterminate":Z
    goto :goto_0

    .line 218
    .end local v0    # "indeterminate":Z
    .end local v1    # "paused":Z
    :pswitch_3
    const/4 v1, 0x0

    .line 219
    .restart local v1    # "paused":Z
    const/4 v3, 0x1

    .line 220
    const/4 v0, 0x0

    .line 221
    .restart local v0    # "indeterminate":Z
    goto :goto_0

    .line 227
    .end local v0    # "indeterminate":Z
    .end local v1    # "paused":Z
    :pswitch_4
    const/4 v1, 0x1

    .line 228
    .restart local v1    # "paused":Z
    const/4 v3, 0x0

    .line 229
    const/4 v0, 0x0

    .line 230
    .restart local v0    # "indeterminate":Z
    goto :goto_0

    .line 233
    .end local v0    # "indeterminate":Z
    .end local v1    # "paused":Z
    :pswitch_5
    const/4 v3, 0x0

    .line 234
    const/4 v1, 0x1

    .line 235
    .restart local v1    # "paused":Z
    const/4 v0, 0x0

    .line 236
    .restart local v0    # "indeterminate":Z
    const/4 v2, 0x1

    .line 237
    goto :goto_0

    .line 239
    .end local v0    # "indeterminate":Z
    .end local v1    # "paused":Z
    :pswitch_6
    const/4 v1, 0x1

    .line 240
    .restart local v1    # "paused":Z
    const/4 v0, 0x0

    .line 241
    .restart local v0    # "indeterminate":Z
    goto :goto_0

    .line 244
    .end local v0    # "indeterminate":Z
    .end local v1    # "paused":Z
    :pswitch_7
    const/4 v1, 0x1

    .line 245
    .restart local v1    # "paused":Z
    const/4 v0, 0x0

    .line 246
    .restart local v0    # "indeterminate":Z
    goto :goto_0

    .line 248
    .end local v0    # "indeterminate":Z
    .end local v1    # "paused":Z
    :pswitch_8
    const/4 v3, 0x0

    .line 249
    const/4 v1, 0x0

    .line 250
    .restart local v1    # "paused":Z
    const/4 v0, 0x0

    .line 251
    .restart local v0    # "indeterminate":Z
    const/4 v4, 0x1

    sput-boolean v4, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->s_isDone:Z

    .line 252
    invoke-virtual {p0}, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->finish()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 93
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 194
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 195
    iget-object v0, p0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->mRemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 196
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/unity3d/plugin/downloader/UnityDownloaderActivity;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 105
    return-void
.end method
