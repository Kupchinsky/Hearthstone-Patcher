.class public Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;
.super Ljava/lang/Object;
.source "ImmersiveModeSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmersiveModeSupport"

.field private static _this:Landroid/app/Activity;

.field private static mRestoreImmersiveModeHandler:Landroid/os/Handler;

.field private static restoreImmersiveModeRunnable:Ljava/lang/Runnable;

.field public static s_supported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->s_supported:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->mRestoreImmersiveModeHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$1;

    invoke-direct {v0}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$1;-><init>()V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreImmersiveModeRunnable:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisableFullscreen()V
    .locals 3

    .prologue
    .line 147
    sget-boolean v1, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->s_supported:Z

    if-nez v1, :cond_0

    .line 153
    .local v0, "w":Landroid/view/Window;
    :goto_0
    return-void

    .line 149
    .end local v0    # "w":Landroid/view/Window;
    :cond_0
    const-string v1, "ImmersiveModeSupport"

    const-string v2, "disabling fullscreen mode!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 151
    .restart local v0    # "w":Landroid/view/Window;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 152
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public static EnableFullscreen()V
    .locals 4

    .prologue
    .line 131
    sget-boolean v2, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->s_supported:Z

    if-nez v2, :cond_0

    .line 143
    .local v0, "actionBar":Landroid/app/ActionBar;
    .local v1, "w":Landroid/view/Window;
    :goto_0
    return-void

    .line 133
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "w":Landroid/view/Window;
    :cond_0
    const-string v2, "ImmersiveModeSupport"

    const-string v3, "enabling fullscreen mode!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 135
    .restart local v1    # "w":Landroid/view/Window;
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 136
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 138
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 139
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 141
    :cond_1
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBarsDelayed()V

    .line 142
    const/16 v2, 0x7d0

    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBarsDelayed(I)V

    goto :goto_0
.end method

.method static Init(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/high16 v5, 0x8000000

    const/high16 v4, 0x4000000

    .line 24
    sput-object p0, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->_this:Landroid/app/Activity;

    .line 27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 29
    const-string v2, "ImmersiveModeSupport"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Disabling Immersive mode, Android version too old: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v2, 0x0

    sput-boolean v2, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->s_supported:Z

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    sget-boolean v2, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->s_supported:Z

    if-eqz v2, :cond_0

    .line 37
    sget-object v2, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->_this:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 38
    .local v1, "w":Landroid/view/Window;
    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 41
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 44
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "decorView":Landroid/view/View;
    new-instance v2, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$2;

    invoke-direct {v2}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 55
    new-instance v2, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$3;

    invoke-direct {v2}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$3;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 65
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBars()V

    goto :goto_0
.end method

.method public static restoreTransparentBars()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 100
    sget-object v3, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->_this:Landroid/app/Activity;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->s_supported:Z

    if-nez v3, :cond_1

    .line 127
    .local v2, "w":Landroid/view/Window;
    :cond_0
    :goto_0
    return-void

    .line 106
    .end local v2    # "w":Landroid/view/Window;
    :cond_1
    :try_start_0
    const-string v3, "ImmersiveModeSupport"

    const-string v4, "Restoring transparent bars.."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v3, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->_this:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 109
    .restart local v2    # "w":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 110
    const/16 v4, 0x1307

    .line 109
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 117
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 118
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 120
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ImmersiveModeSupport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to restore transparent bars "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static restoreTransparentBarsDelayed()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x1f4

    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBarsDelayed(I)V

    return-void
.end method

.method public static restoreTransparentBarsDelayed(I)V
    .locals 4
    .param p0, "delay"    # I

    .prologue
    .line 93
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBars()V

    .line 94
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->mRestoreImmersiveModeHandler:Landroid/os/Handler;

    sget-object v1, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreImmersiveModeRunnable:Ljava/lang/Runnable;

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method

.method public static restoreTransparentBarsOnUiThread()V
    .locals 3

    .prologue
    .line 80
    const-string v1, "ImmersiveModeSupport"

    const-string v2, "restoreTransparentBarsOnUiThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$4;

    invoke-direct {v0}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$4;-><init>()V

    .line 85
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
