.class Lorg/simpleframework/http/core/RequestConsumer$Token;
.super Ljava/lang/Object;
.source "RequestConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/core/RequestConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Token"
.end annotation


# instance fields
.field public off:I

.field public size:I

.field final synthetic this$0:Lorg/simpleframework/http/core/RequestConsumer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/RequestConsumer;II)V
    .registers 4
    .param p2, "off"    # I
    .param p3, "size"    # I

    .prologue
    .line 382
    iput-object p1, p0, Lorg/simpleframework/http/core/RequestConsumer$Token;->this$0:Lorg/simpleframework/http/core/RequestConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput p2, p0, Lorg/simpleframework/http/core/RequestConsumer$Token;->off:I

    .line 384
    iput p3, p0, Lorg/simpleframework/http/core/RequestConsumer$Token;->size:I

    .line 385
    return-void
.end method


# virtual methods
.method public text()Ljava/lang/String;
    .registers 2

    .prologue
    .line 395
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/core/RequestConsumer$Token;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 407
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/http/core/RequestConsumer$Token;->this$0:Lorg/simpleframework/http/core/RequestConsumer;

    iget-object v2, v2, Lorg/simpleframework/http/core/RequestConsumer;->array:[B

    iget v3, p0, Lorg/simpleframework/http/core/RequestConsumer$Token;->off:I

    iget v4, p0, Lorg/simpleframework/http/core/RequestConsumer$Token;->size:I

    invoke-direct {v1, v2, v3, v4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 409
    :goto_d
    return-object v1

    .line 408
    :catch_e
    move-exception v0

    .line 409
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_d
.end method
