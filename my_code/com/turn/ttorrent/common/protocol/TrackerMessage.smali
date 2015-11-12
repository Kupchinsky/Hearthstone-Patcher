.class public abstract Lcom/turn/ttorrent/common/protocol/TrackerMessage;
.super Ljava/lang/Object;
.source "TrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;,
        Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceResponseMessage;,
        Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage;,
        Lcom/turn/ttorrent/common/protocol/TrackerMessage$ConnectionResponseMessage;,
        Lcom/turn/ttorrent/common/protocol/TrackerMessage$ConnectionRequestMessage;,
        Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;,
        Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    }
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final type:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;


# direct methods
.method protected constructor <init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "type"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage;->type:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    .line 74
    iput-object p2, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage;->data:Ljava/nio/ByteBuffer;

    .line 75
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_10

    .line 76
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 78
    :cond_10
    return-void
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getType()Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage;->type:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    return-object v0
.end method
