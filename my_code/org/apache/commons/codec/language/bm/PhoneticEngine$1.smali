.class final Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/codec/language/bm/PhoneticEngine;->cacheSubSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:[[Ljava/lang/CharSequence;

.field final synthetic val$cached:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 256
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cache:[[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 269
    if-ne p1, p2, :cond_5

    .line 270
    const-string v0, ""

    .line 278
    :cond_4
    :goto_4
    return-object v0

    .line 273
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cache:[[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    add-int/lit8 v2, p2, -0x1

    aget-object v0, v1, v2

    .line 274
    .local v0, "res":Ljava/lang/CharSequence;
    if-nez v0, :cond_4

    .line 275
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    invoke-interface {v1, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cache:[[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    add-int/lit8 v2, p2, -0x1

    aput-object v0, v1, v2

    goto :goto_4
.end method
