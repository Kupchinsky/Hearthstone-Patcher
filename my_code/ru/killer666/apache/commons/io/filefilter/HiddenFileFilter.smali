.class public Lru/killer666/apache/commons/io/filefilter/HiddenFileFilter;
.super Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;
.source "HiddenFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HIDDEN:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

.field public static final VISIBLE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/HiddenFileFilter;

    invoke-direct {v0}, Lru/killer666/apache/commons/io/filefilter/HiddenFileFilter;-><init>()V

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/HiddenFileFilter;->HIDDEN:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 57
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;

    sget-object v1, Lru/killer666/apache/commons/io/filefilter/HiddenFileFilter;->HIDDEN:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/HiddenFileFilter;->VISIBLE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method
