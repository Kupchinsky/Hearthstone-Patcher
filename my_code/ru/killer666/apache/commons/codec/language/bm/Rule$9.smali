.class final Lru/killer666/apache/commons/codec/language/bm/Rule$9;
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
    .line 492
    iput-object p1, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$9;->val$bContent:Ljava/lang/String;

    iput-boolean p2, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$9;->val$shouldMatch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 495
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$9;->val$bContent:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    # invokes: Lru/killer666/apache/commons/codec/language/bm/Rule;->contains(Ljava/lang/CharSequence;C)Z
    invoke-static {v0, v1}, Lru/killer666/apache/commons/codec/language/bm/Rule;->access$300(Ljava/lang/CharSequence;C)Z

    move-result v0

    iget-boolean v1, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$9;->val$shouldMatch:Z

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
