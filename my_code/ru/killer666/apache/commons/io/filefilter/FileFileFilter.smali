.class public Lru/killer666/apache/commons/io/filefilter/FileFileFilter;
.super Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;
.source "FileFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FILE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/FileFileFilter;

    invoke-direct {v0}, Lru/killer666/apache/commons/io/filefilter/FileFileFilter;-><init>()V

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/FileFileFilter;->FILE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method
