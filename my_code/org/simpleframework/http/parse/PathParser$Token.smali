.class Lorg/simpleframework/http/parse/PathParser$Token;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/parse/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Token"
.end annotation


# instance fields
.field public len:I

.field public off:I

.field final synthetic this$0:Lorg/simpleframework/http/parse/PathParser;

.field public value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/simpleframework/http/parse/PathParser;)V
    .registers 2

    .prologue
    .line 514
    iput-object p1, p0, Lorg/simpleframework/http/parse/PathParser$Token;->this$0:Lorg/simpleframework/http/parse/PathParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/http/parse/PathParser;Lorg/simpleframework/http/parse/PathParser$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/simpleframework/http/parse/PathParser;
    .param p2, "x1"    # Lorg/simpleframework/http/parse/PathParser$1;

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/PathParser$Token;-><init>(Lorg/simpleframework/http/parse/PathParser;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser$Token;->value:Ljava/lang/String;

    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    .line 540
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 552
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser$Token;->value:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 553
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser$Token;->value:Ljava/lang/String;

    .line 558
    :goto_6
    return-object v0

    .line 555
    :cond_7
    iget v0, p0, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    if-lez v0, :cond_1c

    .line 556
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/http/parse/PathParser$Token;->this$0:Lorg/simpleframework/http/parse/PathParser;

    # getter for: Lorg/simpleframework/http/parse/PathParser;->buf:[C
    invoke-static {v1}, Lorg/simpleframework/http/parse/PathParser;->access$200(Lorg/simpleframework/http/parse/PathParser;)[C

    move-result-object v1

    iget v2, p0, Lorg/simpleframework/http/parse/PathParser$Token;->off:I

    iget v3, p0, Lorg/simpleframework/http/parse/PathParser$Token;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser$Token;->value:Ljava/lang/String;

    .line 558
    :cond_1c
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser$Token;->value:Ljava/lang/String;

    goto :goto_6
.end method
