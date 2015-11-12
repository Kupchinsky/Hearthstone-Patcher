.class abstract Lorg/simpleframework/http/core/BodyConsumer;
.super Lorg/simpleframework/http/core/BufferConsumer;
.source "BodyConsumer.java"

# interfaces
.implements Lorg/simpleframework/http/core/Body;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/simpleframework/http/core/BufferConsumer;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method

.method public getContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lorg/simpleframework/http/core/EmptyInputStream;

    invoke-direct {v0}, Lorg/simpleframework/http/core/EmptyInputStream;-><init>()V

    return-object v0
.end method

.method public getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParts()Lorg/simpleframework/http/core/PartList;
    .registers 2

    .prologue
    .line 110
    new-instance v0, Lorg/simpleframework/http/core/PartList;

    invoke-direct {v0}, Lorg/simpleframework/http/core/PartList;-><init>()V

    return-object v0
.end method
