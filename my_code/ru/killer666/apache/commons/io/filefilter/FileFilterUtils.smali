.class public Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;
.super Ljava/lang/Object;
.source "FileFilterUtils.java"


# static fields
.field private static final cvsFilter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

.field private static final svnFilter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 724
    new-array v0, v4, [Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "CVS"

    invoke-static {v1}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->and([Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 728
    new-array v0, v4, [Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->directoryFileFilter()Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, ".svn"

    invoke-static {v1}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->and([Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static ageFileFilter(J)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 4
    .param p0, "cutoff"    # J

    .prologue
    .line 530
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static ageFileFilter(JZ)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 5
    .param p0, "cutoff"    # J
    .param p2, "acceptOlder"    # Z

    .prologue
    .line 543
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "cutoffReference"    # Ljava/io/File;

    .prologue
    .line 583
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;Z)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "cutoffReference"    # Ljava/io/File;
    .param p1, "acceptOlder"    # Z

    .prologue
    .line 597
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "cutoffDate"    # Ljava/util/Date;

    .prologue
    .line 556
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;Z)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "cutoffDate"    # Ljava/util/Date;
    .param p1, "acceptOlder"    # Z

    .prologue
    .line 569
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lru/killer666/apache/commons/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-object v0
.end method

.method public static varargs and([Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "filters"    # [Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 421
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;

    invoke-static {p0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->toList([Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static andFileFilter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "filter1"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "filter2"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v0, p0, p1}, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "filter"    # Ljava/io/FileFilter;

    .prologue
    .line 504
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FilenameFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 516
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FilenameFilter;)V

    return-object v0
.end method

.method public static directoryFileFilter()Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 1

    .prologue
    .line 365
    sget-object v0, Lru/killer666/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static falseFileFilter()Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 1

    .prologue
    .line 491
    sget-object v0, Lru/killer666/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static fileFileFilter()Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 1

    .prologue
    .line 375
    sget-object v0, Lru/killer666/apache/commons/io/filefilter/FileFileFilter;->FILE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method private static filter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 7
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;>(",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    .local p2, "acceptedFiles":Ljava/util/Collection;, "TT;"
    if-nez p0, :cond_a

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "file filter is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_a
    if-eqz p1, :cond_30

    .line 274
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 275
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_26

    .line 276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "file collection contains null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_26
    invoke-interface {p0, v0}, Lru/killer666/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 279
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 283
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_30
    return-object p2
.end method

.method public static filter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)[Ljava/io/File;
    .registers 4
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    invoke-static {p0, p1}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->filterList(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "acceptedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1
.end method

.method public static varargs filter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;
    .registers 9
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 77
    if-nez p0, :cond_a

    .line 78
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "file filter is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_a
    if-nez p1, :cond_10

    .line 81
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/io/File;

    .line 92
    :goto_f
    return-object v5

    .line 83
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "acceptedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v1, p1

    .local v1, "arr$":[Ljava/io/File;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_18
    if-ge v3, v4, :cond_32

    aget-object v2, v1, v3

    .line 85
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_26

    .line 86
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "file array contains null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_26
    invoke-interface {p0, v2}, Lru/killer666/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 92
    .end local v2    # "file":Ljava/io/File;
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/io/File;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/io/File;

    goto :goto_f
.end method

.method public static filterList(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 3
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->filter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static varargs filterList(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/List;
    .registers 4
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p0, p1}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->filter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "acceptedFiles":[Ljava/io/File;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static filterSet(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 3
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->filter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static varargs filterSet(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)Ljava/util/Set;
    .registers 5
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p0, p1}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->filter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;[Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 213
    .local v0, "acceptedFiles":[Ljava/io/File;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "magicNumber"    # Ljava/lang/String;

    .prologue
    .line 658
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static magicNumberFileFilter(Ljava/lang/String;J)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 4
    .param p0, "magicNumber"    # Ljava/lang/String;
    .param p1, "offset"    # J

    .prologue
    .line 679
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lru/killer666/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static magicNumberFileFilter([B)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "magicNumber"    # [B

    .prologue
    .line 698
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([B)V

    return-object v0
.end method

.method public static magicNumberFileFilter([BJ)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 4
    .param p0, "magicNumber"    # [B
    .param p1, "offset"    # J

    .prologue
    .line 719
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/MagicNumberFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lru/killer666/apache/commons/io/filefilter/MagicNumberFileFilter;-><init>([BJ)V

    return-object v0
.end method

.method public static makeCVSAware(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 4
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 741
    if-nez p0, :cond_5

    .line 742
    sget-object v0, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 744
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->cvsFilter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    aput-object v2, v0, v1

    invoke-static {v0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->and([Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    goto :goto_4
.end method

.method public static makeDirectoryOnly(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 775
    if-nez p0, :cond_5

    .line 776
    sget-object v0, Lru/killer666/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 778
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lru/killer666/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    goto :goto_4
.end method

.method public static makeFileOnly(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 790
    if-nez p0, :cond_5

    .line 791
    sget-object v0, Lru/killer666/apache/commons/io/filefilter/FileFileFilter;->FILE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 793
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lru/killer666/apache/commons/io/filefilter/FileFileFilter;->FILE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    goto :goto_4
.end method

.method public static makeSVNAware(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 4
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 758
    if-nez p0, :cond_5

    .line 759
    sget-object v0, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 761
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->svnFilter:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    aput-object v2, v0, v1

    invoke-static {v0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->and([Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    goto :goto_4
.end method

.method public static nameFileFilter(Ljava/lang/String;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static nameFileFilter(Ljava/lang/String;Lru/killer666/apache/commons/io/IOCase;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "caseSensitivity"    # Lru/killer666/apache/commons/io/IOCase;

    .prologue
    .line 355
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0, p1}, Lru/killer666/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;Lru/killer666/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static notFileFilter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "filter"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 470
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static varargs or([Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "filters"    # [Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .prologue
    .line 436
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/OrFileFilter;

    invoke-static {p0}, Lru/killer666/apache/commons/io/filefilter/FileFilterUtils;->toList([Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/filefilter/OrFileFilter;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static orFileFilter(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "filter1"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .param p1, "filter2"    # Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/OrFileFilter;

    invoke-direct {v0, p0, p1}, Lru/killer666/apache/commons/io/filefilter/OrFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;Lru/killer666/apache/commons/io/IOCase;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "caseSensitivity"    # Lru/killer666/apache/commons/io/IOCase;

    .prologue
    .line 307
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0, p1}, Lru/killer666/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;Lru/killer666/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static sizeFileFilter(J)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 4
    .param p0, "threshold"    # J

    .prologue
    .line 610
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1}, Lru/killer666/apache/commons/io/filefilter/SizeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static sizeFileFilter(JZ)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 5
    .param p0, "threshold"    # J
    .param p2, "acceptLarger"    # Z

    .prologue
    .line 623
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lru/killer666/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static sizeRangeFileFilter(JJ)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 10
    .param p0, "minSizeInclusive"    # J
    .param p2, "maxSizeInclusive"    # J

    .prologue
    .line 637
    new-instance v1, Lru/killer666/apache/commons/io/filefilter/SizeFileFilter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lru/killer666/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 638
    .local v1, "minimumFilter":Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/SizeFileFilter;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lru/killer666/apache/commons/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 639
    .local v0, "maximumFilter":Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    new-instance v2, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;

    invoke-direct {v2, v1, v0}, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    return-object v2
.end method

.method public static suffixFileFilter(Ljava/lang/String;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 2
    .param p0, "suffix"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0}, Lru/killer666/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static suffixFileFilter(Ljava/lang/String;Lru/killer666/apache/commons/io/IOCase;)Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 3
    .param p0, "suffix"    # Ljava/lang/String;
    .param p1, "caseSensitivity"    # Lru/killer666/apache/commons/io/IOCase;

    .prologue
    .line 331
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0, p1}, Lru/killer666/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;Lru/killer666/apache/commons/io/IOCase;)V

    return-object v0
.end method

.method public static varargs toList([Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;
    .registers 6
    .param p0, "filters"    # [Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lru/killer666/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    if-nez p0, :cond_a

    .line 450
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The filters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 453
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lru/killer666/apache/commons/io/filefilter/IOFileFilter;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_3f

    .line 454
    aget-object v2, p0, v0

    if-nez v2, :cond_37

    .line 455
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The filter["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    :cond_37
    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 459
    :cond_3f
    return-object v1
.end method

.method public static trueFileFilter()Lru/killer666/apache/commons/io/filefilter/IOFileFilter;
    .registers 1

    .prologue
    .line 481
    sget-object v0, Lru/killer666/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    return-object v0
.end method
