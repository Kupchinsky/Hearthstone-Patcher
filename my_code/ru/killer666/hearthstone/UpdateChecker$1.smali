.class Lru/killer666/hearthstone/UpdateChecker$1;
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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/Activity;Lru/killer666/hearthstone/UpdateChecker$CustomInfo;)V
    .registers 4

    .prologue
    .line 151
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v2}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v2}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v2}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionBuild()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")! \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    const-string v1, "Hearthstone"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    const-string v1, "\ufffd\ufffd"

    new-instance v2, Lru/killer666/hearthstone/UpdateChecker$1$1;

    invoke-direct {v2, p0}, Lru/killer666/hearthstone/UpdateChecker$1$1;-><init>(Lru/killer666/hearthstone/UpdateChecker$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    const-string v1, "\ufffd\ufffd\ufffd"

    new-instance v2, Lru/killer666/hearthstone/UpdateChecker$1$2;

    invoke-direct {v2, p0}, Lru/killer666/hearthstone/UpdateChecker$1$2;-><init>(Lru/killer666/hearthstone/UpdateChecker$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 240
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 241
    return-void
.end method
