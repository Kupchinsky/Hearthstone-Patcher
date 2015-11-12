.class public interface abstract Lorg/simpleframework/http/ResponseHeader;
.super Ljava/lang/Object;
.source "ResponseHeader.java"

# interfaces
.implements Lorg/simpleframework/http/StatusLine;


# virtual methods
.method public abstract add(Ljava/lang/String;I)V
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addDate(Ljava/lang/String;J)V
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getContentLength()I
.end method

.method public abstract getContentType()Lorg/simpleframework/http/ContentType;
.end method

.method public abstract getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
.end method

.method public abstract getCookies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/http/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDate(Ljava/lang/String;)J
.end method

.method public abstract getInteger(Ljava/lang/String;)I
.end method

.method public abstract getNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
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

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract set(Ljava/lang/String;I)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
.end method

.method public abstract setCookie(Lorg/simpleframework/http/Cookie;)Lorg/simpleframework/http/Cookie;
.end method

.method public abstract setDate(Ljava/lang/String;J)V
.end method
