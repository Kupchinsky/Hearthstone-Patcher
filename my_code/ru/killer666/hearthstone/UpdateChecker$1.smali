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

.field final synthetic val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker;Lru/killer666/hearthstone/UpdateChecker$TempStorage;)V
    .registers 3
    .param p1, "this$0"    # Lru/killer666/hearthstone/UpdateChecker;

    .prologue
    .line 115
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0420\u045c\u0420\u00b0\u0420\u2116\u0420\u0491\u0420\u00b5\u0420\u0405\u0420\u00b0 \u0420\u0405\u0420\u0455\u0420\u0406\u0420\u00b0\u0421\u040f \u0420\u0406\u0420\u00b5\u0421\u0402\u0421\u0403\u0420\u0451\u0421\u040f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    invoke-virtual {v2}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    .line 120
    invoke-virtual {v2}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    invoke-virtual {v1}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionBuild()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", \u0421\u0403\u0420\u00b1\u0420\u0455\u0421\u0402\u0420\u0454\u0420\u00b0 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    invoke-virtual {v3}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionBuild()I

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

    const-string v2, "! \u0420\u045b\u0420\u00b1\u0420\u0405\u0420\u0455\u0420\u0406\u0420\u0451\u0421\u201a\u0421\u040a?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 122
    const-string v1, "Hearthstone"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    const-string v1, "\u0420\u201d\u0420\u00b0"

    new-instance v2, Lru/killer666/hearthstone/UpdateChecker$1$1;

    invoke-direct {v2, p0}, Lru/killer666/hearthstone/UpdateChecker$1$1;-><init>(Lru/killer666/hearthstone/UpdateChecker$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    const-string v1, "\u0420\u045c\u0420\u00b5\u0421\u201a"

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

    .line 120
    :cond_8a
    const-string v1, ""

    goto :goto_54
.end method
