.class Lorg/simpleframework/transport/NegotiationException;
.super Lorg/simpleframework/transport/TransportException;
.source "NegotiationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/simpleframework/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
