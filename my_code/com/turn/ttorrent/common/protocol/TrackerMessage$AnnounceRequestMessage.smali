.class public interface abstract Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage;
.super Ljava/lang/Object;
.source "TrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/TrackerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnounceRequestMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    }
.end annotation


# static fields
.field public static final DEFAULT_NUM_WANT:I = 0x32


# virtual methods
.method public abstract getCompact()Z
.end method

.method public abstract getDownloaded()J
.end method

.method public abstract getEvent()Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
.end method

.method public abstract getHexInfoHash()Ljava/lang/String;
.end method

.method public abstract getHexPeerId()Ljava/lang/String;
.end method

.method public abstract getInfoHash()[B
.end method

.method public abstract getIp()Ljava/lang/String;
.end method

.method public abstract getLeft()J
.end method

.method public abstract getNoPeerIds()Z
.end method

.method public abstract getNumWant()I
.end method

.method public abstract getPeerId()[B
.end method

.method public abstract getPort()I
.end method

.method public abstract getUploaded()J
.end method
