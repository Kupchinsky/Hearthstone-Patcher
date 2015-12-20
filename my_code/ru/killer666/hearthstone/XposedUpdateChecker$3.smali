.class Lru/killer666/hearthstone/XposedUpdateChecker$3;
.super Ljava/lang/Object;
.source "XposedUpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/XposedUpdateChecker;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/XposedUpdateChecker;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$response:Lorg/apache/http/HttpResponse;

.field final synthetic val$xposedAsset:Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/XposedUpdateChecker;Landroid/app/ProgressDialog;Lorg/apache/http/HttpResponse;Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;)V
    .registers 5
    .param p1, "this$0"    # Lru/killer666/hearthstone/XposedUpdateChecker;

    .prologue
    .line 187
    iput-object p1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->this$0:Lru/killer666/hearthstone/XposedUpdateChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->val$response:Lorg/apache/http/HttpResponse;

    iput-object p4, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->val$xposedAsset:Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 191
    :try_start_1
    iget-object v1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->val$progressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->val$response:Lorg/apache/http/HttpResponse;

    const-string v3, "Content-Length"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_16} :catch_27

    .line 197
    :goto_16
    iget-object v1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 198
    iget-object v1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->val$progressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->val$xposedAsset:Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;

    invoke-virtual {v2}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    return-void

    .line 192
    :catch_27
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "HearthstoneWrapper"

    const-string v2, "Exception thrown during parsing Content-Length header"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    iget-object v1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_16
.end method
