.class public Lcom/turn/ttorrent/client/Client$ClientShutdown;
.super Ljava/util/TimerTask;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientShutdown"
.end annotation


# instance fields
.field private final client:Lcom/turn/ttorrent/client/Client;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/turn/ttorrent/client/Client;Ljava/util/Timer;)V
    .registers 3
    .param p1, "client"    # Lcom/turn/ttorrent/client/Client;
    .param p2, "timer"    # Ljava/util/Timer;

    .prologue
    .line 978
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 979
    iput-object p1, p0, Lcom/turn/ttorrent/client/Client$ClientShutdown;->client:Lcom/turn/ttorrent/client/Client;

    .line 980
    iput-object p2, p0, Lcom/turn/ttorrent/client/Client$ClientShutdown;->timer:Ljava/util/Timer;

    .line 981
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client$ClientShutdown;->client:Lcom/turn/ttorrent/client/Client;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/Client;->stop()V

    .line 986
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client$ClientShutdown;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    .line 987
    iget-object v0, p0, Lcom/turn/ttorrent/client/Client$ClientShutdown;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 989
    :cond_e
    return-void
.end method
