.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;
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

.field private final synthetic val$downloadText:Ljava/lang/String;

.field private final synthetic val$mainObb:Ljava/io/File;

.field private final synthetic val$mainObbTmp:Ljava/io/File;

.field private final synthetic val$patchObb:Ljava/io/File;

.field private final synthetic val$patchObbTmp:Ljava/io/File;

.field private final synthetic val$totalDownloadMB:D


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$mainObb:Ljava/io/File;

    iput-object p3, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$mainObbTmp:Ljava/io/File;

    iput-object p4, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$patchObb:Ljava/io/File;

    iput-object p5, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$patchObbTmp:Ljava/io/File;

    iput-object p6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$downloadText:Ljava/lang/String;

    iput-wide p7, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$totalDownloadMB:D

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 421
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$mainObb:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$mainObb:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 422
    .local v2, "mainSize":J
    :goto_0
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$patchObb:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$patchObb:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 423
    .local v4, "patchSize":J
    :goto_1
    add-long v6, v2, v4

    long-to-float v6, v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double v0, v6, v8

    .line 424
    .local v0, "downloadMB":D
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v6}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v6

    iget-object v6, v6, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$downloadText:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$totalDownloadMB:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    const-string v6, "LoadingScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Obb file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v8}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v8

    iget-object v8, v8, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->this$1:Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v6}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v6

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v6

    add-long v8, v2, v4

    long-to-int v7, v8

    shr-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 427
    return-void

    .line 421
    .end local v0    # "downloadMB":D
    .end local v2    # "mainSize":J
    .end local v4    # "patchSize":J
    :cond_0
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$mainObbTmp:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0

    .line 422
    .restart local v2    # "mainSize":J
    :cond_1
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$2$2;->val$patchObbTmp:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_1
.end method
