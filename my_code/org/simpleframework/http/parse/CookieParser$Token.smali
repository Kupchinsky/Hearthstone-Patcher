.class Lorg/simpleframework/http/parse/CookieParser$Token;
.super Ljava/lang/Object;
.source "CookieParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/parse/CookieParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Token"
.end annotation


# instance fields
.field public len:I

.field public off:I

.field final synthetic this$0:Lorg/simpleframework/http/parse/CookieParser;


# direct methods
.method private constructor <init>(Lorg/simpleframework/http/parse/CookieParser;)V
    .registers 2

    .prologue
    .line 569
    iput-object p1, p0, Lorg/simpleframework/http/parse/CookieParser$Token;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/http/parse/CookieParser;Lorg/simpleframework/http/parse/CookieParser$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/simpleframework/http/parse/CookieParser;
    .param p2, "x1"    # Lorg/simpleframework/http/parse/CookieParser$1;

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/CookieParser$Token;-><init>(Lorg/simpleframework/http/parse/CookieParser;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 588
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/http/parse/CookieParser$Token;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    # getter for: Lorg/simpleframework/http/parse/CookieParser;->buf:[C
    invoke-static {v1}, Lorg/simpleframework/http/parse/CookieParser;->access$600(Lorg/simpleframework/http/parse/CookieParser;)[C

    move-result-object v1

    iget v2, p0, Lorg/simpleframework/http/parse/CookieParser$Token;->off:I

    iget v3, p0, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
