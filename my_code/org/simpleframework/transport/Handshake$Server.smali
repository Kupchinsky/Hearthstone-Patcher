.class Lorg/simpleframework/transport/Handshake$Server;
.super Lorg/simpleframework/transport/Task;
.source "Handshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/transport/Handshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Server"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/transport/Handshake;


# direct methods
.method public constructor <init>(Lorg/simpleframework/transport/Handshake;Lorg/simpleframework/transport/Negotiation;)V
    .registers 5
    .param p2, "state"    # Lorg/simpleframework/transport/Negotiation;

    .prologue
    .line 504
    iput-object p1, p0, Lorg/simpleframework/transport/Handshake$Server;->this$0:Lorg/simpleframework/transport/Handshake;

    .line 505
    # getter for: Lorg/simpleframework/transport/Handshake;->negotiator:Lorg/simpleframework/transport/Negotiator;
    invoke-static {p1}, Lorg/simpleframework/transport/Handshake;->access$000(Lorg/simpleframework/transport/Handshake;)Lorg/simpleframework/transport/Negotiator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, p2, v0, v1}, Lorg/simpleframework/transport/Task;-><init>(Lorg/simpleframework/transport/Negotiation;Lorg/simpleframework/transport/reactor/Reactor;I)V

    .line 506
    return-void
.end method


# virtual methods
.method protected ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lorg/simpleframework/transport/Handshake$Server;->state:Lorg/simpleframework/transport/Negotiation;

    invoke-interface {v0}, Lorg/simpleframework/transport/Negotiation;->send()Z

    move-result v0

    return v0
.end method
