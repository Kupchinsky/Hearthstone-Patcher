.class Lru/killer666/hearthstone/DownloadSelector$4;
.super Ljava/lang/Object;
.source "DownloadSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/DownloadSelector;->startDownload()V
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
    .line 116
    iput-object p1, p0, Lru/killer666/hearthstone/DownloadSelector$4;->this$0:Lru/killer666/hearthstone/DownloadSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 120
    return-void
.end method
