.class interface abstract Lorg/simpleframework/http/core/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Lorg/simpleframework/http/core/Segment;


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getAddress()Lorg/simpleframework/http/Address;
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

.method public abstract getLocales()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMajor()I
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getMinor()I
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

.method public abstract getPath()Lorg/simpleframework/http/Path;
.end method

.method public abstract getQuery()Lorg/simpleframework/http/Query;
.end method

.method public abstract getSession(Z)Lorg/simpleframework/http/Cookie;
.end method

.method public abstract getTarget()Ljava/lang/String;
.end method

.method public abstract isExpectContinue()Z
.end method
