.class Lorg/simpleframework/http/resource/FileIndex;
.super Ljava/lang/Object;
.source "FileIndex.java"

# interfaces
.implements Lorg/simpleframework/http/resource/Index;


# instance fields
.field private file:Ljava/io/File;

.field private indexer:Lorg/simpleframework/http/resource/Indexer;

.field private path:Lorg/simpleframework/http/Path;

.field private target:Lorg/simpleframework/http/Address;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/resource/Indexer;Ljava/lang/String;)V
    .registers 4
    .param p1, "indexer"    # Lorg/simpleframework/http/resource/Indexer;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lorg/simpleframework/http/parse/AddressParser;

    invoke-direct {v0, p2}, Lorg/simpleframework/http/parse/AddressParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/http/resource/FileIndex;-><init>(Lorg/simpleframework/http/resource/Indexer;Lorg/simpleframework/http/Address;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/http/resource/Indexer;Lorg/simpleframework/http/Address;)V
    .registers 3
    .param p1, "indexer"    # Lorg/simpleframework/http/resource/Indexer;
    .param p2, "target"    # Lorg/simpleframework/http/Address;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/simpleframework/http/resource/FileIndex;->indexer:Lorg/simpleframework/http/resource/Indexer;

    .line 91
    iput-object p2, p0, Lorg/simpleframework/http/resource/FileIndex;->target:Lorg/simpleframework/http/Address;

    .line 92
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->type:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 103
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->target:Lorg/simpleframework/http/Address;

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/resource/FileIndex;->getContentType(Lorg/simpleframework/http/Address;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->type:Ljava/lang/String;

    .line 105
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType(Lorg/simpleframework/http/Address;)Ljava/lang/String;
    .registers 3
    .param p1, "target"    # Lorg/simpleframework/http/Address;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->indexer:Lorg/simpleframework/http/resource/Indexer;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/resource/Indexer;->getContentType(Lorg/simpleframework/http/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/simpleframework/http/resource/FileIndex;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->file:Ljava/io/File;

    if-nez v0, :cond_c

    .line 132
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->target:Lorg/simpleframework/http/Address;

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/resource/FileIndex;->getFile(Lorg/simpleframework/http/Address;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->file:Ljava/io/File;

    .line 134
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFile(Lorg/simpleframework/http/Address;)Ljava/io/File;
    .registers 3
    .param p1, "target"    # Lorg/simpleframework/http/Address;

    .prologue
    .line 149
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->indexer:Lorg/simpleframework/http/resource/Indexer;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/resource/Indexer;->getFile(Lorg/simpleframework/http/Address;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/simpleframework/http/resource/FileIndex;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/Path;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lorg/simpleframework/http/Path;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->path:Lorg/simpleframework/http/Path;

    if-nez v0, :cond_c

    .line 162
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->target:Lorg/simpleframework/http/Address;

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/resource/FileIndex;->getPath(Lorg/simpleframework/http/Address;)Lorg/simpleframework/http/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->path:Lorg/simpleframework/http/Path;

    .line 164
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->path:Lorg/simpleframework/http/Path;

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/http/Address;)Lorg/simpleframework/http/Path;
    .registers 3
    .param p1, "target"    # Lorg/simpleframework/http/Address;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndex;->indexer:Lorg/simpleframework/http/resource/Indexer;

    invoke-interface {v0, p1}, Lorg/simpleframework/http/resource/Indexer;->getPath(Lorg/simpleframework/http/Address;)Lorg/simpleframework/http/Path;

    move-result-object v0

    return-object v0
.end method

.method public getRealPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/simpleframework/http/resource/FileIndex;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/simpleframework/http/resource/FileIndex;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/http/Path;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
