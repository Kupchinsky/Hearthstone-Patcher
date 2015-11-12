.class Lorg/simpleframework/transport/SegmentBuilder$Queue;
.super Ljava/util/PriorityQueue;
.source "SegmentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/transport/SegmentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Queue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/PriorityQueue",
        "<",
        "Lorg/simpleframework/transport/Packet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/transport/SegmentBuilder;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/SegmentBuilder;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lorg/simpleframework/transport/SegmentBuilder$Queue;->this$0:Lorg/simpleframework/transport/SegmentBuilder;

    .line 248
    invoke-direct {p0}, Ljava/util/PriorityQueue;-><init>()V

    .line 249
    return-void
.end method
