.class public Lru/killer666/apache/commons/io/filefilter/CanWriteFileFilter;
.super Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;
.source "CanWriteFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_WRITE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

.field public static final CAN_WRITE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/CanWriteFileFilter;

    invoke-direct {v0}, Lru/killer666/apache/commons/io/filefilter/CanWriteFileFilter;-><init>()V

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/CanWriteFileFilter;->CAN_WRITE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 61
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;

    sget-object v1, Lru/killer666/apache/commons/io/filefilter/CanWriteFileFilter;->CAN_WRITE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method
