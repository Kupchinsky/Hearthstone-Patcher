.class public Lorg/simpleframework/http/resource/ResourceContainer;
.super Ljava/lang/Object;
.source "ResourceContainer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Container;


# instance fields
.field private final engine:Lorg/simpleframework/http/resource/ResourceEngine;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/resource/ResourceEngine;)V
    .registers 2
    .param p1, "engine"    # Lorg/simpleframework/http/resource/ResourceEngine;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/simpleframework/http/resource/ResourceContainer;->engine:Lorg/simpleframework/http/resource/ResourceEngine;

    .line 57
    return-void
.end method


# virtual methods
.method public handle(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/Response;)V
    .registers 5
    .param p1, "req"    # Lorg/simpleframework/http/Request;
    .param p2, "resp"    # Lorg/simpleframework/http/Response;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/simpleframework/http/resource/ResourceContainer;->engine:Lorg/simpleframework/http/resource/ResourceEngine;

    invoke-interface {p1}, Lorg/simpleframework/http/Request;->getAddress()Lorg/simpleframework/http/Address;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/simpleframework/http/resource/ResourceEngine;->resolve(Lorg/simpleframework/http/Address;)Lorg/simpleframework/http/resource/Resource;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/http/resource/Resource;->handle(Lorg/simpleframework/http/Request;Lorg/simpleframework/http/Response;)V

    .line 70
    return-void
.end method
