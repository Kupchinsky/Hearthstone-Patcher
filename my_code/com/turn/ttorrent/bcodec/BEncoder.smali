.class public Lcom/turn/ttorrent/bcodec/BEncoder;
.super Ljava/lang/Object;
.source "BEncoder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bencode(Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 120
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public static bencode(Ljava/lang/Number;Ljava/io/OutputStream;)V
    .registers 4
    .param p0, "n"    # Ljava/lang/Number;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "s":Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 78
    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 79
    return-void
.end method

.method public static bencode(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 49
    instance-of v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;

    if-eqz v0, :cond_a

    .line 50
    check-cast p0, Lcom/turn/ttorrent/bcodec/BEValue;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BEValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 53
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_a
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 54
    check-cast p0, Ljava/lang/String;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 67
    :goto_13
    return-void

    .line 55
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_14
    instance-of v0, p0, [B

    if-eqz v0, :cond_20

    .line 56
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0, p1}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode([BLjava/io/OutputStream;)V

    goto :goto_13

    .line 57
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_20
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2a

    .line 58
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/lang/Number;Ljava/io/OutputStream;)V

    goto :goto_13

    .line 59
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2a
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_34

    .line 60
    check-cast p0, Ljava/util/List;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/util/List;Ljava/io/OutputStream;)V

    goto :goto_13

    .line 61
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_34
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3e

    .line 62
    check-cast p0, Ljava/util/Map;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/util/Map;Ljava/io/OutputStream;)V

    goto :goto_13

    .line 64
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bencode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bencode(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 71
    .local v0, "bs":[B
    invoke-static {v0, p1}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode([BLjava/io/OutputStream;)V

    .line 72
    return-void
.end method

.method public static bencode(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const/16 v2, 0x6c

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 84
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/turn/ttorrent/bcodec/BEValue;

    .line 85
    .local v1, "value":Lcom/turn/ttorrent/bcodec/BEValue;
    invoke-static {v1, p1}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/lang/Object;Ljava/io/OutputStream;)V

    goto :goto_9

    .line 87
    .end local v1    # "value":Lcom/turn/ttorrent/bcodec/BEValue;
    :cond_19
    const/16 v2, 0x65

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 88
    return-void
.end method

.method public static bencode(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 102
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 103
    .local v3, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 108
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 109
    invoke-static {v4, p1}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/lang/Object;Ljava/io/OutputStream;)V

    goto :goto_15

    .line 112
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2c
    const/16 v5, 0x65

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 113
    return-void
.end method

.method public static bencode([BLjava/io/OutputStream;)V
    .registers 4
    .param p0, "bs"    # [B
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    array-length v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "l":Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 93
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 94
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 95
    return-void
.end method
