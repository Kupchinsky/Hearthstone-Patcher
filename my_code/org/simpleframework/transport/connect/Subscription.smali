.class Lorg/simpleframework/transport/connect/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Lorg/simpleframework/transport/Socket;


# instance fields
.field private final channel:Ljava/nio/channels/SocketChannel;

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;)V
    .registers 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/transport/connect/Subscription;-><init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;)V
    .registers 4
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/transport/connect/Subscription;->map:Ljava/util/Map;

    .line 83
    iput-object p2, p0, Lorg/simpleframework/transport/connect/Subscription;->engine:Ljavax/net/ssl/SSLEngine;

    .line 84
    iput-object p1, p0, Lorg/simpleframework/transport/connect/Subscription;->channel:Ljava/nio/channels/SocketChannel;

    .line 85
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Subscription;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Subscription;->channel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public getEngine()Ljavax/net/ssl/SSLEngine;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/simpleframework/transport/connect/Subscription;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method
