.class Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$1;
.super Ljava/lang/Object;
.source "ImmersiveModeSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 74
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBars()V

    .line 75
    return-void
.end method
