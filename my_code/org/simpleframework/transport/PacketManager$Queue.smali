.class Lorg/simpleframework/transport/PacketManager$Queue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "PacketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/transport/PacketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Queue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/transport/PacketManager;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/PacketManager;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lorg/simpleframework/transport/PacketManager$Queue;->this$0:Lorg/simpleframework/transport/PacketManager;

    .line 169
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 170
    return-void
.end method
