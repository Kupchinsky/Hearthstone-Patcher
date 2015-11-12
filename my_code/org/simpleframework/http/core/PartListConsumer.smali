.class Lorg/simpleframework/http/core/PartListConsumer;
.super Lorg/simpleframework/http/core/BodyConsumer;
.source "PartListConsumer.java"


# instance fields
.field private buffer:Lorg/simpleframework/util/buffer/BufferAllocator;

.field private consumer:Lorg/simpleframework/http/core/PartEntryConsumer;

.field private factory:Lorg/simpleframework/http/core/PartEntryFactory;

.field private list:Lorg/simpleframework/http/core/PartList;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[B)V
    .registers 5
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "list"    # Lorg/simpleframework/http/core/PartList;
    .param p3, "boundary"    # [B

    .prologue
    .line 100
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/http/core/PartListConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[BI)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[BI)V
    .registers 7
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "list"    # Lorg/simpleframework/http/core/PartList;
    .param p3, "boundary"    # [B
    .param p4, "length"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/simpleframework/http/core/BodyConsumer;-><init>()V

    .line 115
    new-instance v0, Lorg/simpleframework/util/buffer/BufferAllocator;

    invoke-direct {v0, p1, p4}, Lorg/simpleframework/util/buffer/BufferAllocator;-><init>(Lorg/simpleframework/util/buffer/Allocator;I)V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->buffer:Lorg/simpleframework/util/buffer/BufferAllocator;

    .line 116
    new-instance v0, Lorg/simpleframework/http/core/PartEntryConsumer;

    iget-object v1, p0, Lorg/simpleframework/http/core/PartListConsumer;->buffer:Lorg/simpleframework/util/buffer/BufferAllocator;

    invoke-direct {v0, v1, p2, p3}, Lorg/simpleframework/http/core/PartEntryConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[B)V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->consumer:Lorg/simpleframework/http/core/PartEntryConsumer;

    .line 117
    new-instance v0, Lorg/simpleframework/http/core/PartEntryFactory;

    iget-object v1, p0, Lorg/simpleframework/http/core/PartListConsumer;->buffer:Lorg/simpleframework/util/buffer/BufferAllocator;

    invoke-direct {v0, v1, p2, p3}, Lorg/simpleframework/http/core/PartEntryFactory;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[B)V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->factory:Lorg/simpleframework/http/core/PartEntryFactory;

    .line 118
    iput-object p2, p0, Lorg/simpleframework/http/core/PartListConsumer;->list:Lorg/simpleframework/http/core/PartList;

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;[B)V
    .registers 4
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "boundary"    # [B

    .prologue
    .line 72
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/http/core/PartListConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;[BI)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;[BI)V
    .registers 5
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "boundary"    # [B
    .param p3, "length"    # I

    .prologue
    .line 86
    new-instance v0, Lorg/simpleframework/http/core/PartList;

    invoke-direct {v0}, Lorg/simpleframework/http/core/PartList;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/simpleframework/http/core/PartListConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[BI)V

    .line 87
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
    .line 130
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/transport/Cursor;->isReady()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 131
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->consumer:Lorg/simpleframework/http/core/PartEntryConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/PartEntryConsumer;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    .line 132
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->consumer:Lorg/simpleframework/http/core/PartEntryConsumer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/PartEntryConsumer;->consume(Lorg/simpleframework/transport/Cursor;)V

    goto :goto_0

    .line 134
    :cond_14
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->consumer:Lorg/simpleframework/http/core/PartEntryConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/PartEntryConsumer;->isEnd()Z

    move-result v0

    if-nez v0, :cond_25

    .line 135
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->factory:Lorg/simpleframework/http/core/PartEntryFactory;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/PartEntryFactory;->getInstance()Lorg/simpleframework/http/core/PartEntryConsumer;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->consumer:Lorg/simpleframework/http/core/PartEntryConsumer;

    goto :goto_0

    .line 141
    :cond_25
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->buffer:Lorg/simpleframework/util/buffer/BufferAllocator;

    invoke-virtual {v0}, Lorg/simpleframework/util/buffer/BufferAllocator;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->buffer:Lorg/simpleframework/util/buffer/BufferAllocator;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/buffer/BufferAllocator;->encode(Ljava/lang/String;)Ljava/lang/String;

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
    .line 193
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->buffer:Lorg/simpleframework/util/buffer/BufferAllocator;

    invoke-virtual {v0}, Lorg/simpleframework/util/buffer/BufferAllocator;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->list:Lorg/simpleframework/http/core/PartList;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/PartList;->getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;

    move-result-object v0

    return-object v0
.end method

.method public getParts()Lorg/simpleframework/http/core/PartList;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->list:Lorg/simpleframework/http/core/PartList;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/simpleframework/http/core/PartListConsumer;->consumer:Lorg/simpleframework/http/core/PartEntryConsumer;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/PartEntryConsumer;->isEnd()Z

    move-result v0

    return v0
.end method
