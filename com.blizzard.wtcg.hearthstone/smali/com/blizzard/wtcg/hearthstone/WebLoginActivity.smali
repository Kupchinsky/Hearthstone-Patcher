.class public Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
.super Landroid/app/Dialog;
.source "WebLoginActivity.java"


# static fields
.field public static final STATUS_CLOSED:I = 0x0

.field public static final STATUS_ERROR:I = 0x5

.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_PROCESSING:I = 0x3

.field public static final STATUS_READY_TO_DISPLAY:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x4

.field private static final SUCCESS_URL:Ljava/lang/String; = "localhost:0"

.field private static final TAG:Ljava/lang/String; = "WebLoginActivity"

.field private static final TOKEN_PARAM:Ljava/lang/String; = "?ST="

.field private static s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;


# instance fields
.field _this:Landroid/app/Activity;

.field private m_bHasBreakingNews:Z

.field private m_bSetAsVisible:Z

.field private m_height:F

.field private m_isReady:Z

.field private m_layout:Landroid/widget/RelativeLayout;

.field private m_nStatus:I

.field private m_sBreakingNewsBody:Ljava/lang/String;

.field private m_sBreakingNewsTitle:Ljava/lang/String;

.field private m_sGameObject:Ljava/lang/String;

.field private m_sInitUrl:Ljava/lang/String;

.field private m_sWebToken:Ljava/lang/String;

.field m_tokenService:Lcom/blizzard/bma/service/ITokenService;

.field private final m_tokenServiceConnection:Landroid/content/ServiceConnection;

.field private m_webLoginInterface:Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;

.field private m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

.field private m_width:F

.field private m_x:F

.field private m_y:F

