.class final Lru/killer666/apache/commons/codec/language/bm/Rule$10;
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
.field pattern:Ljava/util/regex/Pattern;

.field final synthetic val$regex:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 504
    iput-object p1, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$10;->val$regex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iget-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$10;->val$regex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$10;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public isMatch(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 509
    iget-object v1, p0, Lru/killer666/apache/commons/codec/language/bm/Rule$10;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 510
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1
.end method
