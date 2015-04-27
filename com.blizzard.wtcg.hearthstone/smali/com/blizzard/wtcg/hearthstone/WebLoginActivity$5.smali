.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$5;
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

.field private final synthetic val$finalState:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$5;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$5;->val$finalState:Ljava/lang/String;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$5;->val$finalState:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$5;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$7(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canGoBack"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "result":Ljava/lang/String;
    const-string v1, "WebLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebViewClient - UnitySendMessage(gameObject="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$5;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sGameObject:Ljava/lang/String;
    invoke-static {v3}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$8(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$5;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_sGameObject:Ljava/lang/String;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$8(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebViewDidFinishLoad"

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void

    .line 456
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
