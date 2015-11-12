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
    .line 190
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector$4$1;->this$1:Lru/killer666/hearthstone/DownloadSelector$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 192
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 194
    if-lez p2, :cond_16

    move v0, v1

    :goto_8
    sput-boolean v0, Lru/killer666/hearthstone/DownloadSelector;->isP2P:Z

    .line 195
    if-ne p2, v1, :cond_18

    :goto_c
    sput-boolean v1, Lru/killer666/hearthstone/DownloadSelector;->isDownloadRequired:Z

    .line 196
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$4$1;->this$1:Lru/killer666/hearthstone/DownloadSelector$4;

    iget-object v0, v0, Lru/killer666/hearthstone/DownloadSelector$4;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    invoke-virtual {v0}, Lru/killer666/hearthstone/DownloadSelector;->endTask()V

    .line 197
    return-void

    :cond_16
    move v0, v2

    .line 194
    goto :goto_8

    :cond_18
    move v1, v2

    .line 195
    goto :goto_c
.end method
