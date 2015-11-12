.class Lru/killer666/hearthstone/DownloadSelector$2;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/DownloadSelector;->updateProgress(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/DownloadSelector;

.field final synthetic val$percent:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/DownloadSelector;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector$2;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    iput p2, p0, Lru/killer666/hearthstone/DownloadSelector$2;->val$percent:I

    iput-object p3, p0, Lru/killer666/hearthstone/DownloadSelector$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$2;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lru/killer666/hearthstone/DownloadSelector;->access$500(Lru/killer666/hearthstone/DownloadSelector;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lru/killer666/hearthstone/DownloadSelector$2;->val$percent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$2;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    # getter for: Lru/killer666/hearthstone/DownloadSelector;->m_progressText:Landroid/widget/TextView;
    invoke-static {v0}, Lru/killer666/hearthstone/DownloadSelector;->access$600(Lru/killer666/hearthstone/DownloadSelector;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lru/killer666/hearthstone/DownloadSelector$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
