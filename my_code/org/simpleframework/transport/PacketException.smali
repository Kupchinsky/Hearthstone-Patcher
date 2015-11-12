.class Lorg/simpleframework/transport/PacketException;
.super Lorg/simpleframework/transport/TransportException;
.source "PacketException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
