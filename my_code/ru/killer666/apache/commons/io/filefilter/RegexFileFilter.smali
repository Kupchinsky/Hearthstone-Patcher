.class public Lru/killer666/apache/commons/io/filefilter/RegexFileFilter;
.super Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;
.source "RegexFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 57
    if-nez p1, :cond_d

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_d
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lru/killer666/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 90
    if-nez p1, :cond_d

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_d
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lru/killer666/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lru/killer666/apache/commons/io/IOCase;)V
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "caseSensitivity"    # Lru/killer666/apache/commons/io/IOCase;

    .prologue
    .line 71
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 72
    if-nez p1, :cond_d

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pattern is missing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_d
    const/4 v0, 0x0

    .line 76
    .local v0, "flags":I
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Lru/killer666/apache/commons/io/IOCase;->isCaseSensitive()Z

    move-result v1

    if-nez v1, :cond_17

    .line 77
    const/4 v0, 0x2

    .line 79
    :cond_17
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lru/killer666/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 102
    invoke-direct {p0}, Lru/killer666/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 103
    if-nez p1, :cond_d

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_d
    iput-object p1, p0, Lru/killer666/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 108
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lru/killer666/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
