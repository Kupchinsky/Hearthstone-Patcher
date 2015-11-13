.class Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;
.super Ljava/lang/Object;
.source "Torrent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/Torrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallableChunkHasher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final md:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    invoke-static {}, Lru/killer666/apache/commons/codec/digest/DigestUtils;->getSha1Digest()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;->md:Ljava/security/MessageDigest;

    .line 682
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;->data:Ljava/nio/ByteBuffer;

    .line 683
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 684
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 685
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 686
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 687
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 692
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;->md:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 693
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
