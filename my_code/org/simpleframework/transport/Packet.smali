.class interface abstract Lorg/simpleframework/transport/Packet;
.super Ljava/lang/Object;
.source "Packet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/simpleframework/transport/Packet;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract append(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract append(Ljava/nio/ByteBuffer;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract capacity()I
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract compareTo(Lorg/simpleframework/transport/Packet;)I
.end method

.method public abstract encode()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extract()Lorg/simpleframework/transport/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isReference()Z
.end method

.method public abstract length()I
.end method

.method public abstract sequence()J
.end method

.method public abstract space()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract write(Ljava/nio/channels/ByteChannel;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/nio/channels/ByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
