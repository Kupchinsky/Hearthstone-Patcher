.class Lorg/simpleframework/http/core/SegmentConsumer$Token;
.super Ljava/lang/Object;
.source "SegmentConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/core/SegmentConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Token"
.end annotation


# instance fields
.field public off:I

.field public size:I

.field final synthetic this$0:Lorg/simpleframework/http/core/SegmentConsumer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/SegmentConsumer;II)V
    .registers 4
    .param p2, "off"    # I
    .param p3, "size"    # I

    .prologue
    .line 619
    iput-object p1, p0, Lorg/simpleframework/http/core/SegmentConsumer$Token;->this$0:Lorg/simpleframework/http/core/SegmentConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput p2, p0, Lorg/simpleframework/http/core/SegmentConsumer$Token;->off:I

    .line 621
    iput p3, p0, Lorg/simpleframework/http/core/SegmentConsumer$Token;->size:I

    .line 622
    return-void
.end method


# virtual methods
.method public text()Ljava/lang/String;
    .registers 2

    .prologue
    .line 632
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/SegmentConsumer$Token;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 644
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/http/core/SegmentConsumer$Token;->this$0:Lorg/simpleframework/http/core/SegmentConsumer;

    iget-object v2, v2, Lorg/simpleframework/http/core/SegmentConsumer;->array:[B

    iget v3, p0, Lorg/simpleframework/http/core/SegmentConsumer$Token;->off:I

    iget v4, p0, Lorg/simpleframework/http/core/SegmentConsumer$Token;->size:I

    invoke-direct {v1, v2, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 646
    :goto_d
    return-object v1

    .line 645
    :catch_e
    move-exception v0

    .line 646
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_d
.end method
