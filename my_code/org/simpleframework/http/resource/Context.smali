.class public interface abstract Lorg/simpleframework/http/resource/Context;
.super Ljava/lang/Object;
.source "Context.java"


# virtual methods
.method public abstract getBasePath()Ljava/lang/String;
.end method

.method public abstract getContentType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDirectory(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;
.end method

.method public abstract getName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPath(Ljava/lang/String;)Lorg/simpleframework/http/Path;
.end method

.method public abstract getRealPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRequestPath(Ljava/lang/String;)Ljava/lang/String;
.end method
