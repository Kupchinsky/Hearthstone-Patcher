.class interface abstract Lorg/simpleframework/http/core/Body;
.super Ljava/lang/Object;
.source "Body.java"


# virtual methods
.method public abstract getContent()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getContent(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;
.end method

.method public abstract getParts()Lorg/simpleframework/http/core/PartList;
.end method
