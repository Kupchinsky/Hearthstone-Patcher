.class Lorg/simpleframework/http/parse/PathParser$TokenList;
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
    name = "TokenList"
.end annotation


# instance fields
.field private cache:[Ljava/lang/String;

.field private count:I

.field private list:[I

.field final synthetic this$0:Lorg/simpleframework/http/parse/PathParser;


# direct methods
.method private constructor <init>(Lorg/simpleframework/http/parse/PathParser;)V
    .registers 3

    .prologue
    .line 593
    iput-object p1, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->this$0:Lorg/simpleframework/http/parse/PathParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    .line 595
    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/http/parse/PathParser;Lorg/simpleframework/http/parse/PathParser$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/simpleframework/http/parse/PathParser;
    .param p2, "x1"    # Lorg/simpleframework/http/parse/PathParser$1;

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/PathParser$TokenList;-><init>(Lorg/simpleframework/http/parse/PathParser;)V

    return-void
.end method

.method private build()[Ljava/lang/String;
    .registers 9

    .prologue
    .line 695
    iget v6, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    div-int/lit8 v6, v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    .line 697
    .local v5, "value":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    iget v6, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    div-int/lit8 v2, v6, 0x2

    .local v2, "j":I
    :goto_b
    iget v6, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    if-ge v0, v6, :cond_2f

    .line 698
    div-int/lit8 v6, v0, 0x2

    sub-int v6, v2, v6

    add-int/lit8 v1, v6, -0x1

    .line 699
    .local v1, "index":I
    iget-object v6, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    aget v3, v6, v0

    .line 700
    .local v3, "off":I
    iget-object v6, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    add-int/lit8 v7, v0, 0x1

    aget v4, v6, v7

    .line 702
    .local v4, "size":I
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->this$0:Lorg/simpleframework/http/parse/PathParser;

    # getter for: Lorg/simpleframework/http/parse/PathParser;->buf:[C
    invoke-static {v7}, Lorg/simpleframework/http/parse/PathParser;->access$400(Lorg/simpleframework/http/parse/PathParser;)[C

    move-result-object v7

    invoke-direct {v6, v7, v3, v4}, Ljava/lang/String;-><init>([CII)V

    aput-object v6, v5, v1

    .line 697
    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    .line 704
    .end local v1    # "index":I
    .end local v3    # "off":I
    .end local v4    # "size":I
    :cond_2f
    return-object v5
.end method

.method private offset(I)I
    .registers 6
    .param p1, "segment"    # I

    .prologue
    .line 647
    iget v3, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    add-int/lit8 v1, v3, -0x2

    .line 648
    .local v1, "last":I
    mul-int/lit8 v2, p1, 0x2

    .line 649
    .local v2, "shift":I
    sub-int v0, v1, v2

    .line 651
    .local v0, "index":I
    iget-object v3, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    aget v3, v3, v0

    return v3
.end method

.method private resize(I)V
    .registers 6
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 726
    new-array v0, p1, [I

    .line 727
    .local v0, "copy":[I
    iget-object v1, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    iget v2, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 728
    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    .line 729
    return-void
.end method


# virtual methods
.method public add(II)V
    .registers 6
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 664
    iget v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    array-length v1, v1

    if-le v0, v1, :cond_10

    .line 665
    iget v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/PathParser$TokenList;->resize(I)V

    .line 667
    :cond_10
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    iget v1, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    aput p1, v0, v1

    .line 668
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    iget v1, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    aput p2, v0, v1

    .line 669
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->cache:[Ljava/lang/String;

    .line 715
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    .line 716
    return-void
.end method

.method public list()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->cache:[Ljava/lang/String;

    if-nez v0, :cond_a

    .line 681
    invoke-direct {p0}, Lorg/simpleframework/http/parse/PathParser$TokenList;->build()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->cache:[Ljava/lang/String;

    .line 683
    :cond_a
    iget-object v0, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->cache:[Ljava/lang/String;

    return-object v0
.end method

.method public segment(I)Ljava/lang/String;
    .registers 5
    .param p1, "from"    # I

    .prologue
    .line 608
    iget v2, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    div-int/lit8 v1, v2, 0x2

    .line 609
    .local v1, "total":I
    sub-int v0, v1, p1

    .line 611
    .local v0, "left":I
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/http/parse/PathParser$TokenList;->segment(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public segment(II)Ljava/lang/String;
    .registers 9
    .param p1, "from"    # I
    .param p2, "total"    # I

    .prologue
    .line 626
    iget-object v3, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->list:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    .line 628
    .local v0, "last":I
    add-int v3, p1, p2

    iget v4, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->count:I

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_1b

    .line 629
    add-int v3, p1, p2

    invoke-direct {p0, v3}, Lorg/simpleframework/http/parse/PathParser$TokenList;->offset(I)I

    move-result v0

    .line 631
    :cond_1b
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/PathParser$TokenList;->offset(I)I

    move-result v2

    .line 632
    .local v2, "start":I
    sub-int v1, v0, v2

    .line 634
    .local v1, "length":I
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/simpleframework/http/parse/PathParser$TokenList;->this$0:Lorg/simpleframework/http/parse/PathParser;

    # getter for: Lorg/simpleframework/http/parse/PathParser;->buf:[C
    invoke-static {v4}, Lorg/simpleframework/http/parse/PathParser;->access$300(Lorg/simpleframework/http/parse/PathParser;)[C

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-direct {v3, v4, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
