.class Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;
.super Ljava/lang/Object;
.source "ArrayBuffer.java"

# interfaces
.implements Lorg/simpleframework/util/buffer/Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/util/buffer/ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Segment"
.end annotation


# instance fields
.field private closed:Z

.field private length:I

.field private parent:Lorg/simpleframework/util/buffer/Buffer;

.field private start:I

.field final synthetic this$0:Lorg/simpleframework/util/buffer/ArrayBuffer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/ArrayBuffer;Lorg/simpleframework/util/buffer/Buffer;I)V
    .registers 4
    .param p2, "parent"    # Lorg/simpleframework/util/buffer/Buffer;
    .param p3, "start"    # I

    .prologue
    .line 270
    iput-object p1, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/ArrayBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->parent:Lorg/simpleframework/util/buffer/Buffer;

    .line 272
    iput p3, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->start:I

    .line 273
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
    .line 297
    new-instance v0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;

    iget-object v1, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/ArrayBuffer;

    iget-object v2, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/ArrayBuffer;

    # getter for: Lorg/simpleframework/util/buffer/ArrayBuffer;->count:I
    invoke-static {v2}, Lorg/simpleframework/util/buffer/ArrayBuffer;->access$100(Lorg/simpleframework/util/buffer/ArrayBuffer;)I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;-><init>(Lorg/simpleframework/util/buffer/ArrayBuffer;Lorg/simpleframework/util/buffer/Buffer;I)V

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
    .line 333
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

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
    .line 346
    iget-boolean v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->closed:Z

    if-eqz v0, :cond_f

    .line 347
    new-instance v0, Lorg/simpleframework/util/buffer/BufferException;

    const-string v1, "Buffer is closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/util/buffer/BufferException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 349
    :cond_f
    if-lez p3, :cond_1b

    .line 350
    iget-object v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->parent:Lorg/simpleframework/util/buffer/Buffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/simpleframework/util/buffer/Buffer;->append([BII)Lorg/simpleframework/util/buffer/Buffer;

    .line 351
    iget v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->length:I

    .line 353
    :cond_1b
    return-object p0
.end method

.method public clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->length:I

    .line 364
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
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->closed:Z

    .line 374
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
    .line 310
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->encode(Ljava/lang/String;)Ljava/lang/String;

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
    .line 322
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/ArrayBuffer;

    # getter for: Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B
    invoke-static {v1}, Lorg/simpleframework/util/buffer/ArrayBuffer;->access$000(Lorg/simpleframework/util/buffer/ArrayBuffer;)[B

    move-result-object v1

    iget v2, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->start:I

    iget v3, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->length:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->this$0:Lorg/simpleframework/util/buffer/ArrayBuffer;

    # getter for: Lorg/simpleframework/util/buffer/ArrayBuffer;->buffer:[B
    invoke-static {v1}, Lorg/simpleframework/util/buffer/ArrayBuffer;->access$000(Lorg/simpleframework/util/buffer/ArrayBuffer;)[B

    move-result-object v1

    iget v2, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->start:I

    iget v3, p0, Lorg/simpleframework/util/buffer/ArrayBuffer$Segment;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
