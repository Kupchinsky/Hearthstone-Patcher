.class public Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;
.super Ljava/lang/Object;
.source "HearthstoneAlert.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HearthstoneAlert"

.field static final _this:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->_this:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 9
    .param p0, "_alertTitle"    # Ljava/lang/String;
    .param p1, "_alertMessage"    # Ljava/lang/String;
    .param p2, "_positiveString"    # Ljava/lang/String;
    .param p3, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "_negativeString"    # Ljava/lang/String;
    .param p5, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "useGlueStrings"    # Z

    .prologue
    .line 33
    sget-object v8, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->_this:Landroid/app/Activity;

    new-instance v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p6

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
