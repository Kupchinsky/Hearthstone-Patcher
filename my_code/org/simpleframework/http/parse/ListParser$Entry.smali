.class Lorg/simpleframework/http/parse/ListParser$Entry;
.super Ljava/lang/Object;
.source "ListParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/parse/ListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/simpleframework/http/parse/ListParser",
        "<TT;>.Entry;>;"
    }
.end annotation


# instance fields
.field private final order:I

.field private final priority:J

.field final synthetic this$0:Lorg/simpleframework/http/parse/ListParser;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/parse/ListParser;Ljava/lang/Object;JI)V
    .registers 7
    .param p3, "priority"    # J
    .param p5, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JI)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser$Entry;, "Lorg/simpleframework/http/parse/ListParser<TT;>.Entry;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/simpleframework/http/parse/ListParser$Entry;->this$0:Lorg/simpleframework/http/parse/ListParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-wide p3, p0, Lorg/simpleframework/http/parse/ListParser$Entry;->priority:J

    .line 420
    iput p5, p0, Lorg/simpleframework/http/parse/ListParser$Entry;->order:I

    .line 421
    iput-object p2, p0, Lorg/simpleframework/http/parse/ListParser$Entry;->value:Ljava/lang/Object;

    .line 422
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 392
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser$Entry;, "Lorg/simpleframework/http/parse/ListParser<TT;>.Entry;"
    check-cast p1, Lorg/simpleframework/http/parse/ListParser$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/ListParser$Entry;->compareTo(Lorg/simpleframework/http/parse/ListParser$Entry;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/simpleframework/http/parse/ListParser$Entry;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/http/parse/ListParser",
            "<TT;>.Entry;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser$Entry;, "Lorg/simpleframework/http/parse/ListParser<TT;>.Entry;"
    .local p1, "entry":Lorg/simpleframework/http/parse/ListParser$Entry;, "Lorg/simpleframework/http/parse/ListParser<TT;>.Entry;"
    const-wide/16 v6, 0x0

    .line 447
    iget-wide v2, p1, Lorg/simpleframework/http/parse/ListParser$Entry;->priority:J

    iget-wide v4, p0, Lorg/simpleframework/http/parse/ListParser$Entry;->priority:J

    sub-long v0, v2, v4

    .line 449
    .local v0, "value":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_e

    .line 450
    const/4 v2, 0x1

    .line 455
    :goto_d
    return v2

    .line 452
    :cond_e
    cmp-long v2, v0, v6

    if-gez v2, :cond_14

    .line 453
    const/4 v2, -0x1

    goto :goto_d

    .line 455
    :cond_14
    iget v2, p0, Lorg/simpleframework/http/parse/ListParser$Entry;->order:I

    iget v3, p1, Lorg/simpleframework/http/parse/ListParser$Entry;->order:I

    sub-int/2addr v2, v3

    goto :goto_d
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lorg/simpleframework/http/parse/ListParser$Entry;, "Lorg/simpleframework/http/parse/ListParser<TT;>.Entry;"
    iget-object v0, p0, Lorg/simpleframework/http/parse/ListParser$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
