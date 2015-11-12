.class Lorg/simpleframework/transport/connect/ConnectionException;
.super Ljava/io/IOException;
.source "ConnectionException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p2}, Lorg/simpleframework/transport/connect/ConnectionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 57
    return-void
.end method
