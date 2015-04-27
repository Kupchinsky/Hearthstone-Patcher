.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$2;
.super Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;
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
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Activity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$2;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 260
    invoke-direct {p0, p2}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v0, "WebLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebView - loadUrl(url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-super {p0, p1}, Lcom/blizzard/wtcg/hearthstone/PassthroughWebView;->loadUrl(Ljava/lang/String;)V

    .line 267
    return-void
.end method