.field tokenLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 186
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FFFF)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initUrl"    # Ljava/lang/String;
    .param p3, "gameObject"    # Ljava/lang/String;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 190
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_isReady:Z

    .line 192
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_layout:Landroid/widget/RelativeLayout;

    .line 196
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sInitUrl:Ljava/lang/String;

    .line 197
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sGameObject:Ljava/lang/String;

    .line 199
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bHasBreakingNews:Z

    .line 200
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bSetAsVisible:Z

    .line 202
    const-string v8, ""

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sBreakingNewsTitle:Ljava/lang/String;

    .line 203
    const-string v8, ""

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sBreakingNewsBody:Ljava/lang/String;

    .line 205
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sWebToken:Ljava/lang/String;

    .line 739
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->tokenLock:Ljava/lang/Object;

    .line 742
    new-instance v8, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$1;

    invoke-direct {v8, p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$1;-><init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenServiceConnection:Landroid/content/ServiceConnection;

    .line 217
    iput p4, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_x:F

    .line 218
    move/from16 v0, p5

    iput v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_y:F

    .line 219
    move/from16 v0, p6

    iput v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_width:F

    .line 220
    move/from16 v0, p7

    iput v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_height:F

    .line 222
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->setCancelable(Z)V

    .line 225
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 226
    .local v2, "emptyDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    .line 231
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 232
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->requestWindowFeature(I)Z

    .line 234
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 235
    const/16 v9, 0x10

    .line 234
    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 237
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 252
    const-string v8, "WebLoginActivity"

    const-string v9, "onCreate()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sput-object p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 255
    sget-object v8, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->_this:Landroid/app/Activity;

    .line 257
    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sInitUrl:Ljava/lang/String;

    .line 258
    iput-object p3, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sGameObject:Ljava/lang/String;

    .line 260
    new-instance v8, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$2;

    sget-object v9, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v8, p0, v9}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$2;-><init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    .line 270
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->setBackgroundColor(I)V

    .line 271
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->setVerticalScrollBarEnabled(Z)V

    .line 274
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->setFocusable(Z)V

    .line 275
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->setFocusableInTouchMode(Z)V

    .line 278
    sget-object v8, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 277
    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 278
    const-string v9, "clearCookies"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 279
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->ClearWebViewCookies()V

    .line 282
    :cond_0
    sget-object v8, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 281
    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 282
    const-string v9, "clearUrlCache"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 283
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->ClearURLCache()V

    .line 285
    :cond_1
    const/4 v8, 0x1

    iput v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_nStatus:I

    .line 287
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->_this:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 288
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 289
    .local v5, "screenWidth":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 291
    .local v4, "screenHeight":I
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_layout:Landroid/widget/RelativeLayout;

    if-nez v8, :cond_2

    .line 293
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->_this:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_layout:Landroid/widget/RelativeLayout;

    .line 294
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 295
    const/4 v8, -0x1

    .line 294
    invoke-direct {v3, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_layout:Landroid/widget/RelativeLayout;

    const/16 v9, 0x33

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 297
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v8, v3}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_layout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 300
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_layout:Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 304
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 305
    iget v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_width:F

    float-to-int v8, v8

    iget v9, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_height:F

    float-to-int v9, v9

    .line 304
    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v7, "webViewLayout":Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_x:F

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 308
    iget v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_y:F

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 309
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_layout:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    invoke-virtual {v8, v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    new-instance v9, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$3;

    invoke-direct {v9, p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$3;-><init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V

    invoke-virtual {v8, v9}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 319
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    new-instance v9, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;

    invoke-direct {v9, p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;-><init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V

    invoke-virtual {v8, v9}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 418
    new-instance v8, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;

    invoke-direct {v8}, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;-><init>()V

    iput-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webLoginInterface:Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;

    .line 419
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    iget-object v9, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webLoginInterface:Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;

    const-string v10, "jsCallback"

    invoke-virtual {v8, v9, v10}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webLoginInterface:Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;

    invoke-virtual {v8, p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->SetStateListener(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V

    .line 422
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    invoke-virtual {v8}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 423
    .local v6, "webSettings":Landroid/webkit/WebSettings;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 424
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 425
    sget-object v8, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 426
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 436
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    iget-object v9, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sInitUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->loadUrl(Ljava/lang/String;)V

    .line 437
    iget-object v9, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    iget-boolean v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bSetAsVisible:Z

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v9, v8}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->setVisibility(I)V

    .line 439
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->TokenServiceBind()Z

    .line 441
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_isReady:Z

    .line 442
    return-void

    .line 437
    :cond_3
    const/16 v8, 0x8

    goto :goto_0
.end method

.method public static ClearURLCache()V
    .locals 3

    .prologue
    .line 557
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    if-nez v0, :cond_0

    .line 560
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "clearUrlCache"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    :goto_0
    return-void

    .line 565
    :cond_0
    const-string v0, "WebLoginActivity"

    const-string v1, "ClearingURLCache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->_this:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$8;

    invoke-direct {v1}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 575
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "clearUrlCache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static ClearWebViewCookies()V
    .locals 4

    .prologue
    .line 538
    sget-object v1, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    if-nez v1, :cond_0

    .line 541
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 542
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "clearCookies"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 553
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    :goto_0
    return-void

    .line 545
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_0
    const-string v1, "WebLoginActivity"

    const-string v2, "ClearingWebViewCookies"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v1, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iget-object v1, v1, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->_this:Landroid/app/Activity;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 547
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 548
    .restart local v0    # "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 549
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 551
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 552
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "clearCookies"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static DeleteStoredLoginToken()V
    .locals 3

    .prologue
    .line 717
    const-string v0, "WebLoginActivity"

    const-string v1, "DeleteStoredLoginToken "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 720
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loginToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 721
    return-void
.end method

.method public static Destroy()V
    .locals 2

    .prologue
    .line 666
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    if-eqz v0, :cond_0

    .line 668
    const-string v0, "WebLoginActivity"

    const-string v1, "static Destroying.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->dismiss()V

    .line 670
    const/4 v0, 0x0

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 672
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$11;

    invoke-direct {v1}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 677
    :cond_0
    return-void
.end method

.method public static GetStoredLoginToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 702
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 701
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 702
    const-string v2, "loginToken"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "loginToken":Ljava/lang/String;
    const-string v1, "WebLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetStoredLoginToken "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-object v0
.end method

.method public static GetWebViewStatus()I
    .locals 1

    .prologue
    .line 681
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    if-eqz v0, :cond_0

    .line 683
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->GetWebViewActivityStatus()I

    move-result v0

    .line 686
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Hide()V
    .locals 2

    .prologue
    .line 638
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    if-eqz v0, :cond_0

    .line 639
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->ShowWebView(Z)V

    .line 640
    :cond_0
    return-void
.end method

.method public static Init(Ljava/lang/String;FFFFLjava/lang/String;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "gameObject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;-><init>(Ljava/lang/String;Ljava/lang/String;FFFF)V

    .line 661
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 662
    return-void
.end method

.method public static IsWebLoginActivityReady()Z
    .locals 1

    .prologue
    .line 692
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iget-boolean v0, v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_isReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SetStoredLoginToken(Ljava/lang/String;)Z
    .locals 3
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 709
    const-string v0, "WebLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetStoredLoginToken "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 712
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "loginToken"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 710
    return v0
.end method

.method public static SetWebViewCountryCodeCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "country_code"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 727
    return-void
.end method

.method public static Show()V
    .locals 2

    .prologue
    .line 632
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    if-eqz v0, :cond_0

    .line 633
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->ShowWebView(Z)V

    .line 634
    :cond_0
    return-void
.end method

.method private ShowBreakingNews()V
    .locals 5

    .prologue
    .line 596
    const-string v1, "WebLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showing breaking news in webview "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sBreakingNewsBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v1, "javascript:( function () { var result=InfoPanel.toggle(true, \"%s\", \"%s\"); } ) ()"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 599
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sBreakingNewsTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sBreakingNewsBody:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 598
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "setBreakingNewsCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    invoke-virtual {v1, v0}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->loadUrl(Ljava/lang/String;)V

    .line 602
    :cond_0
    return-void
.end method

.method private TokenServiceBind()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 767
    const-string v2, "WebLoginActivity"

    const-string v3, "TokenServiceBind"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->tokenLock:Ljava/lang/Object;

    monitor-enter v3

    .line 771
    :try_start_0
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;

    if-eqz v2, :cond_0

    .line 773
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :goto_0
    return v1

    .line 776
    :cond_0
    const/4 v1, 0x0

    .line 779
    .local v1, "serviceBindSuccess":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/blizzard/bma/service/ITokenService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenServiceConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 786
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 769
    .end local v1    # "serviceBindSuccess":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 781
    .restart local v1    # "serviceBindSuccess":Z
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "WebLoginActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Binding to authenticator failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private TokenServiceGetCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 816
    const-string v1, "WebLoginActivity"

    const-string v2, "TokenServiceGetCode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->tokenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 824
    :try_start_1
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;

    invoke-interface {v1}, Lcom/blizzard/bma/service/ITokenService;->getToken()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    .line 836
    :goto_0
    return-object v1

    .line 826
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WebLoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get code from authenticator failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_0

    .line 833
    :cond_0
    const-string v1, "WebLoginActivity"

    const-string v3, "m_tokenService = null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private TokenServiceUnbind()V
    .locals 5

    .prologue
    .line 792
    const-string v1, "WebLoginActivity"

    const-string v2, "TokenServiceUnbind"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->tokenLock:Ljava/lang/Object;

    monitor-enter v2

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 800
    :try_start_1
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 808
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;

    .line 794
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 812
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "WebLoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unbinding to authenticator failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 808
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;

    goto :goto_0

    .line 794
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 807
    :catchall_1
    move-exception v1

    .line 808
    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;

    .line 809
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sWebToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;I)V
    .locals 0

    .prologue
    .line 198
    iput p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_nStatus:I

    return-void
.end method

.method static synthetic access$10(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bSetAsVisible:Z

    return v0
.end method

.method static synthetic access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    return-object v0
.end method

.method static synthetic access$12(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V
    .locals 0

    .prologue
    .line 174
    sput-object p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    return-void
.end method

.method static synthetic access$13(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_x:F

    return v0
.end method

.method static synthetic access$14(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_y:F

    return v0
.end method

.method static synthetic access$15(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_width:F

    return v0
.end method

.method static synthetic access$16(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)F
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_height:F

    return v0
.end method

.method static synthetic access$2(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sWebToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webLoginInterface:Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;

    return-object v0
.end method

.method static synthetic access$4(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bHasBreakingNews:Z

    return v0
.end method

.method static synthetic access$5(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->ShowBreakingNews()V

    return-void
.end method

.method static synthetic access$6(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_nStatus:I

    return v0
.end method

.method static synthetic access$7(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sGameObject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->TokenServiceGetCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    .locals 1

    .prologue
    .line 731
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    return-object v0
.end method


# virtual methods
.method public GetWebViewActivityStatus()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_nStatus:I

    return v0
.end method

.method public GetWebViewLoginCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 581
    const-string v0, "WebLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetWebViewLoginCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sWebToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sWebToken:Ljava/lang/String;

    return-object v0
.end method

.method public GoBack()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->_this:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$9;

    invoke-direct {v1, p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$9;-><init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 623
    return-void
.end method

.method public SetBreakingNews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "localized_title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "gameObjectName"    # Ljava/lang/String;

    .prologue
    .line 588
    const-string v0, "WebLoginActivity"

    const-string v1, "setting breaking news..?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bHasBreakingNews:Z

    .line 590
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sBreakingNewsTitle:Ljava/lang/String;

    .line 591
    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sBreakingNewsBody:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public SetRegionSelectVisualState(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 606
    const-string v0, "WebLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "region select visual state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    iput-boolean p1, v0, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->regionSelectVisible:Z

    .line 609
    :cond_0
    return-void
.end method

.method public ShowWebView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bSetAsVisible:Z

    .line 511
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$7;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$7;-><init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V

    .line 533
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method

.method public StateReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    if-nez v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    move-object v0, p1

    .line 451
    .local v0, "finalState":Ljava/lang/String;
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$5;-><init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;Ljava/lang/String;)V

    .line 465
    .local v1, "r":Ljava/lang/Runnable;
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 467
    const-string v2, "STATE_AUTHENTICATOR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    const-string v2, "WebLoginActivity"

    const-string v3, "WebViewClient - Authenticator page detected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->_this:Landroid/app/Activity;

    new-instance v3, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$6;

    invoke-direct {v3, p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$6;-><init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->TokenServiceUnbind()V

    .line 500
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 501
    return-void
.end method

.method public getGameObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sGameObject:Ljava/lang/String;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 490
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 491
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    iget-boolean v0, v0, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->regionSelectVisible:Z

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
