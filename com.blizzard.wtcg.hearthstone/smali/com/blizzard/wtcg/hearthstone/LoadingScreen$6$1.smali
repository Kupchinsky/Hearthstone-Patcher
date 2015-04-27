.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$1(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    iget-boolean v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    if-nez v0, :cond_0

    .line 752
    const-string v0, "LoadingScreen"

    const-string v1, "Dismissing..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v1

    iget-object v1, v1, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 754
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 756
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$1(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 759
    :cond_0
    return-void
.end method
