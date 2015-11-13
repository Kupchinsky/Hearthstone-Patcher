.class public Lru/killer666/apache/commons/io/filefilter/NotFileFilter;
.super Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;
.source "NotFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final filter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V
    .registers 4
    .param p1, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 40
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 41
    if-nez p1, :cond_d

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The filter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_d
    iput-object p1, p0, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;->filter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 45
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 55
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;->filter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1}, Lru/killer666/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;->filter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lru/killer666/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;->filter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
