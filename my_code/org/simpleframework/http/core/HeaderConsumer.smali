.class abstract Lorg/simpleframework/http/core/HeaderConsumer;
.super Lorg/simpleframework/http/core/SegmentConsumer;
.source "HeaderConsumer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Header;


# instance fields
.field private policy:Lorg/simpleframework/http/core/Policy;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/simpleframework/http/core/SegmentConsumer;-><init>()V

    .line 47
    new-instance v0, Lorg/simpleframework/http/core/SecurePolicy;

    invoke-direct {v0, p0}, Lorg/simpleframework/http/core/SecurePolicy;-><init>(Lorg/simpleframework/http/core/Header;)V

    iput-object v0, p0, Lorg/simpleframework/http/core/HeaderConsumer;->policy:Lorg/simpleframework/http/core/Policy;

    .line 48
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/simpleframework/http/core/HeaderConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Message;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/simpleframework/http/core/HeaderConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Message;->getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/http/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/simpleframework/http/core/HeaderConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/Message;->getCookies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/simpleframework/http/core/HeaderConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Message;->getDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lorg/simpleframework/http/core/HeaderConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/core/Message;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/http/core/HeaderConsumer;->header:Lorg/simpleframework/http/core/Message;

    invoke-virtual {v0}, Lorg/simpleframework/http/core/Message;->getNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Lorg/simpleframework/http/Cookie;
    .registers 3
    .param p1, "create"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lorg/simpleframework/http/core/HeaderConsumer;->policy:Lorg/simpleframework/http/core/Policy;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/core/Policy;->getSession(Z)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    return-object v0
.end method
