.class Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
.super Landroid/webkit/WebView;
.source "WebLoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WebLoginActivity"


# instance fields
.field private m_activity:Landroid/app/Activity;

.field public regionSelectVisible:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 123
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->m_activity:Landroid/app/Activity;

    .line 124
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 157
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 164
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->getInstance()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->getGameObject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewBackButtonPressed"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 146
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 148
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 130
    .local v2, "viewMatrix":Landroid/graphics/Matrix;
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 131
    .local v0, "coords":[I
    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->getLocationOnScreen([I)V

    .line 132
    aget v4, v0, v3

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 133
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 134
    .local v1, "unityEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 135
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 137
    iget-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->regionSelectVisible:Z

    if-eqz v4, :cond_0

    .line 139
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method
