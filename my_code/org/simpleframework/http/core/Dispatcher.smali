.class Lorg/simpleframework/http/core/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final container:Lorg/simpleframework/http/core/Container;

.field private final entity:Lorg/simpleframework/http/core/Entity;

.field private final monitor:Lorg/simpleframework/http/core/Monitor;

.field private final request:Lorg/simpleframework/http/Request;

.field private final response:Lorg/simpleframework/http/Response;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Container;Lorg/simpleframework/http/core/Initiator;Lorg/simpleframework/http/core/Entity;)V
    .registers 7
    .param p1, "container"    # Lorg/simpleframework/http/core/Container;
    .param p2, "reactor"    # Lorg/simpleframework/http/core/Initiator;
    .param p3, "entity"    # Lorg/simpleframework/http/core/Entity;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/simpleframework/http/core/FlushMonitor;

    invoke-direct {v0, p2, p3}, Lorg/simpleframework/http/core/FlushMonitor;-><init>(Lorg/simpleframework/http/core/Initiator;Lorg/simpleframework/http/core/Entity;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/Dispatcher;->monitor:Lorg/simpleframework/http/core/Monitor;

    .line 76
    new-instance v0, Lorg/simpleframework/http/core/RequestEntity;

    iget-object v1, p0, Lorg/simpleframework/http/core/Dispatcher;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-direct {v0, p3, v1}, Lorg/simpleframework/http/core/RequestEntity;-><init>(Lorg/simpleframework/http/core/Entity;Lorg/simpleframework/http/core/Monitor;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/Dispatcher;->request:Lorg/simpleframework/http/Request;

    .line 77
    new-instance v0, Lorg/simpleframework/http/core/ResponseEntity;

    iget-object v1, p0, Lorg/simpleframework/http/core/Dispatcher;->request:Lorg/simpleframework/http/Request;

    iget-object v2, p0, Lorg/simpleframework/http/core/Dispatcher;->monitor:Lorg/simpleframework/http/core/Monitor;

    invoke-direct {v0, v1, p3, v2}, Lorg/simpleframework/http/core/ResponseEntity;-><init>(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/core/Entity;Lorg/simpleframework/http/core/Monitor;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/Dispatcher;->response:Lorg/simpleframework/http/Response;

    .line 78
    iput-object p1, p0, Lorg/simpleframework/http/core/Dispatcher;->container:Lorg/simpleframework/http/core/Container;

    .line 79
    iput-object p3, p0, Lorg/simpleframework/http/core/Dispatcher;->entity:Lorg/simpleframework/http/core/Entity;

    .line 80
    return-void
.end method

.method private dispatch()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v2, p0, Lorg/simpleframework/http/core/Dispatcher;->entity:Lorg/simpleframework/http/core/Entity;

    invoke-interface {v2}, Lorg/simpleframework/http/core/Entity;->getChannel()Lorg/simpleframework/http/core/Channel;

    move-result-object v0

    .line 107
    .local v0, "channel":Lorg/simpleframework/http/core/Channel;
    :try_start_6
    iget-object v2, p0, Lorg/simpleframework/http/core/Dispatcher;->container:Lorg/simpleframework/http/core/Container;

    iget-object v3, p0, Lorg/simpleframework/http/core/Dispatcher;->request:Lorg/simpleframework/http/Request;

    iget-object v4, p0, Lorg/simpleframework/http/core/Dispatcher;->response:Lorg/simpleframework/http/Response;

    invoke-interface {v2, v3, v4}, Lorg/simpleframework/http/core/Container;->handle(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/Response;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_10

    .line 111
    :goto_f
    return-void

    .line 108
    :catch_10
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Throwable;
    invoke-interface {v0}, Lorg/simpleframework/http/core/Channel;->close()V

    goto :goto_f
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 90
    :try_start_0
    invoke-direct {p0}, Lorg/simpleframework/http/core/Dispatcher;->dispatch()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 94
    :goto_3
    return-void

    .line 91
    :catch_4
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_3
.end method
