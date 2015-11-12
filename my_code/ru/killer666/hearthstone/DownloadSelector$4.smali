.class Lru/killer666/hearthstone/DownloadSelector$4;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/DownloadSelector;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/DownloadSelector;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/DownloadSelector;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector$4;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 162
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string v2, "Google Play \u043c\u0430\u0440\u043a\u0435\u0442"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\u0422\u043e\u0440\u0440\u0435\u043d\u0442 (\u0441\u0440\u0430\u0437\u0443 \u0440\u0430\u0441\u043f\u0430\u043a\u043e\u0432\u0430\u043d\u043d\u044b\u0439 \u043a\u044d\u0448)"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u041d\u0435 \u0437\u0430\u0433\u0440\u0443\u0436\u0430\u0442\u044c"

    aput-object v3, v1, v2

    .line 164
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0441\u043f\u043e\u0441\u043e\u0431 \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0438 \u043a\u044d\u0448\u0430:"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 168
    const/4 v2, -0x1

    new-instance v3, Lru/killer666/hearthstone/DownloadSelector$4$1;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/DownloadSelector$4$1;-><init>(Lru/killer666/hearthstone/DownloadSelector$4;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 177
    return-void
.end method
