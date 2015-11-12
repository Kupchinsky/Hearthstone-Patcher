.class public interface abstract Lcom/turn/ttorrent/client/announce/AnnounceResponseListener;
.super Ljava/lang/Object;
.source "AnnounceResponseListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract handleAnnounceResponse(III)V
.end method

.method public abstract handleDiscoveredPeers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;)V"
        }
    .end annotation
.end method
