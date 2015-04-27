.class public Lcom/AdX/Override/AdXOverride;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "AdXOverride.java"


# static fields
.field public static OverrideInstance:Lcom/AdX/Override/AdXOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/AdX/Override/AdXOverride;->OverrideInstance:Lcom/AdX/Override/AdXOverride;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method public static getAdXReferral(Landroid/content/Context;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/AdX/tag/AdXConnect;->getAdXReferral(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendEvent(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "currency"    # Ljava/lang/String;
    .param p5, "custom_data"    # Ljava/lang/String;
    .param p6, "AppKey"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/AdX/Override/AdXOverride$2;

    move-object v1, p6

    move-object v2, p5

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/AdX/Override/AdXOverride$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public static sendInstall(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "AppKey"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/AdX/Override/AdXOverride$1;

    invoke-direct {v0, p2, p0}, Lcom/AdX/Override/AdXOverride$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sput-object p0, Lcom/AdX/Override/AdXOverride;->OverrideInstance:Lcom/AdX/Override/AdXOverride;

    .line 20
    invoke-virtual {p0}, Lcom/AdX/Override/AdXOverride;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    .line 21
    return-void
.end method
