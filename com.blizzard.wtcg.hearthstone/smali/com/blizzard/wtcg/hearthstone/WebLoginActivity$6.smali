.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$6;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->StateReceived(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$6;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 475
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$6;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # invokes: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->TokenServiceGetCode()Ljava/lang/String;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$9(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 478
    const-string v2, "javascript:( function () { var result = AppEmbeddedAuth.fill(\'%s\'); } ) ()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "authenticatorJavaScriptQuery":Ljava/lang/String;
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$6;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$7(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$6;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$7(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->loadUrl(Ljava/lang/String;)V

    .line 482
    .end local v0    # "authenticatorJavaScriptQuery":Ljava/lang/String;
    :cond_0
    return-void
.end method
