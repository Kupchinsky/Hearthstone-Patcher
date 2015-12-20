.class Lru/killer666/hearthstone/UpdateChecker$2;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/UpdateChecker;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/UpdateChecker;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$response:Lorg/apache/http/HttpResponse;

.field final synthetic val$xposedFile:Lru/killer666/hearthstone/UpdateChecker$XposedFile;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/ProgressDialog;Lorg/apache/http/HttpResponse;Lru/killer666/hearthstone/UpdateChecker$XposedFile;)V
    .registers 5
    .param p1, "this$0"    # Lru/killer666/hearthstone/UpdateChecker;

    .prologue
    .line 188
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$2;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/UpdateChecker$2;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lru/killer666/hearthstone/UpdateChecker$2;->val$response:Lorg/apache/http/HttpResponse;

    iput-object p4, p0, Lru/killer666/hearthstone/UpdateChecker$2;->val$xposedFile:Lru/killer666/hearthstone/UpdateChecker$XposedFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$2;->val$progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lru/killer666/hearthstone/UpdateChecker$2;->val$response:Lorg/apache/http/HttpResponse;

    const-string v2, "Content-Length"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 192
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$2;->val$progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 193
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$2;->val$progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lru/killer666/hearthstone/UpdateChecker$2;->val$xposedFile:Lru/killer666/hearthstone/UpdateChecker$XposedFile;

    invoke-virtual {v1}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method
