.class public Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;
.super Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;
.source "UDPTrackerErrorMessage.java"

# interfaces
.implements Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;


# static fields
.field private static final UDP_TRACKER_ERROR_MIN_MESSAGE_SIZE:I = 0x8


# instance fields
.field private final actionId:I

.field private final reason:Ljava/lang/String;

.field private final transactionId:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;ILjava/lang/String;)V
    .registers 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "transactionId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ERROR:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-direct {p0, v0, p1}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerMessage$UDPTrackerResponseMessage;-><init>(Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;Ljava/nio/ByteBuffer;)V

    .line 36
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ERROR:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v0

    iput v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;->actionId:I

    .line 43
    iput p2, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;->transactionId:I

    .line 44
    iput-object p3, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;->reason:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static craft(ILjava/lang/String;)Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;
    .registers 5
    .param p0, "transactionId"    # I
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v2, "ISO-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 92
    .local v1, "reasonBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    .local v0, "data":Ljava/nio/ByteBuffer;
    sget-object v2, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ERROR:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 98
    new-instance v2, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;

    invoke-direct {v2, v0, p0, p1}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;-><init>(Ljava/nio/ByteBuffer;ILjava/lang/String;)V

    return-object v2
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;
    .registers 7
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_10

    .line 65
    new-instance v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v4, "Invalid tracker error message size!"

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    sget-object v4, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->ERROR:Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;

    invoke-virtual {v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$Type;->getId()I

    move-result v4

    if-eq v3, v4, :cond_24

    .line 70
    new-instance v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v4, "Invalid action code for tracker error!"

    invoke-direct {v3, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_24
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 75
    .local v1, "transactionId":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v0, v3, [B

    .line 76
    .local v0, "reasonBytes":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    :try_start_31
    new-instance v3, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;

    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, p0, v1, v4}, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;-><init>(Ljava/nio/ByteBuffer;ILjava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_3d} :catch_3e

    return-object v3

    .line 83
    :catch_3e
    move-exception v2

    .line 84
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;

    const-string v4, "Could not decode error message!"

    invoke-direct {v3, v4, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getActionId()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;->actionId:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/udp/UDPTrackerErrorMessage;->transactionId:I

    return v0
.end method
