.class final Lru/killer666/apache/commons/codec/language/bm/Rule$7;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/apache/commons/codec/language/bm/Rule;->pattern(Ljava/lang/String;)Lru/killer666/apache/commons/codec/language/bm/Rule$RPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bContent:Ljava/lang/String;

.field final synthetic val$shouldMatch:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 476
    iput-object p1, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$7;->val$bContent:Ljava/lang/String;

    iput-boolean p2, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$7;->val$shouldMatch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 479
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v0, :cond_17

    iget-object v2, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$7;->val$bContent:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    # invokes: Lru/killer666/apache/commons/codec/language/bm/Rule;->contains(Ljava/lang/CharSequence;C)Z
    invoke-static {v2, v3}, Lru/killer666/apache/commons/codec/language/bm/Rule;->access$300(Ljava/lang/CharSequence;C)Z

    move-result v2

    iget-boolean v3, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$7;->val$shouldMatch:Z

    if-ne v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method
