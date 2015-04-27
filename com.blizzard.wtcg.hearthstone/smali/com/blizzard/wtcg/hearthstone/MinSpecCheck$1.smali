.class Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$1;
.super Ljava/lang/Object;
.source "MinSpecCheck.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->showMinSpecWarning(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

.field private final synthetic val$quitListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$1;->this$0:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$1;->val$quitListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 100
    sget-object v3, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->s_supportUrl:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->GetBnetLocale()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->GetBnetRegion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "supportUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 102
    .local v2, "webpage":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$1;->this$0:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

    iget-object v3, v3, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->_this:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 104
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$1;->val$quitListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v3, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 105
    return-void
.end method
