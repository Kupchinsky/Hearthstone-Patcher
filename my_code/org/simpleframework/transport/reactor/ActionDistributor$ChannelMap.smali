.class Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;
.super Ljava/util/HashMap;
.source "ActionDistributor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/transport/reactor/ActionDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/nio/channels/Channel;",
        "Ljava/nio/channels/SelectionKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/transport/reactor/ActionDistributor;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/reactor/ActionDistributor;)V
    .registers 2

    .prologue
    .line 471
    iput-object p1, p0, Lorg/simpleframework/transport/reactor/ActionDistributor$ChannelMap;->this$0:Lorg/simpleframework/transport/reactor/ActionDistributor;

    .line 472
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 473
    return-void
.end method
