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
    .line 114
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0430\u0439\u0434\u0435\u043d\u0430 \u043d\u043e\u0432\u0430\u044f \u0432\u0435\u0440\u0441\u0438\u044f "

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

    move-result-object v2

    iget-object v1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v1}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionBuild()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", \u0441\u0431\u043e\u0440\u043a\u0430 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v3}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionBuild()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "! \u041e\u0431\u043d\u043e\u0432\u0438\u0442\u044c?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    const-string v1, "Hearthstone"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 122
    const-string v1, "\u0414\u0430"

    new-instance v2, Lru/killer666/hearthstone/UpdateChecker$1$1;

    invoke-direct {v2, p0}, Lru/killer666/hearthstone/UpdateChecker$1$1;-><init>(Lru/killer666/hearthstone/UpdateChecker$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    const-string v1, "\u041d\u0435\u0442"

    new-instance v2, Lru/killer666/hearthstone/UpdateChecker$1$2;

    invoke-direct {v2, p0}, Lru/killer666/hearthstone/UpdateChecker$1$2;-><init>(Lru/killer666/hearthstone/UpdateChecker$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 194
    return-void

    .line 118
    :cond_8a
    const-string v1, ""

    goto :goto_54
.end method
