.class Lorg/simpleframework/http/core/FlushMonitor;
.super Ljava/lang/Object;
.source "FlushMonitor.java"

# interfaces
.implements Lorg/simpleframework/http/core/Monitor;


# instance fields
.field private channel:Lorg/simpleframework/http/core/Channel;

.field private closed:Z

.field private error:Z

.field private reactor:Lorg/simpleframework/http/core/Initiator;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Initiator;Lorg/simpleframework/http/core/Entity;)V
    .registers 4
    .param p1, "reactor"    # Lorg/simpleframework/http/core/Initiator;
    .param p2, "entity"    # Lorg/simpleframework/http/core/Entity;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p2}, Lorg/simpleframework/http/core/Entity;->getChannel()Lorg/simpleframework/http/core/Channel;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/FlushMonitor;->channel:Lorg/simpleframework/http/core/Channel;

    .line 64
    iput-object p1, p0, Lorg/simpleframework/http/core/FlushMonitor;->reactor:Lorg/simpleframework/http/core/Initiator;

    .line 65
    return-void
.end method

.method private fail(Lorg/simpleframework/http/core/Sender;)V
    .registers 3
    .param p1, "sender"    # Lorg/simpleframework/http/core/Sender;

    .prologue
    .line 136
    :try_start_0
    invoke-interface {p1}, Lorg/simpleframework/http/core/Sender;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 140
    :goto_3
    return-void

    .line 137
    :catch_4
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_3
.end method


# virtual methods
.method public close(Lorg/simpleframework/http/core/Sender;)V
    .registers 4
    .param p1, "sender"    # Lorg/simpleframework/http/core/Sender;

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Lorg/simpleframework/http/core/FlushMonitor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/simpleframework/http/core/FlushMonitor;->closed:Z

    .line 80
    invoke-interface {p1}, Lorg/simpleframework/http/core/Sender;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 85
    :cond_c
    :goto_c
    return-void

    .line 82
    :catch_d
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lorg/simpleframework/http/core/FlushMonitor;->fail(Lorg/simpleframework/http/core/Sender;)V

    goto :goto_c
.end method

.method public error(Lorg/simpleframework/http/core/Sender;)V
    .registers 4
    .param p1, "sender"    # Lorg/simpleframework/http/core/Sender;

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0}, Lorg/simpleframework/http/core/FlushMonitor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/simpleframework/http/core/FlushMonitor;->error:Z

    .line 100
    invoke-interface {p1}, Lorg/simpleframework/http/core/Sender;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 105
    :cond_c
    :goto_c
    return-void

    .line 102
    :catch_d
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lorg/simpleframework/http/core/FlushMonitor;->fail(Lorg/simpleframework/http/core/Sender;)V

    goto :goto_c
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/simpleframework/http/core/FlushMonitor;->closed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/simpleframework/http/core/FlushMonitor;->error:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isError()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/simpleframework/http/core/FlushMonitor;->error:Z

    return v0
.end method

.method public ready(Lorg/simpleframework/http/core/Sender;)V
    .registers 5
    .param p1, "sender"    # Lorg/simpleframework/http/core/Sender;

    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/simpleframework/http/core/FlushMonitor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_13

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/simpleframework/http/core/FlushMonitor;->closed:Z

    .line 119
    invoke-interface {p1}, Lorg/simpleframework/http/core/Sender;->flush()V

    .line 120
    iget-object v1, p0, Lorg/simpleframework/http/core/FlushMonitor;->reactor:Lorg/simpleframework/http/core/Initiator;

    iget-object v2, p0, Lorg/simpleframework/http/core/FlushMonitor;->channel:Lorg/simpleframework/http/core/Channel;

    invoke-interface {v1, v2}, Lorg/simpleframework/http/core/Initiator;->start(Lorg/simpleframework/http/core/Channel;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 125
    :cond_13
    :goto_13
    return-void

    .line 122
    :catch_14
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lorg/simpleframework/http/core/FlushMonitor;->fail(Lorg/simpleframework/http/core/Sender;)V

    goto :goto_13
.end method
