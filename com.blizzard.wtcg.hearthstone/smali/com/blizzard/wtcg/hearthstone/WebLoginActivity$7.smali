.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$7;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->ShowWebView(Z)V
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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$7;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 516
    const-string v0, "WebLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting WebView Visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$7;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bSetAsVisible:Z
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$10(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$7;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_bSetAsVisible:Z
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$10(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$7(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->setVisibility(I)V

    .line 523
    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->show()V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$7(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->setVisibility(I)V

    .line 528
    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->hide()V

    goto :goto_0
.end method
