.class public Lru/killer666/apache/commons/io/input/TeeInputStream;
.super Lru/killer666/apache/commons/io/input/ProxyInputStream;
.source "TeeInputStream.java"


# instance fields
.field private final branch:Ljava/io/OutputStream;

.field private final closeBranch:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "branch"    # Ljava/io/OutputStream;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lru/killer666/apache/commons/io/input/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "branch"    # Ljava/io/OutputStream;
    .param p3, "closeBranch"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lru/killer666/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    iput-object p2, p0, Lru/killer666/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    .line 78
    iput-boolean p3, p0, Lru/killer666/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    .line 79
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-super {p0}, Lru/killer666/apache/commons/io/input/ProxyInputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 93
    iget-boolean v0, p0, Lru/killer666/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    if-eqz v0, :cond_c

    .line 94
    iget-object v0, p0, Lru/killer666/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 97
    :cond_c
    return-void

    .line 93
    :catchall_d
    move-exception v0

    iget-boolean v1, p0, Lru/killer666/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    if-eqz v1, :cond_17

    .line 94
    iget-object v1, p0, Lru/killer666/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_17
    throw v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-super {p0}, Lru/killer666/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    .line 109
    .local v0, "ch":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 110
    iget-object v1, p0, Lru/killer666/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 112
    :cond_c
    return v0
.end method

.method public read([B)I
    .registers 5
    .param p1, "bts"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-super {p0, p1}, Lru/killer666/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v0

    .line 145
    .local v0, "n":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 146
    iget-object v1, p0, Lru/killer666/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 148
    :cond_d
    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "bts"    # [B
    .param p2, "st"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3}, Lru/killer666/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    .line 128
    .local v0, "n":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 129
    iget-object v1, p0, Lru/killer666/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 131
    :cond_c
    return v0
.end method
