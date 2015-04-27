.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$3;
.super Landroid/webkit/WebChromeClient;
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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$3;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 311
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2
    .param p1, "cm"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 315
    const-string v0, "WebLoginActivity"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x1

    return v0
.end method
