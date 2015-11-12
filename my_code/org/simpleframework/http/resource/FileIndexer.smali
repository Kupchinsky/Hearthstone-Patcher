.class Lorg/simpleframework/http/resource/FileIndexer;
.super Ljava/lang/Object;
.source "FileIndexer.java"

# interfaces
.implements Lorg/simpleframework/http/resource/Indexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/http/resource/FileIndexer$Cache;
    }
.end annotation


# instance fields
.field private base:Ljava/io/File;

.field private cache:Lorg/simpleframework/http/resource/FileIndexer$Cache;

.field private resolver:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "base"    # Ljava/io/File;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lorg/simpleframework/http/resource/FileIndexer$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/http/resource/FileIndexer$Cache;-><init>(Lorg/simpleframework/http/resource/FileIndexer;)V

    iput-object v0, p0, Lorg/simpleframework/http/resource/FileIndexer;->cache:Lorg/simpleframework/http/resource/FileIndexer$Cache;

    .line 79
    iput-object p1, p0, Lorg/simpleframework/http/resource/FileIndexer;->base:Ljava/io/File;

    .line 80
    return-void
.end method

.method private getBundle()Ljava/util/ResourceBundle;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndexer;->resolver:Ljava/util/ResourceBundle;

    if-nez v0, :cond_a

    .line 268
    invoke-direct {p0}, Lorg/simpleframework/http/resource/FileIndexer;->getClassBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/resource/FileIndexer;->resolver:Ljava/util/ResourceBundle;

    .line 270
    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/resource/FileIndexer;->resolver:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method private getClassBundle()Ljava/util/ResourceBundle;
    .registers 4

    .prologue
    .line 283
    const-class v1, Lorg/simpleframework/http/resource/FileIndexer;

    .line 284
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v2

    return-object v2
.end method

.method private getContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    .line 247
    :try_start_0
    invoke-direct {p0}, Lorg/simpleframework/http/resource/FileIndexer;->getBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    .line 249
    .local v0, "bundle":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_c

    .line 250
    invoke-virtual {v0, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 254
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    :goto_a
    return-object v1

    .line 252
    :catch_b
    move-exception v1

    .line 254
    :cond_c
    const-string v1, "application/octetstream"

    goto :goto_a
.end method

.method private getContentType(Lorg/simpleframework/http/Path;)Ljava/lang/String;
    .registers 5
    .param p1, "path"    # Lorg/simpleframework/http/Path;

    .prologue
    .line 224
    invoke-interface {p1}, Lorg/simpleframework/http/Path;->getExtension()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "ext":Ljava/lang/String;
    invoke-interface {p1}, Lorg/simpleframework/http/Path;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "target":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lorg/simpleframework/http/resource/FileIndexer;->getContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFile(Lorg/simpleframework/http/Path;)Ljava/io/File;
    .registers 5
    .param p1, "path"    # Lorg/simpleframework/http/Path;

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 186
    const/16 v1, 0x2f

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_e
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/simpleframework/http/resource/FileIndexer;->base:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getContentType(Lorg/simpleframework/http/Address;)Ljava/lang/String;
    .registers 3
    .param p1, "target"    # Lorg/simpleframework/http/Address;

    .prologue
    .line 206
    invoke-interface {p1}, Lorg/simpleframework/http/Address;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/http/resource/FileIndexer;->getContentType(Lorg/simpleframework/http/Path;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Lorg/simpleframework/http/Address;)Ljava/io/File;
    .registers 3
    .param p1, "target"    # Lorg/simpleframework/http/Address;

    .prologue
    .line 143
    invoke-interface {p1}, Lorg/simpleframework/http/Address;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/http/resource/FileIndexer;->getFile(Lorg/simpleframework/http/Path;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getIndex(Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lorg/simpleframework/http/resource/FileIndexer;->cache:Lorg/simpleframework/http/resource/FileIndexer$Cache;

    invoke-virtual {v1, p1}, Lorg/simpleframework/http/resource/FileIndexer$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/resource/Index;

    .line 97
    .local v0, "index":Lorg/simpleframework/http/resource/Index;
    if-nez v0, :cond_e

    .line 98
    invoke-virtual {p0, p0, p1}, Lorg/simpleframework/http/resource/FileIndexer;->getIndex(Lorg/simpleframework/http/resource/Indexer;Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;

    move-result-object v0

    .line 100
    :cond_e
    return-object v0
.end method

.method public getIndex(Lorg/simpleframework/http/resource/Indexer;Ljava/lang/String;)Lorg/simpleframework/http/resource/Index;
    .registers 5
    .param p1, "indexer"    # Lorg/simpleframework/http/resource/Indexer;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Lorg/simpleframework/http/resource/FileIndex;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/http/resource/FileIndex;-><init>(Lorg/simpleframework/http/resource/Indexer;Ljava/lang/String;)V

    .line 120
    .local v0, "index":Lorg/simpleframework/http/resource/Index;
    const/16 v1, 0x3f

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_12

    .line 121
    iget-object v1, p0, Lorg/simpleframework/http/resource/FileIndexer;->cache:Lorg/simpleframework/http/resource/FileIndexer$Cache;

    invoke-virtual {v1, p2, v0}, Lorg/simpleframework/http/resource/FileIndexer$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_12
    return-object v0
.end method

.method public getPath(Lorg/simpleframework/http/Address;)Lorg/simpleframework/http/Path;
    .registers 3
    .param p1, "target"    # Lorg/simpleframework/http/Address;

    .prologue
    .line 163
    invoke-interface {p1}, Lorg/simpleframework/http/Address;->getPath()Lorg/simpleframework/http/Path;

    move-result-object v0

    return-object v0
.end method
