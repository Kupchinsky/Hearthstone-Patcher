.class Lorg/simpleframework/http/parse/QueryParser$Token;
.super Ljava/lang/Object;
.source "QueryParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/parse/QueryParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Token"
.end annotation


# instance fields
.field public len:I

.field public off:I

.field final synthetic this$0:Lorg/simpleframework/http/parse/QueryParser;


# direct methods
.method private constructor <init>(Lorg/simpleframework/http/parse/QueryParser;)V
    .registers 2

    .prologue
    .line 609
    iput-object p1, p0, Lorg/simpleframework/http/parse/QueryParser$Token;->this$0:Lorg/simpleframework/http/parse/QueryParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/http/parse/QueryParser;Lorg/simpleframework/http/parse/QueryParser$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/simpleframework/http/parse/QueryParser;
    .param p2, "x1"    # Lorg/simpleframework/http/parse/QueryParser$1;

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/QueryParser$Token;-><init>(Lorg/simpleframework/http/parse/QueryParser;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 630
    iget v0, p0, Lorg/simpleframework/http/parse/QueryParser$Token;->len:I

    if-gtz v0, :cond_7

    .line 631
    const-string v0, ""

    .line 633
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/http/parse/QueryParser$Token;->this$0:Lorg/simpleframework/http/parse/QueryParser;

    # getter for: Lorg/simpleframework/http/parse/QueryParser;->buf:[C
    invoke-static {v1}, Lorg/simpleframework/http/parse/QueryParser;->access$100(Lorg/simpleframework/http/parse/QueryParser;)[C

    move-result-object v1

    iget v2, p0, Lorg/simpleframework/http/parse/QueryParser$Token;->off:I

    iget v3, p0, Lorg/simpleframework/http/parse/QueryParser$Token;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6
.end method
