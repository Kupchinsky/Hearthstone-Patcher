.class Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;
.super Ljava/lang/Object;
.source "HearthstoneAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$_alertMessage:Ljava/lang/String;

.field private final synthetic val$_alertTitle:Ljava/lang/String;

.field private final synthetic val$_negativeString:Ljava/lang/String;

.field private final synthetic val$_positiveString:Ljava/lang/String;

.field private final synthetic val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$useGlueStrings:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_alertTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_alertMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_positiveString:Ljava/lang/String;

    iput-object p4, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_negativeString:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$useGlueStrings:Z

    iput-object p6, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 36
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_alertTitle:Ljava/lang/String;

    .local v1, "alertTitle":Ljava/lang/String;
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_alertMessage:Ljava/lang/String;

    .local v0, "alertMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_positiveString:Ljava/lang/String;

    .local v6, "positiveString":Ljava/lang/String;
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_negativeString:Ljava/lang/String;

    .line 37
    .local v5, "negativeString":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$useGlueStrings:Z

    if-eqz v7, :cond_0

    .line 39
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v3

    .line 40
    .local v3, "cs":Lcom/blizzard/wtcg/hearthstone/ClientStrings;
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_alertTitle:Ljava/lang/String;

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_alertTitle:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_alertMessage:Ljava/lang/String;

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_alertMessage:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_positiveString:Ljava/lang/String;

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_positiveString:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_negativeString:Ljava/lang/String;

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$_negativeString:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .end local v3    # "cs":Lcom/blizzard/wtcg/hearthstone/ClientStrings;
    :cond_0
    const-string v7, "HearthstoneAlert"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Showing alert: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->_this:Landroid/app/Activity;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v7, :cond_1

    .line 51
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    :cond_1
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v7, :cond_2

    .line 54
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    :cond_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 61
    .local v4, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 63
    return-void
.end method
