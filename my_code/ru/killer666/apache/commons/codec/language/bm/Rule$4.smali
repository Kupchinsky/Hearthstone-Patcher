.class final Lru/killer666/apache/commons/codec/language/bm/Rule$4;
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
.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 432
    iput-object p1, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$4;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 435
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$4;->val$content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
