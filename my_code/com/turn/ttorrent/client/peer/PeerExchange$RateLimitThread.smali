.class abstract Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;
.super Ljava/lang/Thread;
.source "PeerExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/peer/PeerExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RateLimitThread"
.end annotation


# instance fields
.field protected final rate:Lcom/turn/ttorrent/client/peer/Rate;

.field protected sleep:J

.field final synthetic this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;


# direct methods
.method private constructor <init>(Lcom/turn/ttorrent/client/peer/PeerExchange;)V
    .registers 4

    .prologue
    .line 203
    iput-object p1, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->this$0:Lcom/turn/ttorrent/client/peer/PeerExchange;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 205
    new-instance v0, Lcom/turn/ttorrent/client/peer/Rate;

    invoke-direct {v0}, Lcom/turn/ttorrent/client/peer/Rate;-><init>()V

    iput-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->rate:Lcom/turn/ttorrent/client/peer/Rate;

    .line 206
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->sleep:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/client/peer/PeerExchange;Lcom/turn/ttorrent/client/peer/PeerExchange$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/turn/ttorrent/client/peer/PeerExchange;
    .param p2, "x1"    # Lcom/turn/ttorrent/client/peer/PeerExchange$1;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;-><init>(Lcom/turn/ttorrent/client/peer/PeerExchange;)V

    return-void
.end method


# virtual methods
.method protected rateLimit(DJLcom/turn/ttorrent/common/protocol/PeerMessage;)V
    .registers 13
    .param p1, "maxRate"    # D
    .param p3, "messageSize"    # J
    .param p5, "message"    # Lcom/turn/ttorrent/common/protocol/PeerMessage;

    .prologue
    const-wide/16 v4, 0x32

    .line 229
    invoke-virtual {p5}, Lcom/turn/ttorrent/common/protocol/PeerMessage;->getType()Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    move-result-object v0

    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->PIECE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    if-ne v0, v1, :cond_10

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_11

    .line 249
    :cond_10
    :goto_10
    return-void

    .line 234
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->rate:Lcom/turn/ttorrent/client/peer/Rate;

    invoke-virtual {v0, p3, p4}, Lcom/turn/ttorrent/client/peer/Rate;->add(J)V

    .line 238
    iget-object v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->rate:Lcom/turn/ttorrent/client/peer/Rate;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/peer/Rate;->get()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_31

    .line 239
    iget-wide v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->sleep:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 240
    iget-wide v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->sleep:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->sleep:J

    goto :goto_10

    .line 246
    :catch_2f
    move-exception v0

    goto :goto_10

    .line 242
    :cond_31
    iget-wide v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->sleep:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3d

    iget-wide v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->sleep:J

    sub-long/2addr v0, v4

    :goto_3a
    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/PeerExchange$RateLimitThread;->sleep:J
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_3c} :catch_2f

    goto :goto_10

    :cond_3d
    const-wide/16 v0, 0x0

    goto :goto_3a
.end method
