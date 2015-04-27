.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;
.super Landroid/webkit/WebViewClient;
.source "WebLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 319
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string v0, "WebLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebViewClient - onPageFinished(url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 400
    const-string v2, ")  - Breaking news ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bHasBreakingNews:Z
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$4(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bHasBreakingNews:Z
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$4(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # invokes: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->ShowBreakingNews()V
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$5(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_nStatus:I
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$6(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 408
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$1(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;I)V

    .line 411
    :cond_1
    const-string v0, "javascript:( function () { var result = document.querySelectorAll(\'a[rel]\'); var urlMapping=[]; for(var i=0;i<result.length;++i) { urlMapping[2*i]=result[i].href;urlMapping[2*i+1]=result[i].rel } window.jsCallback.relCallback(urlMapping); } ) ()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 414
    const-string v0, "javascript:( function () { var result = window.getExternalUrls(); window.jsCallback.relExternalCallback(result); } ) ()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 415
    const-string v0, "javascript:( function () { var result = document.querySelector(\"[data-embedded-state]\").getAttribute(\"data-embedded-state\").trim(); window.jsCallback.stateCallback(result); } ) ()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string v0, "WebLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebViewClient - onReceivedError(errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    const-string v2, " failingUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webLoginInterface:Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$3(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->getRelStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "relStatus":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "external"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    new-instance v0, Landroid/content/Intent;

    .line 366
    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 365
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 367
    .local v0, "externalBrowserIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->_this:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 368
    const/4 v2, 0x0

    .line 370
    .end local v0    # "externalBrowserIntent":Landroid/content/Intent;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 324
    const-string v5, "WebLoginActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WebViewClient - shouldOverrideUrlLoading (url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 324
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v5, "localhost:0"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    const-string v4, "?ST="

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 329
    .local v1, "index":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 331
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 332
    const-string v5, "?ST="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    .line 331
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$0(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;Ljava/lang/String;)V

    .line 333
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$1(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;I)V

    .line 334
    const-string v4, "WebLoginActivity"

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "WebViewClient - shouldOverrideUrlLoading (token="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sWebToken:Ljava/lang/String;
    invoke-static {v6}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$2(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v1    # "index":I
    :goto_0
    return v3

    .line 339
    .restart local v1    # "index":I
    :cond_0
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$1(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;I)V

    goto :goto_0

    .line 344
    .end local v1    # "index":I
    :cond_1
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webLoginInterface:Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;
    invoke-static {v5}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$3(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->getRelStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "relStatus":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v5, "internal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    .line 347
    goto :goto_0

    .line 348
    :cond_3
    const-string v5, "external"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 350
    new-instance v0, Landroid/content/Intent;

    .line 351
    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 350
    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    .local v0, "externalBrowserIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$4;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iget-object v4, v4, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->_this:Landroid/app/Activity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "externalBrowserIntent":Landroid/content/Intent;
    :cond_4
    move v3, v4

    .line 356
    goto :goto_0
.end method
