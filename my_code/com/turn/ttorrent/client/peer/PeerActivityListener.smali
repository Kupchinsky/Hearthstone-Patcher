.class public interface abstract Lcom/turn/ttorrent/client/peer/PeerActivityListener;
.super Ljava/lang/Object;
.source "PeerActivityListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract handleBitfieldAvailability(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/util/BitSet;)V
.end method

.method public abstract handleIOException(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/io/IOException;)V
.end method

.method public abstract handlePeerChoked(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
.end method

.method public abstract handlePeerDisconnected(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
.end method

.method public abstract handlePeerReady(Lcom/turn/ttorrent/client/peer/SharingPeer;)V
.end method

.method public abstract handlePieceAvailability(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V
.end method

.method public abstract handlePieceCompleted(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract handlePieceSent(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/Piece;)V
.end method
