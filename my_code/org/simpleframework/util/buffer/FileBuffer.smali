.class Lorg/simpleframework/util/buffer/FileBuffer;
.super Ljava/lang/Object;
.source "FileBuffer.java"

# interfaces
.implements Lorg/simpleframework/util/buffer/Buffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/util/buffer/FileBuffer$Range;,
        Lorg/simpleframework/util/buffer/FileBuffer$Segment;
    }
.end annotation


# instance fields
.field private buffer:Ljava/io/OutputStream;

.field private closed:Z

.field private count:I

.field private file:Ljava/io/File;

.field private segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->buffer:Ljava/io/OutputStream;

    .line 80
    iput-object p1, p0, Lorg/simpleframework/util/buffer/FileBuffer;->file:Ljava/io/File;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/simpleframework/util/buffer/FileBuffer;Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "x0"    # Lorg/simpleframework/util/buffer/FileBuffer;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/util/buffer/FileBuffer;->convert(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/simpleframework/util/buffer/FileBuffer;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lorg/simpleframework/util/buffer/FileBuffer;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->file:Ljava/io/File;

    return-object v0
.end method

.method private convert(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 189
    new-array v0, p3, [B

    .line 190
    .local v0, "buffer":[B
    move v1, p3

    .line 191
    .local v1, "left":I
    const/4 v2, 0x0

    .line 193
    .local v2, "mark":I
    :goto_5
    if-lez v1, :cond_1b

    .line 194
    invoke-virtual {p1, v0, v6, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 196
    .local v3, "size":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_18

    .line 197
    new-instance v4, Lorg/simpleframework/util/buffer/BufferException;

    const-string v5, "Could not read buffer"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 199
    :cond_18
    sub-int/2addr v1, p3

    .line 200
    add-int/2addr v2, p3

    .line 201
    goto :goto_5

    .line 202
    .end local v3    # "size":I
    :cond_1b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method private getInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 233
    .local v0, "source":Ljava/io/InputStream;
    iget v1, p0, Lorg/simpleframework/util/buffer/FileBuffer;->count:I

    if-gtz v1, :cond_c

    .line 234
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 236
    :cond_c
    new-instance v1, Lorg/simpleframework/util/buffer/FileBuffer$Range;

    iget v2, p0, Lorg/simpleframework/util/buffer/FileBuffer;->count:I

    invoke-direct {v1, p0, v0, v2}, Lorg/simpleframework/util/buffer/FileBuffer$Range;-><init>(Lorg/simpleframework/util/buffer/FileBuffer;Ljava/io/InputStream;I)V

    return-object v1
.end method


# virtual methods
.method public allocate()Lorg/simpleframework/util/buffer/Buffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->closed:Z

    if-eqz v0, :cond_f

    .line 94
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Buffer has been closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 96
    :cond_f
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    if-eqz v0, :cond_18

    .line 97
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    invoke-virtual {v0}, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->close()V

    .line 99
    :cond_18
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->closed:Z

    if-nez v0, :cond_25

    .line 100
    new-instance v0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    iget v1, p0, Lorg/simpleframework/util/buffer/FileBuffer;->count:I

    invoke-direct {v0, p0, p0, v1}, Lorg/simpleframework/util/buffer/FileBuffer$Segment;-><init>(Lorg/simpleframework/util/buffer/FileBuffer;Lorg/simpleframework/util/buffer/Buffer;I)V

    iput-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    .line 102
    :cond_25
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    return-object v0
.end method

.method public append([B)Lorg/simpleframework/util/buffer/Buffer;
    .registers 4
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/util/buffer/FileBuffer;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public append([BII)Lorg/simpleframework/util/buffer/Buffer;
    .registers 7
    .param p1, "array"    # [B
    .param p2, "off"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->closed:Z

    if-eqz v0, :cond_f

    .line 135
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Buffer has been closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 137
    :cond_f
    if-lez p3, :cond_1b

    .line 138
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->buffer:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 139
    iget v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->count:I

    .line 141
    :cond_1b
    return-object p0
.end method

.method public clear()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->closed:Z

    if-eqz v0, :cond_f

    .line 247
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Buffer has been closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 249
    :cond_f
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->closed:Z

    if-nez v0, :cond_c

    .line 259
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->buffer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->closed:Z

    .line 262
    :cond_c
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    if-eqz v0, :cond_15

    .line 263
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    invoke-virtual {v0}, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->close()V

    .line 265
    :cond_15
    return-void
.end method

.method public encode()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/buffer/FileBuffer;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 170
    .local v0, "source":Ljava/io/InputStream;
    iget v1, p0, Lorg/simpleframework/util/buffer/FileBuffer;->count:I

    if-gtz v1, :cond_e

    .line 171
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 173
    :goto_d
    return-object v1

    :cond_e
    iget v1, p0, Lorg/simpleframework/util/buffer/FileBuffer;->count:I

    invoke-direct {p0, v0, p1, v1}, Lorg/simpleframework/util/buffer/FileBuffer;->convert(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->closed:Z

    if-nez v0, :cond_7

    .line 215
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileBuffer;->close()V

    .line 217
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/simpleframework/util/buffer/FileBuffer;->getInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
