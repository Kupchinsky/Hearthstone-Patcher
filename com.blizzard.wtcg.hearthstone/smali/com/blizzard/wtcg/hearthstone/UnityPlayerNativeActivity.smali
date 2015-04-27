.class public Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;
.super Landroid/app/NativeActivity;
.source "UnityPlayerNativeActivity.java"


# instance fields
.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 21
    invoke-virtual {p0, v2}, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->requestWindowFeature(I)Z

    .line 22
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 25
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->setTheme(I)V

    .line 26
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 28
    new-instance v0, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 29
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hide_status_bar"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 41
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 42
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 48
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 56
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 69
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 70
    return-void
.end method
