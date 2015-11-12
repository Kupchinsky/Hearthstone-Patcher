.class Lorg/simpleframework/util/buffer/FileBuffer$Segment;
.super Ljava/lang/Object;
.source "FileBuffer.java"

# interfaces
.implements Lorg/simpleframework/util/buffer/Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/util/buffer/FileBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Segment"
.end annotation


# instance fields
.field private closed:Z

.field private first:I

.field private last:I

.field private parent:Lorg/simpleframework/util/buffer/Buffer;

.field private segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

.field final synthetic this$0:Lorg/simpleframework/util/buffer/FileBuffer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/FileBuffer;Lorg/simpleframework/util/buffer/Buffer;I)V
    .registers 4
    .param p2, "parent"    # Lorg/simpleframework/util/buffer/Buffer;
    .param p3, "first"    # I

    .prologue
    .line 313
    iput-object p1, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/FileBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->parent:Lorg/simpleframework/util/buffer/Buffer;

    .line 315
    iput p3, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->first:I

    .line 316
    iput p3, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->last:I

    .line 317
    return-void
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
    .line 329
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->closed:Z

    if-eqz v0, :cond_f

    .line 330
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Buffer has been closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 332
    :cond_f
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    if-eqz v0, :cond_18

    .line 333
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    invoke-virtual {v0}, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->close()V

    .line 335
    :cond_18
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->closed:Z

    if-nez v0, :cond_27

    .line 336
    new-instance v0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    iget-object v1, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/FileBuffer;

    iget v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->last:I

    invoke-direct {v0, v1, p0, v2}, Lorg/simpleframework/util/buffer/FileBuffer$Segment;-><init>(Lorg/simpleframework/util/buffer/FileBuffer;Lorg/simpleframework/util/buffer/Buffer;I)V

    iput-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    .line 338
    :cond_27
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

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
    .line 353
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

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
    .line 370
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->closed:Z

    if-eqz v0, :cond_f

    .line 371
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Buffer has been closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 373
    :cond_f
    if-lez p3, :cond_1b

    .line 374
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->parent:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/util/buffer/Buffer;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

    .line 375
    iget v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->last:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->last:I

    .line 377
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
    .line 438
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->closed:Z

    if-eqz v0, :cond_f

    .line 439
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Buffer is closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 441
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
    .line 450
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->closed:Z

    if-nez v0, :cond_7

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->closed:Z

    .line 453
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    if-eqz v0, :cond_10

    .line 454
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->segment:Lorg/simpleframework/util/buffer/FileBuffer$Segment;

    invoke-virtual {v0}, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->close()V

    .line 456
    :cond_10
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
    .line 390
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 405
    .local v1, "source":Ljava/io/InputStream;
    iget v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->last:I

    iget v3, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->first:I

    sub-int v0, v2, v3

    .line 407
    .local v0, "count":I
    if-gtz v0, :cond_12

    .line 408
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 410
    :goto_11
    return-object v2

    :cond_12
    iget-object v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/FileBuffer;

    # invokes: Lorg/simpleframework/util/buffer/FileBuffer;->convert(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v1, p1, v0}, Lorg/simpleframework/util/buffer/FileBuffer;->access$000(Lorg/simpleframework/util/buffer/FileBuffer;Ljava/io/InputStream;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_11
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/FileBuffer;

    # getter for: Lorg/simpleframework/util/buffer/FileBuffer;->file:Ljava/io/File;
    invoke-static {v2}, Lorg/simpleframework/util/buffer/FileBuffer;->access$100(Lorg/simpleframework/util/buffer/FileBuffer;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 423
    .local v1, "source":Ljava/io/InputStream;
    iget v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->last:I

    iget v3, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->first:I

    sub-int v0, v2, v3

    .line 425
    .local v0, "length":I
    iget v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->first:I

    if-lez v2, :cond_1b

    .line 426
    iget v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->first:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 428
    :cond_1b
    new-instance v2, Lorg/simpleframework/util/buffer/FileBuffer$Range;

    iget-object v3, p0, Lorg/simpleframework/util/buffer/FileBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/FileBuffer;

    invoke-direct {v2, v3, v1, v0}, Lorg/simpleframework/util/buffer/FileBuffer$Range;-><init>(Lorg/simpleframework/util/buffer/FileBuffer;Ljava/io/InputStream;I)V

    return-object v2
.end method
