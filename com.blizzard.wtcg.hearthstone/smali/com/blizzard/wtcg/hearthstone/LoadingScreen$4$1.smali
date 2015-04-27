.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4$1;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 566
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4$1;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$4;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    move-result-object v1

    const-string v2, "GLUE_LOADINGSCREEN_PROGRESS_1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    return-void
.end method
