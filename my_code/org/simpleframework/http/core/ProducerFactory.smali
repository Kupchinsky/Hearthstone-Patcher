.class Lorg/simpleframework/http/core/ProducerFactory;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# instance fields
.field private final monitor:Lorg/simpleframework/http/core/Monitor;

.field private final sender:Lorg/simpleframework/http/core/Sender;

.field private final support:Lorg/simpleframework/http/core/Conversation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Conversation;Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V
    .registers 4
    .param p1, "support"    # Lorg/simpleframework/http/core/Conversation;
    .param p2, "sender"    # Lorg/simpleframework/http/core/Sender;
    .param p3, "monitor"    # Lorg/simpleframework/http/core/Monitor;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/simpleframework/http/core/ProducerFactory;->support:Lorg/simpleframework/http/core/Conversation;

    .line 65
    iput-object p2, p0, Lorg/simpleframework/http/core/ProducerFactory;->sender:Lorg/simpleframework/http/core/Sender;

    .line 66
    iput-object p3, p0, Lorg/simpleframework/http/core/ProducerFactory;->monitor:Lorg/simpleframework/http/core/Monitor;

    .line 67
    return-void
.end method

.method private getInstance(Z)Lorg/simpleframework/http/core/Producer;
    .registers 6
    .param p1, "chunkable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lorg/simpleframework/http/core/ProducerFactory;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v1}, Lorg/simpleframework/http/core/Conversation;->getContentLength()I

    move-result v0

    .line 104
    .local v0, "length":I
    iget-object v1, p0, Lorg/simpleframework/http/core/ProducerFactory;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v1}, Lorg/simpleframework/http/core/Conversation;->isHead()Z

    move-result v1

    if-nez v1, :cond_26

    .line 105
    if-lez v0, :cond_1a

    .line 106
    new-instance v1, Lorg/simpleframework/http/core/FixedProducer;

    iget-object v2, p0, Lorg/simpleframework/http/core/ProducerFactory;->sender:Lorg/simpleframework/http/core/Sender;

    iget-object v3, p0, Lorg/simpleframework/http/core/ProducerFactory;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-direct {v1, v2, v3, v0}, Lorg/simpleframework/http/core/FixedProducer;-><init>(Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;I)V

    .line 112
    :goto_19
    return-object v1

    .line 108
    :cond_1a
    if-eqz p1, :cond_26

    .line 109
    new-instance v1, Lorg/simpleframework/http/core/ChunkedProducer;

    iget-object v2, p0, Lorg/simpleframework/http/core/ProducerFactory;->sender:Lorg/simpleframework/http/core/Sender;

    iget-object v3, p0, Lorg/simpleframework/http/core/ProducerFactory;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/http/core/ChunkedProducer;-><init>(Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V

    goto :goto_19

    .line 112
    :cond_26
    new-instance v1, Lorg/simpleframework/http/core/EmptyProducer;

    iget-object v2, p0, Lorg/simpleframework/http/core/ProducerFactory;->sender:Lorg/simpleframework/http/core/Sender;

    iget-object v3, p0, Lorg/simpleframework/http/core/ProducerFactory;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/http/core/EmptyProducer;-><init>(Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V

    goto :goto_19
.end method


# virtual methods
.method public getInstance()Lorg/simpleframework/http/core/Producer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v2, p0, Lorg/simpleframework/http/core/ProducerFactory;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v2}, Lorg/simpleframework/http/core/Conversation;->isKeepAlive()Z

    move-result v1

    .line 81
    .local v1, "keepAlive":Z
    iget-object v2, p0, Lorg/simpleframework/http/core/ProducerFactory;->support:Lorg/simpleframework/http/core/Conversation;

    invoke-virtual {v2}, Lorg/simpleframework/http/core/Conversation;->isChunkedEncoded()Z

    move-result v0

    .line 83
    .local v0, "chunkable":Z
    if-nez v1, :cond_18

    .line 84
    new-instance v2, Lorg/simpleframework/http/core/CloseProducer;

    iget-object v3, p0, Lorg/simpleframework/http/core/ProducerFactory;->sender:Lorg/simpleframework/http/core/Sender;

    iget-object v4, p0, Lorg/simpleframework/http/core/ProducerFactory;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/http/core/CloseProducer;-><init>(Lorg/simpleframework/http/core/Sender;Lorg/simpleframework/http/core/Monitor;)V

    .line 86
    :goto_17
    return-object v2

    :cond_18
    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/ProducerFactory;->getInstance(Z)Lorg/simpleframework/http/core/Producer;

    move-result-object v2

    goto :goto_17
.end method
