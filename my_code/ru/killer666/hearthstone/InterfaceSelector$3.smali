.class Lru/killer666/hearthstone/InterfaceSelector$3;
.super Ljava/lang/Object;
.source "InterfaceSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/InterfaceSelector;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/InterfaceSelector;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/InterfaceSelector;Landroid/content/SharedPreferences;)V
    .registers 3

    .prologue
    .line 65
    iput-object p1, p0, Lru/killer666/hearthstone/InterfaceSelector$3;->this$0:Lru/killer666/hearthstone/InterfaceSelector;

    iput-object p2, p0, Lru/killer666/hearthstone/InterfaceSelector$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 67
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string v2, "\u0414\u043b\u044f \u043f\u043b\u0430\u043d\u0448\u0435\u0442\u043e\u0432"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\u0414\u043b\u044f \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u043e\u0432 (\u0431\u043e\u043b\u0435\u0435 \u043a\u0440\u0443\u043f\u043d\u044b\u0439 \u0442\u0435\u043a\u0441\u0442)"

    aput-object v3, v1, v2

    .line 69
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0438\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441:"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 73
    const/4 v2, -0x1

    new-instance v3, Lru/killer666/hearthstone/InterfaceSelector$3$1;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/InterfaceSelector$3$1;-><init>(Lru/killer666/hearthstone/InterfaceSelector$3;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 87
    return-void
.end method
