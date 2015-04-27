.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$9;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->GoBack()V
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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$9;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$9;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$7(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$9;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$7(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->goBack()V

    .line 621
    :cond_0
    return-void
.end method
