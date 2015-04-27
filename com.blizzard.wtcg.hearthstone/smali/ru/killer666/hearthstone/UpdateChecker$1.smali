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

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/Activity;Lru/killer666/hearthstone/UpdateChecker$CustomInfo;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lru/killer666/hearthstone/UpdateChecker$1;)Lru/killer666/hearthstone/UpdateChecker;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u041d\u0430\u0439\u0434\u0435\u043d\u0430 \u043d\u043e\u0432\u0430\u044f \u0432\u0435\u0440\u0441\u0438\u044f "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v2}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v2}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u0441\u0431\u043e\u0440\u043a\u0430 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v2}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionBuild()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string v2, ")! \u041e\u0431\u043d\u043e\u0432\u0438\u0442\u044c?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    const-string v1, "Hearthstone"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    const-string v1, "\u0414\u0430"

    new-instance v2, Lru/killer666/hearthstone/UpdateChecker$1$1;

    iget-object v3, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    iget-object v4, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v4}, Lru/killer666/hearthstone/UpdateChecker$1$1;-><init>(Lru/killer666/hearthstone/UpdateChecker$1;Lru/killer666/hearthstone/UpdateChecker$CustomInfo;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    const-string v1, "\u041d\u0435\u0442"

    new-instance v2, Lru/killer666/hearthstone/UpdateChecker$1$2;

    invoke-direct {v2, p0}, Lru/killer666/hearthstone/UpdateChecker$1$2;-><init>(Lru/killer666/hearthstone/UpdateChecker$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 196
    return-void
.end method
