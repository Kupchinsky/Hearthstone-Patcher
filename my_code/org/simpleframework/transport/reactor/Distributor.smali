.class interface abstract Lorg/simpleframework/transport/reactor/Distributor;
.super Ljava/lang/Object;
.source "Distributor.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract process(Lorg/simpleframework/transport/reactor/Operation;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
