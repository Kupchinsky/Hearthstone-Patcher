.class Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$2;
.super Ljava/lang/Object;
.source "ImmersiveModeSupport.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->Init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 50
    const-string v0, "ImmersiveModeSupport"

    const-string v1, "decorview onSystemUiVisibilityChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBarsDelayed()V

    .line 52
    return-void
.end method
