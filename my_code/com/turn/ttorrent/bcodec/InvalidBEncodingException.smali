.class public Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
.super Ljava/io/IOException;
.source "InvalidBEncodingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
