.class Lru/killer666/hearthstone/DownloadSelector$4$1;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/DownloadSelector$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/DownloadSelector$4;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/DownloadSelector$4;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector$4$1;->this$1:Lru/killer666/hearthstone/DownloadSelector$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v0, 0x1

    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 172
    if-ne p2, v0, :cond_10

    :goto_6
    sput-boolean v0, Lru/killer666/hearthstone/DownloadSelector;->isP2P:Z

    .line 173
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$4$1;->this$1:Lru/killer666/hearthstone/DownloadSelector$4;

    iget-object v0, v0, Lru/killer666/hearthstone/DownloadSelector$4;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    invoke-virtual {v0}, Lru/killer666/hearthstone/DownloadSelector;->endTask()V

    .line 174
    return-void

    .line 172
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method
