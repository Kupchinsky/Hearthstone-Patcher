.class public abstract Lcom/turn/ttorrent/common/protocol/PeerMessage;
.super Ljava/lang/Object;
.source "PeerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/common/protocol/PeerMessage$1;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$InterestedMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$ChokeMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$KeepAliveMessage;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;,
        Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    }
.end annotation


# static fields
.field public static final MESSAGE_LENGTH_FIELD_SIZE:I = 0x4


# instance fields
.field private final data:Ljava/nio/ByteBuffer;

.field private final type:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;


# direct methods
.method private constructor <init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "type"    # Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage;->type:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 91
    iput-object p2, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage;->data:Ljava/nio/ByteBuffer;

    .line 92
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/common/protocol/PeerMessage$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;
    .param p3, "x2"    # Lcom/turn/ttorrent/common/protocol/PeerMessage$1;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/turn/ttorrent/common/protocol/PeerMessage;-><init>(Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage;
    .registers 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 149
    .local v0, "length":I
    if-nez v0, :cond_b

    .line 150
    invoke-static {p0, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$KeepAliveMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$KeepAliveMessage;

    move-result-object v2

    .line 180
    :goto_a
    return-object v2

    .line 151
    :cond_b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eq v0, v2, :cond_1a

    .line 152
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Message size did not match announced size!"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 156
    :cond_1a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->get(B)Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    move-result-object v1

    .line 157
    .local v1, "type":Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    if-nez v1, :cond_32

    .line 158
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Unknown message ID!"

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 162
    :cond_32
    sget-object v2, Lcom/turn/ttorrent/common/protocol/PeerMessage$1;->$SwitchMap$com$turn$ttorrent$common$protocol$PeerMessage$Type:[I

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_98

    .line 182
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Message type should have been properly defined by now."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :pswitch_45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$ChokeMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$ChokeMessage;

    move-result-object v2

    goto :goto_a

    .line 166
    :pswitch_4e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$UnchokeMessage;

    move-result-object v2

    goto :goto_a

    .line 168
    :pswitch_57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$InterestedMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$InterestedMessage;

    move-result-object v2

    goto :goto_a

    .line 170
    :pswitch_60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$NotInterestedMessage;

    move-result-object v2

    goto :goto_a

    .line 172
    :pswitch_69
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$HaveMessage;

    move-result-object v2

    goto :goto_a

    .line 174
    :pswitch_72
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$BitfieldMessage;

    move-result-object v2

    goto :goto_a

    .line 176
    :pswitch_7b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$RequestMessage;

    move-result-object v2

    goto :goto_a

    .line 178
    :pswitch_84
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$PieceMessage;

    move-result-object v2

    goto/16 :goto_a

    .line 180
    :pswitch_8e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;->parse(Ljava/nio/ByteBuffer;Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage$CancelMessage;

    move-result-object v2

    goto/16 :goto_a

    .line 162
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_45
        :pswitch_4e
        :pswitch_57
        :pswitch_60
        :pswitch_69
        :pswitch_72
        :pswitch_7b
        :pswitch_84
        :pswitch_8e
    .end packed-switch
.end method


# virtual methods
.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage;->type:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->getType()Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/turn/ttorrent/client/SharedTorrent;)Lcom/turn/ttorrent/common/protocol/PeerMessage;
    .registers 2
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/PeerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 125
    return-object p0
.end method
