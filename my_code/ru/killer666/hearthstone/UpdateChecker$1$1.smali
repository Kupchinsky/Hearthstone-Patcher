.class Lru/killer666/hearthstone/UpdateChecker$1$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/UpdateChecker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/UpdateChecker$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker$1;Lru/killer666/hearthstone/UpdateChecker$CustomInfo;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iput-object p2, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    iput-object p3, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$activity:Landroid/app/Activity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 160
    :try_start_0
    iget-object v3, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v3}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteData()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_43

    move-result-object v2

    .line 169
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    const-string v3, "..."

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 173
    const-string v3, "Hearthstone"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 174
    const-string v3, "\u0412\u044b\u0445\u043e\u0434"

    new-instance v4, Lru/killer666/hearthstone/UpdateChecker$1$1$1;

    invoke-direct {v4, p0}, Lru/killer666/hearthstone/UpdateChecker$1$1$1;-><init>(Lru/killer666/hearthstone/UpdateChecker$1$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 184
    .end local v0    # "dlgAlert":Landroid/app/AlertDialog$Builder;
    .end local v2    # "url":Ljava/lang/String;
    :goto_42
    return-void

    .line 162
    :catch_43
    move-exception v1

    .line 164
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 165
    iget-object v3, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    # getter for: Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;
    invoke-static {v3}, Lru/killer666/hearthstone/UpdateChecker$1;->access$0(Lru/killer666/hearthstone/UpdateChecker$1;)Lru/killer666/hearthstone/UpdateChecker;

    move-result-object v3

    invoke-virtual {v3}, Lru/killer666/hearthstone/UpdateChecker;->endTask()V

    goto :goto_42
.end method
