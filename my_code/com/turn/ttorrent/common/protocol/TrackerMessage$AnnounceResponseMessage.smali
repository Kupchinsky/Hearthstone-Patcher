.class public interface abstract Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;
.super Ljava/lang/Object;
.source "TrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/TrackerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnounceResponseMessage"
.end annotation


# virtual methods
.method public abstract getComplete()I
.end method

.method public abstract getIncomplete()I
.end method

.method public abstract getInterval()I
.end method

.method public abstract getPeers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Peer;",
            ">;"
        }
    .end annotation
.end method
