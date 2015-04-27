.class Lcom/AdX/Override/AdXOverride$2;
.super Ljava/lang/Object;
.source "AdXOverride.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AdX/Override/AdXOverride;->sendEvent(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$AppKey:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$currency:Ljava/lang/String;

.field private final synthetic val$custom_data:Ljava/lang/String;

.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/AdX/Override/AdXOverride$2;->val$AppKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/AdX/Override/AdXOverride$2;->val$custom_data:Ljava/lang/String;

    iput-object p3, p0, Lcom/AdX/Override/AdXOverride$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/AdX/Override/AdXOverride$2;->val$event:Ljava/lang/String;

    iput-object p5, p0, Lcom/AdX/Override/AdXOverride$2;->val$value:Ljava/lang/String;

    iput-object p6, p0, Lcom/AdX/Override/AdXOverride$2;->val$currency:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 37
    iget-object v0, p0, Lcom/AdX/Override/AdXOverride$2;->val$AppKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/AdX/tag/AdXConnect;->setKey(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/AdX/Override/AdXOverride$2;->val$custom_data:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/AdX/Override/AdXOverride$2;->val$custom_data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/AdX/Override/AdXOverride$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/AdX/Override/AdXOverride$2;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/AdX/Override/AdXOverride$2;->val$value:Ljava/lang/String;

    iget-object v3, p0, Lcom/AdX/Override/AdXOverride$2;->val$currency:Ljava/lang/String;

    iget-object v4, p0, Lcom/AdX/Override/AdXOverride$2;->val$custom_data:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/AdX/Override/AdXOverride$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/AdX/Override/AdXOverride$2;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/AdX/Override/AdXOverride$2;->val$value:Ljava/lang/String;

    iget-object v3, p0, Lcom/AdX/Override/AdXOverride$2;->val$currency:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
