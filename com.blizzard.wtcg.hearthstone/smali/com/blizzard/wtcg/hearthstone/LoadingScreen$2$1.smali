.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

.field private final synthetic val$mainObbSize:J

.field private final synthetic val$patchObbSize:J


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;JJ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

    iput-wide p2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;->val$mainObbSize:J

    iput-wide p4, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;->val$patchObbSize:J

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-wide v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;->val$mainObbSize:J

    iget-wide v4, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$1;->val$patchObbSize:J

    add-long/2addr v2, v4

    const/4 v1, 0x4

    shr-long/2addr v2, v1

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 406
    return-void
.end method
