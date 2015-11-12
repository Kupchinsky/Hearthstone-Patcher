.class Lorg/simpleframework/util/buffer/FileManager;
.super Lorg/simpleframework/util/thread/Daemon;
.source "FileManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private volatile dead:Z

.field private duration:J

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const-wide/32 v0, 0x493e0

    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/util/buffer/FileManager;-><init>(Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/simpleframework/util/thread/Daemon;-><init>()V

    .line 76
    iput-wide p2, p0, Lorg/simpleframework/util/buffer/FileManager;->duration:J

    .line 77
    iput-object p1, p0, Lorg/simpleframework/util/buffer/FileManager;->prefix:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileManager;->start()V

    .line 79
    return-void
.end method

.method private accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 197
    .local v2, "time":J
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 199
    .local v0, "modified":J
    iget-wide v4, p0, Lorg/simpleframework/util/buffer/FileManager;->duration:J

    add-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_11

    .line 200
    const/4 v4, 0x0

    .line 202
    :goto_10
    return v4

    :cond_11
    iget-object v4, p0, Lorg/simpleframework/util/buffer/FileManager;->prefix:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_10
.end method

.method private clean()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileManager;->create()Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_e

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 146
    :cond_e
    invoke-direct {p0, v0}, Lorg/simpleframework/util/buffer/FileManager;->clean(Ljava/io/File;)V

    .line 147
    return-void
.end method

.method private clean(Ljava/io/File;)V
    .registers 7
    .param p1, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 160
    .local v3, "list":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_11

    aget-object v4, v0, v1

    .line 161
    .local v4, "next":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 163
    .end local v4    # "next":Ljava/io/File;
    :cond_11
    return-void
.end method

.method private create(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 110
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 113
    :cond_e
    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 179
    const/4 v1, 0x0

    .line 181
    :goto_b
    return v1

    :cond_c
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/util/buffer/FileManager;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    goto :goto_b
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileManager;->dead:Z

    if-nez v0, :cond_d

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/util/buffer/FileManager;->dead:Z

    .line 215
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileManager;->interrupt()V

    .line 216
    invoke-direct {p0}, Lorg/simpleframework/util/buffer/FileManager;->clean()V

    .line 218
    :cond_d
    return-void
.end method

.method public create()Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileManager;->prefix:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/util/buffer/FileManager;->create(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 124
    :goto_0
    iget-boolean v1, p0, Lorg/simpleframework/util/buffer/FileManager;->dead:Z

    if-nez v1, :cond_f

    .line 126
    :try_start_4
    iget-wide v2, p0, Lorg/simpleframework/util/buffer/FileManager;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 127
    invoke-direct {p0}, Lorg/simpleframework/util/buffer/FileManager;->clean()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_0

    .line 128
    :catch_d
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    return-void
.end method
