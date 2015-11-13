.class public Lru/killer666/apache/commons/io/filefilter/AndFileFilter;
.super Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;
.source "AndFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lru/killer666/apache/commons/io/filefilter/ConditionalFileFilter;


# instance fields
.field private final fileFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "fileFilters":Ljava/util/List;, "Ljava/util/List<Lru/killer666/apache/commons/io/filefilter/IOFileFilter;>;"
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 61
    if-nez p1, :cond_d

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    .line 66
    :goto_c
    return-void

    .line 64
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    goto :goto_c
.end method

.method public constructor <init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V
    .registers 5
    .param p1, "filter1"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .param p2, "filter2"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 75
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 76
    if-eqz p1, :cond_7

    if-nez p2, :cond_f

    .line 77
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The filters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    .line 80
    invoke-virtual {p0, p1}, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->addFileFilter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    .line 81
    invoke-virtual {p0, p2}, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->addFileFilter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    .line 82
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v3, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 126
    :goto_9
    return v2

    .line 121
    :cond_a
    iget-object v3, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 122
    .local v0, "fileFilter":Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    invoke-interface {v0, p1}, Lru/killer666/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_9

    .line 126
    .end local v0    # "fileFilter":Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    :cond_23
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v3, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 142
    :goto_9
    return v2

    .line 137
    :cond_a
    iget-object v3, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 138
    .local v0, "fileFilter":Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    invoke-interface {v0, p1, p2}, Lru/killer666/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_9

    .line 142
    .end local v0    # "fileFilter":Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    :cond_23
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public addFileFilter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V
    .registers 3
    .param p1, "ioFileFilter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 88
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public getFileFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFileFilter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Z
    .registers 3
    .param p1, "ioFileFilter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 102
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFileFilters(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "fileFilters":Ljava/util/List;, "Ljava/util/List<Lru/killer666/apache/commons/io/filefilter/IOFileFilter;>;"
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v3, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    if-eqz v3, :cond_3a

    .line 156
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    iget-object v3, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 157
    if-lez v2, :cond_25

    .line 158
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_25
    iget-object v3, p0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 161
    .local v1, "filter":Ljava/lang/Object;
    if-nez v1, :cond_35

    const-string v3, "null"

    :goto_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 161
    :cond_35
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2f

    .line 164
    .end local v1    # "filter":Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_3a
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
