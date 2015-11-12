.class Lorg/simpleframework/transport/SegmentBuilder;
.super Ljava/lang/Object;
.source "SegmentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/transport/SegmentBuilder$Queue;
    }
.end annotation


# instance fields
.field private final compact:Lorg/simpleframework/transport/SegmentBuilder$Queue;

.field private final limit:I

.field private final ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    const/16 v0, 0x5000

    invoke-direct {p0, v0}, Lorg/simpleframework/transport/SegmentBuilder;-><init>(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "limit"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-direct {v0, p0}, Lorg/simpleframework/transport/SegmentBuilder$Queue;-><init>(Lorg/simpleframework/transport/SegmentBuilder;)V

    iput-object v0, p0, Lorg/simpleframework/transport/SegmentBuilder;->compact:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    .line 76
    new-instance v0, Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-direct {v0, p0}, Lorg/simpleframework/transport/SegmentBuilder$Queue;-><init>(Lorg/simpleframework/transport/SegmentBuilder;)V

    iput-object v0, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    .line 77
    iput p1, p0, Lorg/simpleframework/transport/SegmentBuilder;->limit:I

    .line 78
    return-void
.end method

.method private create(Lorg/simpleframework/transport/Packet;)Lorg/simpleframework/transport/Segment;
    .registers 5
    .param p1, "packet"    # Lorg/simpleframework/transport/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-interface {p1}, Lorg/simpleframework/transport/Packet;->length()I

    move-result v0

    .line 128
    .local v0, "length":I
    if-gtz v0, :cond_13

    .line 129
    invoke-interface {p1}, Lorg/simpleframework/transport/Packet;->close()V

    .line 130
    iget-object v1, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v1}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->poll()Ljava/lang/Object;

    .line 132
    invoke-virtual {p0}, Lorg/simpleframework/transport/SegmentBuilder;->build()Lorg/simpleframework/transport/Segment;

    move-result-object v1

    .line 134
    :goto_12
    return-object v1

    :cond_13
    new-instance v1, Lorg/simpleframework/transport/Segment;

    iget-object v2, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-direct {v1, p1, v2}, Lorg/simpleframework/transport/Segment;-><init>(Lorg/simpleframework/transport/Packet;Ljava/util/Queue;)V

    goto :goto_12
.end method

.method private extract()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget v0, p0, Lorg/simpleframework/transport/SegmentBuilder;->limit:I

    .line 188
    .local v0, "count":I
    iget-object v4, p0, Lorg/simpleframework/transport/SegmentBuilder;->compact:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v4}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/transport/Packet;

    .line 189
    .local v3, "packet":Lorg/simpleframework/transport/Packet;
    invoke-interface {v3}, Lorg/simpleframework/transport/Packet;->length()I

    move-result v2

    .line 191
    .local v2, "length":I
    if-gt v2, v0, :cond_1f

    .line 192
    invoke-interface {v3}, Lorg/simpleframework/transport/Packet;->extract()Lorg/simpleframework/transport/Packet;

    move-result-object v3

    .line 193
    sub-int/2addr v0, v2

    .line 195
    :cond_1f
    if-eqz v3, :cond_8

    .line 196
    iget-object v4, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v4, v3}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_8

    .line 199
    .end local v2    # "length":I
    .end local v3    # "packet":Lorg/simpleframework/transport/Packet;
    :cond_27
    iget-object v4, p0, Lorg/simpleframework/transport/SegmentBuilder;->compact:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v4}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->clear()V

    .line 200
    return-void
.end method


# virtual methods
.method public build()Lorg/simpleframework/transport/Segment;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v1}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/transport/Packet;

    .line 109
    .local v0, "packet":Lorg/simpleframework/transport/Packet;
    if-nez v0, :cond_c

    .line 110
    const/4 v1, 0x0

    .line 112
    :goto_b
    return-object v1

    :cond_c
    invoke-direct {p0, v0}, Lorg/simpleframework/transport/SegmentBuilder;->create(Lorg/simpleframework/transport/Packet;)Lorg/simpleframework/transport/Segment;

    move-result-object v1

    goto :goto_b
.end method

.method public build(Lorg/simpleframework/transport/Packet;)Lorg/simpleframework/transport/Segment;
    .registers 8
    .param p1, "packet"    # Lorg/simpleframework/transport/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v3, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v3, p1}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 149
    .local v2, "update":Z
    invoke-interface {p1}, Lorg/simpleframework/transport/Packet;->sequence()J

    move-result-wide v0

    .line 151
    .local v0, "sequence":J
    if-nez v2, :cond_25

    .line 152
    new-instance v3, Lorg/simpleframework/transport/PacketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not add packet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/simpleframework/transport/PacketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_25
    invoke-virtual {p0}, Lorg/simpleframework/transport/SegmentBuilder;->build()Lorg/simpleframework/transport/Segment;

    move-result-object v3

    return-object v3
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v2, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v2}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/transport/Packet;

    .line 227
    .local v1, "packet":Lorg/simpleframework/transport/Packet;
    invoke-interface {v1}, Lorg/simpleframework/transport/Packet;->close()V

    goto :goto_6

    .line 229
    .end local v1    # "packet":Lorg/simpleframework/transport/Packet;
    :cond_16
    iget-object v2, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v2}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->clear()V

    .line 230
    return-void
.end method

.method public compact()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v1}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/transport/Packet;

    .line 168
    .local v0, "packet":Lorg/simpleframework/transport/Packet;
    :cond_8
    :goto_8
    if-eqz v0, :cond_1a

    .line 169
    iget-object v1, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v1}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "packet":Lorg/simpleframework/transport/Packet;
    check-cast v0, Lorg/simpleframework/transport/Packet;

    .line 171
    .restart local v0    # "packet":Lorg/simpleframework/transport/Packet;
    if-eqz v0, :cond_8

    .line 172
    iget-object v1, p0, Lorg/simpleframework/transport/SegmentBuilder;->compact:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v1, v0}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_8

    .line 175
    :cond_1a
    invoke-direct {p0}, Lorg/simpleframework/transport/SegmentBuilder;->extract()V

    .line 176
    return-void
.end method

.method public isReference()Z
    .registers 4

    .prologue
    .line 90
    iget-object v2, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v2}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/transport/Packet;

    .line 91
    .local v1, "packet":Lorg/simpleframework/transport/Packet;
    invoke-interface {v1}, Lorg/simpleframework/transport/Packet;->isReference()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    const/4 v2, 0x1

    .line 95
    .end local v1    # "packet":Lorg/simpleframework/transport/Packet;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public length()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "count":I
    iget-object v3, p0, Lorg/simpleframework/transport/SegmentBuilder;->ready:Lorg/simpleframework/transport/SegmentBuilder$Queue;

    invoke-virtual {v3}, Lorg/simpleframework/transport/SegmentBuilder$Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/transport/Packet;

    .line 214
    .local v2, "packet":Lorg/simpleframework/transport/Packet;
    invoke-interface {v2}, Lorg/simpleframework/transport/Packet;->length()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_7

    .line 216
    .end local v2    # "packet":Lorg/simpleframework/transport/Packet;
    :cond_19
    return v0
.end method
