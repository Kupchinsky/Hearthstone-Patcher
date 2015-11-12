.class interface abstract Lorg/simpleframework/http/core/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# virtual methods
.method public abstract getContentLength()I
.end method

.method public abstract getContentType()Lorg/simpleframework/http/ContentType;
.end method

.method public abstract getDisposition()Lorg/simpleframework/http/core/Disposition;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getValues(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFile()Z
.end method
