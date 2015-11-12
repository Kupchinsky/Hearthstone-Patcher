.class Lorg/simpleframework/http/parse/AddressParser$Token;
.super Ljava/lang/Object;
.source "AddressParser.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/parse/AddressParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Token"
.end annotation


# instance fields
.field public len:I

.field public off:I

.field final synthetic this$0:Lorg/simpleframework/http/parse/AddressParser;

.field public value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/simpleframework/http/parse/AddressParser;)V
    .registers 2

    .prologue
    .line 1246
    iput-object p1, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->this$0:Lorg/simpleframework/http/parse/AddressParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/http/parse/AddressParser;Lorg/simpleframework/http/parse/AddressParser$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/simpleframework/http/parse/AddressParser;
    .param p2, "x1"    # Lorg/simpleframework/http/parse/AddressParser$1;

    .prologue
    .line 1246
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser$Token;-><init>(Lorg/simpleframework/http/parse/AddressParser;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1270
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    .line 1271
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    .line 1272
    return-void
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1283
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1284
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    .line 1286
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1299
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1300
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    .line 1305
    :goto_6
    return-object v0

    .line 1302
    :cond_7
    iget v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    if-lez v0, :cond_1c

    .line 1303
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->this$0:Lorg/simpleframework/http/parse/AddressParser;

    # getter for: Lorg/simpleframework/http/parse/AddressParser;->buf:[C
    invoke-static {v1}, Lorg/simpleframework/http/parse/AddressParser;->access$300(Lorg/simpleframework/http/parse/AddressParser;)[C

    move-result-object v1

    iget v2, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->off:I

    iget v3, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    .line 1305
    :cond_1c
    iget-object v0, p0, Lorg/simpleframework/http/parse/AddressParser$Token;->value:Ljava/lang/String;

    goto :goto_6
.end method
