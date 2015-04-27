.class Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport$3;
.super Ljava/lang/Object;
.source "ImmersiveModeSupport.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 60
    const-string v0, "ImmersiveModeSupport"

    const-string v1, "decorview onFocusChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBarsDelayed()V

    .line 62
    return-void
.end method
