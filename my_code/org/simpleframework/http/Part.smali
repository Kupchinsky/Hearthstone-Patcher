.class public interface abstract Lorg/simpleframework/http/Part;
.super Ljava/lang/Object;
.source "Part.java"


# virtual methods
.method public abstract getContent()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getContentType()Lorg/simpleframework/http/ContentType;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isFile()Z
.end method
