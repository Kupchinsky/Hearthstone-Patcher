.class public Lorg/simpleframework/util/buffer/BufferException;
.super Ljava/io/IOException;
.source "BufferException.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 41
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
