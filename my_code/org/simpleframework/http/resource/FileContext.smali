.class public Lorg/simpleframework/http/resource/FileContext;
.super Ljava/lang/Object;
.source "FileContext.java"

# interfaces
.implements Lorg/simpleframework/http/resource/Context;


# instance fields
.field private final base:Ljava/io/File;

.field private final indexer:Lorg/simpleframework/http/resource/FileIndexer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/http/resource/FileContext;-><init>(Ljava/io/File;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "base"    # Ljava/io/File;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lorg/simpleframework/http/resource/FileIndexer;

    invoke-direct {v0, p1}, Lorg/simpleframework/http/resource/FileIndexer;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/simpleframework/http/resource/FileContext;->indexer:Lorg/simpleframework/http/resource/FileIndexer;

    .line 79
    iput-object p1, p0, Lorg/simpleframework/http/resource/FileContext;->base:Ljava/io/File;

    .line 80
    return-void
.end method


# virtual methods
.method public getBasePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileContext;->base:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/resource/FileContext;->getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/resource/Index;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/resource/FileContext;->getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/resource/Index;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/resource/FileContext;->getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/resource/Index;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileContext;->indexer:Lorg/simpleframework/http/resource/FileIndexer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/http/resource/FileIndexer;->getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/resource/FileContext;->getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/resource/Index;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Lorg/simpleframework/http/Path;
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/resource/FileContext;->getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/resource/Index;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v0

    return-object v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/resource/FileContext;->getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/resource/Index;->getRealPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/resource/FileContext;->getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/resource/Index;->getRequestPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
