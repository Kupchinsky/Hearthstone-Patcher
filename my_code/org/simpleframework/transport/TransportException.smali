.class public Lorg/simpleframework/transport/TransportException;
.super Ljava/io/IOException;
.source "TransportException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p2}, Lorg/simpleframework/transport/TransportException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 54
    return-void
.end method
