.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$8;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->ClearURLCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 570
    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_webView:Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$7(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->clearCache(Z)V

    .line 571
    return-void
.end method
