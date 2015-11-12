.class Lorg/simpleframework/transport/PacketAllocator;
.super Ljava/lang/Object;
.source "PacketAllocator.java"


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private final manager:Lorg/simpleframework/transport/PacketManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/simpleframework/transport/PacketAllocator;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "allow"    # I

    .prologue
    .line 64
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/PacketAllocator;-><init>(II)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "allow"    # I
    .param p2, "size"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lorg/simpleframework/transport/PacketManager;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/transport/PacketManager;-><init>(II)V

    iput-object v0, p0, Lorg/simpleframework/transport/PacketAllocator;->manager:Lorg/simpleframework/transport/PacketManager;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/transport/PacketAllocator;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    return-void
.end method


# virtual methods
.method public allocate()Lorg/simpleframework/transport/Packet;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/transport/PacketException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v1, p0, Lorg/simpleframework/transport/PacketAllocator;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 91
    .local v2, "sequence":J
    iget-object v1, p0, Lorg/simpleframework/transport/PacketAllocator;->manager:Lorg/simpleframework/transport/PacketManager;

    invoke-virtual {v1}, Lorg/simpleframework/transport/PacketManager;->allocate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 93
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lorg/simpleframework/transport/Appender;

    iget-object v4, p0, Lorg/simpleframework/transport/PacketAllocator;->manager:Lorg/simpleframework/transport/PacketManager;

    invoke-direct {v1, v0, v4, v2, v3}, Lorg/simpleframework/transport/Appender;-><init>(Ljava/nio/ByteBuffer;Lorg/simpleframework/transport/Recycler;J)V

    return-object v1
.end method

.method public allocate(Ljava/nio/ByteBuffer;)Lorg/simpleframework/transport/Packet;
    .registers 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/transport/PacketException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v2, p0, Lorg/simpleframework/transport/PacketAllocator;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 108
    .local v0, "sequence":J
    new-instance v2, Lorg/simpleframework/transport/Wrapper;

    invoke-direct {v2, p1, v0, v1}, Lorg/simpleframework/transport/Wrapper;-><init>(Ljava/nio/ByteBuffer;J)V

    return-object v2
.end method
