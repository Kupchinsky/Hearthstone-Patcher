.class public Lru/killer666/apache/commons/io/filefilter/WildcardFilter;
.super Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;
.source "WildcardFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final wildcards:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "wildcard"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 65
    if-nez p1, :cond_d

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lru/killer666/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "wildcards":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 93
    if-nez p1, :cond_d

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard list must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lru/killer666/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 5
    .param p1, "wildcards"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 78
    if-nez p1, :cond_e

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_e
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lru/killer666/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 140
    :cond_7
    :goto_7
    return v4

    .line 134
    :cond_8
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_c
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 135
    .local v3, "wildcard":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lru/killer666/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 136
    const/4 v4, 0x1

    goto :goto_7

    .line 134
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 109
    if-eqz p1, :cond_f

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 119
    :cond_e
    :goto_e
    return v4

    .line 113
    :cond_f
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_13
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 114
    .local v3, "wildcard":Ljava/lang/String;
    invoke-static {p2, v3}, Lru/killer666/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 115
    const/4 v4, 0x1

    goto :goto_e

    .line 113
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method
