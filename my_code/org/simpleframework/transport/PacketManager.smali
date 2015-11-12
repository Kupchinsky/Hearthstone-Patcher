.class Lorg/simpleframework/transport/PacketManager;
.super Ljava/lang/Object;
.source "PacketManager.java"

# interfaces
.implements Lorg/simpleframework/transport/Recycler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/transport/PacketManager$Queue;
    }
.end annotation


# instance fields
.field private allow:I

.field private queue:Lorg/simpleframework/transport/PacketManager$Queue;

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/simpleframework/transport/PacketManager;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "allow"    # I

    .prologue
    .line 70
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/PacketManager;-><init>(II)V

    .line 71
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "allow"    # I
    .param p2, "size"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lorg/simpleframework/transport/PacketManager$Queue;

    invoke-direct {v0, p0}, Lorg/simpleframework/transport/PacketManager$Queue;-><init>(Lorg/simpleframework/transport/PacketManager;)V

    iput-object v0, p0, Lorg/simpleframework/transport/PacketManager;->queue:Lorg/simpleframework/transport/PacketManager$Queue;

    .line 84
    iput p1, p0, Lorg/simpleframework/transport/PacketManager;->allow:I

    .line 85
    iput p2, p0, Lorg/simpleframework/transport/PacketManager;->size:I

    .line 86
    return-void
.end method

.method private build()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 148
    :try_start_0
    iget v1, p0, Lorg/simpleframework/transport/PacketManager;->size:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 150
    :goto_6
    return-object v1

    .line 149
    :catch_7
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Throwable;
    iget v1, p0, Lorg/simpleframework/transport/PacketManager;->size:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_6
.end method

.method private create()Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/transport/PacketException;
        }
    .end annotation

    .prologue
    .line 116
    iget v1, p0, Lorg/simpleframework/transport/PacketManager;->allow:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/simpleframework/transport/PacketManager;->allow:I

    if-ltz v1, :cond_d

    .line 117
    invoke-direct {p0}, Lorg/simpleframework/transport/PacketManager;->build()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 120
    :goto_c
    return-object v1

    :cond_d
    :try_start_d
    iget-object v1, p0, Lorg/simpleframework/transport/PacketManager;->queue:Lorg/simpleframework/transport/PacketManager$Queue;

    invoke-virtual {v1}, Lorg/simpleframework/transport/PacketManager$Queue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    goto :goto_c

    .line 121
    :catch_16
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/simpleframework/transport/PacketException;

    const-string v2, "Thread interrupt"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/transport/PacketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public allocate()Ljava/nio/ByteBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/simpleframework/transport/PacketException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lorg/simpleframework/transport/PacketManager;->queue:Lorg/simpleframework/transport/PacketManager$Queue;

    invoke-virtual {v1}, Lorg/simpleframework/transport/PacketManager$Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 100
    .local v0, "next":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_b

    .line 103
    .end local v0    # "next":Ljava/nio/ByteBuffer;
    :goto_a
    return-object v0

    .restart local v0    # "next":Ljava/nio/ByteBuffer;
    :cond_b
    invoke-direct {p0}, Lorg/simpleframework/transport/PacketManager;->create()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_a
.end method

.method public recycle(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 136
    iget-object v0, p0, Lorg/simpleframework/transport/PacketManager;->queue:Lorg/simpleframework/transport/PacketManager$Queue;

    invoke-virtual {v0, p1}, Lorg/simpleframework/transport/PacketManager$Queue;->offer(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method
