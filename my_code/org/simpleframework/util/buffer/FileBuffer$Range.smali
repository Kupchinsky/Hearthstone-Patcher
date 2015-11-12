.class Lorg/simpleframework/util/buffer/FileBuffer$Range;
.super Ljava/io/FilterInputStream;
.source "FileBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/util/buffer/FileBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Range"
.end annotation


# instance fields
.field private closed:Z

.field private length:I

.field final synthetic this$0:Lorg/simpleframework/util/buffer/FileBuffer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/FileBuffer;Ljava/io/InputStream;I)V
    .registers 4
    .param p2, "source"    # Ljava/io/InputStream;
    .param p3, "length"    # I

    .prologue
    .line 489
    iput-object p1, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->this$0:Lorg/simpleframework/util/buffer/FileBuffer;

    .line 490
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 491
    iput p3, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    .line 492
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    iget v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->closed:Z

    if-nez v0, :cond_c

    .line 587
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->closed:Z

    .line 590
    :cond_c
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    iget v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    if-lez v0, :cond_f

    .line 504
    iget-object v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 509
    :goto_e
    return v0

    .line 506
    :cond_f
    iget v0, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    if-gtz v0, :cond_16

    .line 507
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileBuffer$Range;->close()V

    .line 509
    :cond_16
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public read([BII)I
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
    .line 525
    iget v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 527
    .local v1, "left":I
    if-lez v1, :cond_1d

    .line 528
    iget-object v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 530
    .local v0, "count":I
    if-lez v0, :cond_15

    .line 531
    iget v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    .line 533
    :cond_15
    iget v2, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    if-gtz v2, :cond_1c

    .line 534
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileBuffer$Range;->close()V

    .line 538
    .end local v0    # "count":I
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method public skip(J)J
    .registers 10
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    iget v4, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 566
    .local v0, "left":J
    iget-object v4, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 568
    .local v2, "skip":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1a

    .line 569
    iget v4, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    int-to-long v4, v4

    sub-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    .line 571
    :cond_1a
    iget v4, p0, Lorg/simpleframework/util/buffer/FileBuffer$Range;->length:I

    if-gtz v4, :cond_21

    .line 572
    invoke-virtual {p0}, Lorg/simpleframework/util/buffer/FileBuffer$Range;->close()V

    .line 574
    :cond_21
    return-wide v2
.end method
