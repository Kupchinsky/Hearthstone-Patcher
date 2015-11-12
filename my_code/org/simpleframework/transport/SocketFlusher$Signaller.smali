.class Lorg/simpleframework/transport/SocketFlusher$Signaller;
.super Ljava/lang/Object;
.source "SocketFlusher.java"

# interfaces
.implements Lorg/simpleframework/transport/reactor/Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/transport/SocketFlusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Signaller"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/transport/SocketFlusher;

.field private final writer:Lorg/simpleframework/transport/Writer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/SocketFlusher;Lorg/simpleframework/transport/Writer;)V
    .registers 3
    .param p2, "writer"    # Lorg/simpleframework/transport/Writer;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/simpleframework/transport/SocketFlusher$Signaller;->this$0:Lorg/simpleframework/transport/SocketFlusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lorg/simpleframework/transport/SocketFlusher$Signaller;->writer:Lorg/simpleframework/transport/Writer;

    .line 169
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/transport/SocketFlusher$Signaller;->this$0:Lorg/simpleframework/transport/SocketFlusher;

    # invokes: Lorg/simpleframework/transport/SocketFlusher;->abort()V
    invoke-static {v1}, Lorg/simpleframework/transport/SocketFlusher;->access$100(Lorg/simpleframework/transport/SocketFlusher;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 209
    :goto_5
    return-void

    .line 206
    :catch_6
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_5
.end method

.method public bridge synthetic getChannel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/simpleframework/transport/SocketFlusher$Signaller;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/simpleframework/transport/SocketFlusher$Signaller;->writer:Lorg/simpleframework/transport/Writer;

    invoke-interface {v0}, Lorg/simpleframework/transport/Writer;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lorg/simpleframework/transport/SocketFlusher$Signaller;->this$0:Lorg/simpleframework/transport/SocketFlusher;

    # invokes: Lorg/simpleframework/transport/SocketFlusher;->execute()V
    invoke-static {v1}, Lorg/simpleframework/transport/SocketFlusher;->access$000(Lorg/simpleframework/transport/SocketFlusher;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 195
    :goto_5
    return-void

    .line 192
    :catch_6
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/simpleframework/transport/SocketFlusher$Signaller;->cancel()V

    goto :goto_5
.end method
