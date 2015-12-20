.class Lru/killer666/hearthstone/UpdateChecker$1$1$1;
.super Landroid/content/BroadcastReceiver;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/UpdateChecker$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/killer666/hearthstone/UpdateChecker$1$1;

.field final synthetic val$targetFilename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker$1$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$2"    # Lru/killer666/hearthstone/UpdateChecker$1$1;

    .prologue
    .line 157
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1$1$1;->this$2:Lru/killer666/hearthstone/UpdateChecker$1$1;

    iput-object p2, p0, Lru/killer666/hearthstone/UpdateChecker$1$1$1;->val$targetFilename:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 160
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lru/killer666/hearthstone/UpdateChecker$1$1$1;->val$targetFilename:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "newIntent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1$1$1;->this$2:Lru/killer666/hearthstone/UpdateChecker$1$1;

    iget-object v2, v2, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iget-object v2, v2, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 170
    return-void
.end method
