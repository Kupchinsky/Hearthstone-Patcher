.class Lorg/simpleframework/transport/PacketBuilder;
.super Ljava/lang/Object;
.source "PacketBuilder.java"


# instance fields
.field private allocator:Lorg/simpleframework/transport/PacketAllocator;

.field private packet:Lorg/simpleframework/transport/Packet;

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/simpleframework/transport/PacketBuilder;-><init>(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "limit"    # I

    .prologue
    .line 69
    const/4 v0, 0x3

    const/16 v1, 0x1002

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/transport/PacketBuilder;-><init>(II)V

    .line 70
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "limit"    # I
    .param p2, "size"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lorg/simpleframework/transport/PacketAllocator;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/transport/PacketAllocator;-><init>(II)V

    iput-object v0, p0, Lorg/simpleframework/transport/PacketBuilder;->allocator:Lorg/simpleframework/transport/PacketAllocator;

    .line 83
    iput p2, p0, Lorg/simpleframework/transport/PacketBuilder;->size:I

    .line 84
    return-void
.end method

.method private build(Ljava/nio/ByteBuffer;Lorg/simpleframework/transport/Packet;)Lorg/simpleframework/transport/Packet;
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "packet"    # Lorg/simpleframework/transport/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 152
    .local v2, "ready":I
    invoke-interface {p2}, Lorg/simpleframework/transport/Packet;->length()I

    move-result v1

    .line 153
    .local v1, "length":I
    invoke-interface {p2}, Lorg/simpleframework/transport/Packet;->space()I

    move-result v3

    .line 155
    .local v3, "space":I
    if-gt v2, v3, :cond_18

    .line 156
    invoke-interface {p2, p1}, Lorg/simpleframework/transport/Packet;->append(Ljava/nio/ByteBuffer;)I

    .line 171
    if-ne v3, v2, :cond_38

    .line 172
    invoke-virtual {p0}, Lorg/simpleframework/transport/PacketBuilder;->build()Lorg/simpleframework/transport/Packet;

    move-result-object v4

    .line 174
    :goto_17
    return-object v4

    .line 158
    :cond_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 160
    .local v0, "capacity":I
    if-nez v1, :cond_25

    .line 161
    iget-object v4, p0, Lorg/simpleframework/transport/PacketBuilder;->allocator:Lorg/simpleframework/transport/PacketAllocator;

    invoke-virtual {v4, p1}, Lorg/simpleframework/transport/PacketAllocator;->allocate(Ljava/nio/ByteBuffer;)Lorg/simpleframework/transport/Packet;

    move-result-object v4

    goto :goto_17

    .line 163
    :cond_25
    if-ge v3, v0, :cond_31

    .line 164
    if-lez v3, :cond_2c

    .line 165
    invoke-interface {p2, p1}, Lorg/simpleframework/transport/Packet;->append(Ljava/nio/ByteBuffer;)I

    .line 167
    :cond_2c
    invoke-virtual {p0}, Lorg/simpleframework/transport/PacketBuilder;->build()Lorg/simpleframework/transport/Packet;

    move-result-object v4

    goto :goto_17

    .line 169
    :cond_31
    iget-object v4, p0, Lorg/simpleframework/transport/PacketBuilder;->allocator:Lorg/simpleframework/transport/PacketAllocator;

    invoke-virtual {v4, p1}, Lorg/simpleframework/transport/PacketAllocator;->allocate(Ljava/nio/ByteBuffer;)Lorg/simpleframework/transport/Packet;

    move-result-object v4

    goto :goto_17

    .line 174
    .end local v0    # "capacity":I
    :cond_38
    const/4 v4, 0x0

    goto :goto_17
.end method


# virtual methods
.method public build()Lorg/simpleframework/transport/Packet;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "local":Lorg/simpleframework/transport/Packet;
    iget-object v2, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    if-eqz v2, :cond_15

    .line 97
    iget-object v2, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v2}, Lorg/simpleframework/transport/Packet;->length()I

    move-result v0

    .line 99
    .local v0, "length":I
    if-gtz v0, :cond_16

    .line 100
    iget-object v2, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    invoke-interface {v2}, Lorg/simpleframework/transport/Packet;->close()V

    .line 104
    :goto_12
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    .line 106
    .end local v0    # "length":I
    :cond_15
    return-object v1

    .line 102
    .restart local v0    # "length":I
    :cond_16
    iget-object v1, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    goto :goto_12
.end method

.method public build(Ljava/nio/ByteBuffer;)Lorg/simpleframework/transport/Packet;
    .registers 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 123
    .local v0, "ready":I
    iget-object v1, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    if-eqz v1, :cond_f

    .line 124
    iget-object v1, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/transport/PacketBuilder;->build(Ljava/nio/ByteBuffer;Lorg/simpleframework/transport/Packet;)Lorg/simpleframework/transport/Packet;

    move-result-object v1

    .line 135
    :goto_e
    return-object v1

    .line 126
    :cond_f
    iget v1, p0, Lorg/simpleframework/transport/PacketBuilder;->size:I

    if-le v0, v1, :cond_1a

    .line 127
    iget-object v1, p0, Lorg/simpleframework/transport/PacketBuilder;->allocator:Lorg/simpleframework/transport/PacketAllocator;

    invoke-virtual {v1, p1}, Lorg/simpleframework/transport/PacketAllocator;->allocate(Ljava/nio/ByteBuffer;)Lorg/simpleframework/transport/Packet;

    move-result-object v1

    goto :goto_e

    .line 129
    :cond_1a
    if-lez v0, :cond_2f

    .line 130
    iget-object v1, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    if-nez v1, :cond_28

    .line 131
    iget-object v1, p0, Lorg/simpleframework/transport/PacketBuilder;->allocator:Lorg/simpleframework/transport/PacketAllocator;

    invoke-virtual {v1}, Lorg/simpleframework/transport/PacketAllocator;->allocate()Lorg/simpleframework/transport/Packet;

    move-result-object v1

    iput-object v1, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    .line 133
    :cond_28
    iget-object v1, p0, Lorg/simpleframework/transport/PacketBuilder;->packet:Lorg/simpleframework/transport/Packet;

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/transport/PacketBuilder;->build(Ljava/nio/ByteBuffer;Lorg/simpleframework/transport/Packet;)Lorg/simpleframework/transport/Packet;

    move-result-object v1

    goto :goto_e

    .line 135
    :cond_2f
    const/4 v1, 0x0

    goto :goto_e
.end method
