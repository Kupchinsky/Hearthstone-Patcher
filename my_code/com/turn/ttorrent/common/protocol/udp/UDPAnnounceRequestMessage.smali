.class public Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;
.super Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerRequestMessage;
.source "UDPAnnounceRequestMessage.java"

# interfaces
.implements Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage;


# static fields
.field private static final UDP_ANNOUNCE_REQUEST_MESSAGE_SIZE:I = 0x62


# instance fields
.field private final actionId:I

.field private final connectionId:J

.field private final downloaded:J

.field private final event:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

.field private final infoHash:[B

.field private final ip:Ljava/net/InetAddress;

.field private final key:I

.field private final left:J

.field private final numWant:I

.field private final peerId:[B

.field private final port:S

.field private final transactionId:I

.field private final uploaded:J


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JI[B[BJJJLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Ljava/net/InetAddress;IIS)V
    .registers 21
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "connectionId"    # J
    .param p4, "transactionId"    # I
    .param p5, "infoHash"    # [B
    .param p6, "peerId"    # [B
    .param p7, "downloaded"    # J
    .param p9, "uploaded"    # J
    .param p11, "left"    # J
    .param p13, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .param p14, "ip"    # Ljava/net/InetAddress;
    .param p15, "key"    # I
    .param p16, "numWant"    # I
    .param p17, "port"    # S

    .prologue
    .line 56
    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-direct {p0, v1, p1}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerRequestMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 39
    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v1}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v1

    iput v1, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->actionId:I

    .line 57
    iput-wide p2, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->connectionId:J

    .line 58
    iput p4, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->transactionId:I

    .line 59
    iput-object p5, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->infoHash:[B

    .line 60
    iput-object p6, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->peerId:[B

    .line 61
    iput-wide p7, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->downloaded:J

    .line 62
    iput-wide p9, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->uploaded:J

    .line 63
    iput-wide p11, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->left:J

    .line 64
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->event:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 65
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->ip:Ljava/net/InetAddress;

    .line 66
    move/from16 v0, p15

    iput v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->key:I

    .line 67
    move/from16 v0, p16

    iput v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->numWant:I

    .line 68
    move/from16 v0, p17

    iput-short v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->port:S

    .line 69
    return-void
.end method

.method public static craft(JI[B[BJJJLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Ljava/net/InetAddress;III)Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;
    .registers 37
    .param p0, "connectionId"    # J
    .param p2, "transactionId"    # I
    .param p3, "infoHash"    # [B
    .param p4, "peerId"    # [B
    .param p5, "downloaded"    # J
    .param p7, "uploaded"    # J
    .param p9, "left"    # J
    .param p11, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .param p12, "ip"    # Ljava/net/InetAddress;
    .param p13, "key"    # I
    .param p14, "numWant"    # I
    .param p15, "port"    # I

    .prologue
    .line 216
    move-object/from16 v0, p3

    array-length v2, v0

    const/16 v3, 0x14

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p4

    array-length v2, v0

    const/16 v3, 0x14

    if-eq v2, v3, :cond_14

    .line 217
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 220
    :cond_14
    move-object/from16 v0, p12

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-nez v2, :cond_22

    .line 221
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only IPv4 addresses are supported by the UDP tracer protocol!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_22
    const/16 v2, 0x62

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 226
    .local v4, "data":Ljava/nio/ByteBuffer;
    move-wide/from16 v0, p0

    invoke-virtual {v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 227
    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 228
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 229
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 230
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 231
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 232
    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 233
    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual/range {p11 .. p11}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 235
    invoke-virtual/range {p12 .. p12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 236
    move/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 237
    move/from16 v0, p14

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 238
    move/from16 v0, p15

    int-to-short v2, v0

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 239
    new-instance v3, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;

    move/from16 v0, p15

    int-to-short v0, v0

    move/from16 v20, v0

    move-wide/from16 v5, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    move/from16 v19, p14

    invoke-direct/range {v3 .. v20}, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;-><init>(Ljava/nio/ByteBuffer;JI[B[BJJJLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Ljava/net/InetAddress;IIS)V

    return-object v3
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;
    .registers 23
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x62

    if-eq v3, v4, :cond_10

    .line 157
    new-instance v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v4, "Invalid announce request message size!"

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    .line 163
    .local v5, "connectionId":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    sget-object v4, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ANNOUNCE_REQUEST:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v4

    if-eq v3, v4, :cond_28

    .line 164
    new-instance v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v4, "Invalid action code for announce request!"

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :cond_28
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 169
    .local v7, "transactionId":I
    const/16 v3, 0x14

    new-array v8, v3, [B

    .line 170
    .local v8, "infoHash":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 171
    const/16 v3, 0x14

    new-array v9, v3, [B

    .line 172
    .local v9, "peerId":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v10

    .line 174
    .local v10, "downloaded":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    .line 175
    .local v12, "uploaded":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .line 177
    .local v14, "left":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->getById(I)Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    move-result-object v16

    .line 178
    .local v16, "event":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    if-nez v16, :cond_5c

    .line 179
    new-instance v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v4, "Invalid event type in announce request!"

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_5c
    const/16 v17, 0x0

    .line 185
    .local v17, "ip":Ljava/net/InetAddress;
    const/4 v3, 0x4

    :try_start_5f
    new-array v2, v3, [B

    .line 186
    .local v2, "ipBytes":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 187
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_69
    .catch Ljava/net/UnknownHostException; {:try_start_5f .. :try_end_69} :catch_7e

    move-result-object v17

    .line 193
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    .line 194
    .local v18, "key":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v19

    .line 195
    .local v19, "numWant":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v20

    .line 197
    .local v20, "port":S
    new-instance v3, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v20}, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;-><init>(Ljava/nio/ByteBuffer;JI[B[BJJJLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Ljava/net/InetAddress;IIS)V

    return-object v3

    .line 188
    .end local v2    # "ipBytes":[B
    .end local v18    # "key":I
    .end local v19    # "numWant":I
    .end local v20    # "port":S
    :catch_7e
    move-exception v21

    .line 189
    .local v21, "uhe":Ljava/net/UnknownHostException;
    new-instance v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v4, "Invalid IP address in announce request!"

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getActionId()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->actionId:I

    return v0
.end method

.method public getCompact()Z
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public getConnectionId()J
    .registers 3

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->connectionId:J

    return-wide v0
.end method

.method public getDownloaded()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->downloaded:J

    return-wide v0
.end method

.method public getEvent()Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->event:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    return-object v0
.end method

.method public getHexInfoHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->infoHash:[B

    invoke-static {v0}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHexPeerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->peerId:[B

    invoke-static {v0}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoHash()[B
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->infoHash:[B

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->ip:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->key:I

    return v0
.end method

.method public getLeft()J
    .registers 3

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->left:J

    return-wide v0
.end method

.method public getNoPeerIds()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public getNumWant()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->numWant:I

    return v0
.end method

.method public getPeerId()[B
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->peerId:[B

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 107
    iget-short v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->port:S

    return v0
.end method

.method public getTransactionId()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->transactionId:I

    return v0
.end method

.method public getUploaded()J
    .registers 3

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPAnnounceRequestMessage;->uploaded:J

    return-wide v0
.end method
