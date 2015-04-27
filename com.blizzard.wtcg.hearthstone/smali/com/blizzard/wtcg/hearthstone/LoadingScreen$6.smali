.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->Dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_patchObbThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-boolean v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_loadingFailed:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;

    invoke-direct {v1, p0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6$1;-><init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 762
    return-void

    .line 742
    :catch_0
    move-exception v0

    goto :goto_0
.end method
