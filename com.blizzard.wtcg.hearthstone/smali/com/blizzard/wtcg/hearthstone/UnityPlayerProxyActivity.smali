.class public Lcom/blizzard/wtcg/hearthstone/UnityPlayerProxyActivity;
.super Landroid/app/Activity;
.source "UnityPlayerProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/blizzard/wtcg/hearthstone/UnityPlayerNativeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/UnityPlayerProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 20
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 22
    :cond_0
    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/UnityPlayerProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
