.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;

.field private final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;

    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;->val$source:Ljava/lang/String;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 507
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v2

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 508
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v2

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v2

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v3

    const-string v4, "GLUE_LOADINGSCREEN_SDCARD"

    invoke-virtual {v3, v4}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;->val$source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->getFolderSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 511
    .local v0, "folderBytes":J
    const-string v2, "LoadingScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sdcard folder bytes to copy is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$3;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v2

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v2

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 513
    return-void
.end method
