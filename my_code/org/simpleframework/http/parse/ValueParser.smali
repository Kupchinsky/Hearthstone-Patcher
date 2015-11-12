.class public Lorg/simpleframework/http/parse/ValueParser;
.super Lorg/simpleframework/http/parse/ListParser;
.source "ValueParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/http/parse/ListParser",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/simpleframework/http/parse/ListParser;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/ListParser;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/ListParser;-><init>(Ljava/util/List;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected bridge synthetic create([CII)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # [C
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lorg/simpleframework/http/parse/ValueParser;->create([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected create([CII)Ljava/lang/String;
    .registers 5
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 106
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
