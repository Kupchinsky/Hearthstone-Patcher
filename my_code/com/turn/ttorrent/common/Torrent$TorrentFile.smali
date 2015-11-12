.class public Lcom/turn/ttorrent/common/Torrent$TorrentFile;
.super Ljava/lang/Object;
.source "Torrent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/Torrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TorrentFile"
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final size:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # J

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/turn/ttorrent/common/Torrent$TorrentFile;->file:Ljava/io/File;

    .line 98
    iput-wide p2, p0, Lcom/turn/ttorrent/common/Torrent$TorrentFile;->size:J

    .line 99
    return-void
.end method
