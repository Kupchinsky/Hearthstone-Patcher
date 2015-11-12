.class public Lorg/simpleframework/util/buffer/FileAllocator;
.super Ljava/lang/Object;
.source "FileAllocator.java"

# interfaces
.implements Lorg/simpleframework/util/buffer/Allocator;


# static fields
.field private static final PREFIX:Ljava/lang/String; = "temp"


# instance fields
.field private limit:I

.field private manager:Lorg/simpleframework/util/buffer/FileManager;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lorg/simpleframework/util/buffer/FileAllocator;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "temp"

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/util/buffer/FileAllocator;-><init>(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/util/buffer/FileAllocator;-><init>(Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lorg/simpleframework/util/buffer/FileManager;

    invoke-direct {v0, p1}, Lorg/simpleframework/util/buffer/FileManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/simpleframework/util/buffer/FileAllocator;->manager:Lorg/simpleframework/util/buffer/FileManager;

    .line 97
    iput p2, p0, Lorg/simpleframework/util/buffer/FileAllocator;->limit:I

    .line 98
    return-void
.end method


# virtual methods
.method public allocate()Lorg/simpleframework/util/buffer/Buffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lorg/simpleframework/util/buffer/FileAllocator;->manager:Lorg/simpleframework/util/buffer/FileManager;

    invoke-virtual {v1}, Lorg/simpleframework/util/buffer/FileManager;->create()Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 112
    new-instance v1, Lorg/simpleframework/util/buffer/BufferException;

    const-string v2, "Could not create file %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 114
    :cond_1a
    new-instance v1, Lorg/simpleframework/util/buffer/FileBuffer;

    invoke-direct {v1, v0}, Lorg/simpleframework/util/buffer/FileBuffer;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public allocate(I)Lorg/simpleframework/util/buffer/Buffer;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget v0, p0, Lorg/simpleframework/util/buffer/FileAllocator;->limit:I

    if-gt p1, v0, :cond_a

    .line 131
    new-instance v0, Lorg/simpleframework/util/buffer/ArrayBuffer;

    invoke-direct {v0, p1}, Lorg/simpleframework/util/buffer/ArrayBuffer;-><init>(I)V

    .line 133
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileAllocator;->allocate()Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    goto :goto_9
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileAllocator;->manager:Lorg/simpleframework/util/buffer/FileManager;

    invoke-virtual {v0}, Lorg/simpleframework/util/buffer/FileManager;->close()V

    .line 145
    return-void
.end method
