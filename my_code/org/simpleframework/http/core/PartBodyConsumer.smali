.class Lorg/simpleframework/http/core/PartBodyConsumer;
.super Lorg/simpleframework/http/core/BodyConsumer;
.source "PartBodyConsumer.java"


# static fields
.field private static final LINE:[B


# instance fields
.field private content:Lorg/simpleframework/http/core/ContentConsumer;

.field private token:Lorg/simpleframework/http/core/Consumer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/simpleframework/http/core/PartBodyConsumer;->LINE:[B

    return-void

    nop

    :array_a
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;Lorg/simpleframework/http/core/PartList;[B)V
    .registers 7
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "segment"    # Lorg/simpleframework/http/core/Segment;
    .param p3, "list"    # Lorg/simpleframework/http/core/PartList;
    .param p4, "boundary"    # [B

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/simpleframework/http/core/BodyConsumer;-><init>()V

    .line 79
    new-instance v0, Lorg/simpleframework/http/core/ContentConsumer;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/simpleframework/http/core/ContentConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;Lorg/simpleframework/http/core/PartList;[B)V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartBodyConsumer;->content:Lorg/simpleframework/http/core/ContentConsumer;

    .line 80
    new-instance v0, Lorg/simpleframework/http/core/TokenConsumer;

    sget-object v1, Lorg/simpleframework/http/core/PartBodyConsumer;->LINE:[B

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/http/core/TokenConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;[B)V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartBodyConsumer;->token:Lorg/simpleframework/http/core/Consumer;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;[B)V
    .registers 5
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "segment"    # Lorg/simpleframework/http/core/Segment;
    .param p3, "boundary"    # [B

    .prologue
    .line 64
    new-instance v0, Lorg/simpleframework/http/core/PartList;

    invoke-direct {v0}, Lorg/simpleframework/http/core/PartList;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/simpleframework/http/core/PartBodyConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/Segment;Lorg/simpleframework/http/core/PartList;[B)V

    .line 65
    return-void
.end method


# virtual methods
.method public consume(Lorg/simpleframework/transport/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Lorg/simpleframework/transport/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/transport/Cursor;->isReady()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 93
    iget-object v0, p0, Lorg/simpleframework/http/core/PartBodyConsumer;->content:Lorg/simpleframework/http/core/ContentConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/ContentConsumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 94
    iget-object v0, p0, Lorg/simpleframework/http/core/PartBodyConsumer;->token:Lorg/simpleframework/http/core/Consumer;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Consumer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 102
    :cond_16
    return-void

    .line 97
    :cond_17
    iget-object v0, p0, Lorg/simpleframework/http/core/PartBodyConsumer;->token:Lorg/simpleframework/http/core/Consumer;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Consumer;->consume(Lorg/simpleframework/transport/Cursor;)V

    goto :goto_0

    .line 99
    :cond_1d
    iget-object v0, p0, Lorg/simpleframework/http/core/PartBodyConsumer;->content:Lorg/simpleframework/http/core/ContentConsumer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/ContentConsumer;->consume(Lorg/simpleframework/transport/Cursor;)V

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/http/core/PartBodyConsumer;->content:Lorg/simpleframework/http/core/ContentConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/ContentConsumer;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/simpleframework/http/core/PartBodyConsumer;->content:Lorg/simpleframework/http/core/ContentConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/ContentConsumer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/simpleframework/http/core/PartBodyConsumer;->token:Lorg/simpleframework/http/core/Consumer;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Consumer;->isFinished()Z

    move-result v0

    return v0
.end method
