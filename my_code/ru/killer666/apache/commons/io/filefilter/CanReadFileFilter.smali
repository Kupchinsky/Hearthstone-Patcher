.class public Lru/killer666/apache/commons/io/filefilter/CanReadFileFilter;
.super Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;
.source "CanReadFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_READ:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

.field public static final CAN_READ:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

.field public static final READ_ONLY:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/CanReadFileFilter;

    invoke-direct {v0}, Lru/killer666/apache/commons/io/filefilter/CanReadFileFilter;-><init>()V

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 69
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;

    sget-object v1, Lru/killer666/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/filefilter/NotFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/CanReadFileFilter;->CANNOT_READ:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    .line 72
    new-instance v0, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lru/killer666/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    sget-object v2, Lru/killer666/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, v2}, Lru/killer666/apache/commons/io/filefilter/AndFileFilter;-><init>(Lru/killer666/apache/commons/io/filefilter/IOFileFilter;Lru/killer666/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v0, Lru/killer666/apache/commons/io/filefilter/CanReadFileFilter;->READ_ONLY:Lru/killer666/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method
