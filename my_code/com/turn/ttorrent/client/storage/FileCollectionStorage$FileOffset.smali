.class Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;
.super Ljava/lang/Object;
.source "FileCollectionStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/storage/FileCollectionStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileOffset"
.end annotation


# instance fields
.field public final file:Lcom/turn/ttorrent/client/storage/FileStorage;

.field public final length:J

.field public final offset:J


# direct methods
.method constructor <init>(Lcom/turn/ttorrent/client/storage/FileStorage;JJ)V
    .registers 6
    .param p1, "file"    # Lcom/turn/ttorrent/client/storage/FileStorage;
    .param p2, "offset"    # J
    .param p4, "length"    # J

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;->file:Lcom/turn/ttorrent/client/storage/FileStorage;

    .line 151
    iput-wide p2, p0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;->offset:J

    .line 152
    iput-wide p4, p0, Lcom/turn/ttorrent/client/storage/FileCollectionStorage$FileOffset;->length:J

    .line 153
    return-void
.end method
