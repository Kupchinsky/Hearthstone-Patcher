.class public Lru/killer666/apache/commons/codec/binary/Base64OutputStream;
.super Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;
.source "Base64OutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lru/killer666/apache/commons/codec/binary/Base64OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z

    .prologue
    .line 65
    new-instance v0, Lru/killer666/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/codec/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lru/killer666/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z
    .param p3, "lineLength"    # I
    .param p4, "lineSeparator"    # [B

    .prologue
    .line 86
    new-instance v0, Lru/killer666/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lru/killer666/apache/commons/codec/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lru/killer666/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lru/killer666/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 87
    return-void
.end method
