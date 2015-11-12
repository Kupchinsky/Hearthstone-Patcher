.class public interface abstract Lcom/turn/ttorrent/client/IncomingConnectionListener;
.super Ljava/lang/Object;
.source "IncomingConnectionListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract handleFailedConnection(Lcom/turn/ttorrent/client/peer/SharingPeer;Ljava/lang/Throwable;)V
.end method

.method public abstract handleNewPeerConnection(Ljava/nio/channels/SocketChannel;[B)V
.end method
