.class Lcom/AdX/Override/AdXOverride$1;
.super Ljava/lang/Object;
.source "AdXOverride.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AdX/Override/AdXOverride;->sendInstall(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$AppKey:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/AdX/Override/AdXOverride$1;->val$AppKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/AdX/Override/AdXOverride$1;->val$context:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/AdX/Override/AdXOverride$1;->val$AppKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/AdX/tag/AdXConnect;->setKey(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/AdX/Override/AdXOverride$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    .line 29
    return-void
.end method
