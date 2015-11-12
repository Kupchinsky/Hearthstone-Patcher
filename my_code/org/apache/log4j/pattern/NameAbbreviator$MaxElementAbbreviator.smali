.class Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;
.super Lorg/apache/log4j/pattern/NameAbbreviator;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaxElementAbbreviator"
.end annotation


# instance fields
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 178
    invoke-direct {p0}, Lorg/apache/log4j/pattern/NameAbbreviator;-><init>()V

    .line 179
    iput p1, p0, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;->count:I

    .line 180
    return-void
.end method


# virtual methods
.method public abbreviate(ILjava/lang/StringBuffer;)V
    .registers 8
    .param p1, "nameStart"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 191
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 193
    .local v1, "end":I
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "bufString":Ljava/lang/String;
    iget v2, p0, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;->count:I

    .local v2, "i":I
    :goto_c
    if-lez v2, :cond_1f

    .line 195
    const-string v3, "."

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 197
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1b

    if-ge v1, p1, :cond_1c

    .line 203
    :cond_1b
    :goto_1b
    return-void

    .line 194
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 202
    :cond_1f
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, p1, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1b
.end method
