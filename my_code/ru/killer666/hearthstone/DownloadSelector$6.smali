.class Lru/killer666/hearthstone/DownloadSelector$6;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/DownloadSelector;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/DownloadSelector;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/DownloadSelector;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector$6;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 208
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 209
    iget-object v0, p0, Lru/killer666/hearthstone/DownloadSelector$6;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    invoke-virtual {v0}, Lru/killer666/hearthstone/DownloadSelector;->endTask()V

    .line 210
    return-void
.end method
