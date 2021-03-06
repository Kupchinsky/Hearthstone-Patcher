.class public Lorg/apache/log4j/helpers/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# static fields
.field private static final CDATA_EMBEDED_END:Ljava/lang/String; = "]]>]]&gt;<![CDATA["

.field private static final CDATA_END:Ljava/lang/String; = "]]>"

.field private static final CDATA_END_LEN:I

.field private static final CDATA_PSEUDO_END:Ljava/lang/String; = "]]&gt;"

.field private static final CDATA_START:Ljava/lang/String; = "<![CDATA["


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "]]>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/log4j/helpers/Transform;->CDATA_END_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 5
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 93
    if-eqz p1, :cond_d

    .line 94
    const-string v2, "]]>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "end":I
    if-gez v0, :cond_e

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .end local v0    # "end":I
    :cond_d
    :goto_d
    return-void

    .line 98
    .restart local v0    # "end":I
    :cond_e
    const/4 v1, 0x0

    .line 99
    .local v1, "start":I
    :goto_f
    const/4 v2, -0x1

    if-le v0, v2, :cond_2f

    .line 100
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v2, "]]>]]&gt;<![CDATA["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    sget v2, Lorg/apache/log4j/helpers/Transform;->CDATA_END_LEN:I

    add-int v1, v0, v2

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 104
    const-string v2, "]]>"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_f

    .line 109
    :cond_2f
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d
.end method

.method public static escapeTags(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3c

    const/16 v8, 0x26

    const/16 v7, 0x22

    const/16 v6, 0x3e

    const/4 v5, -0x1

    .line 47
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_2a

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_2a

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_2a

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_2a

    .line 79
    .end local p0    # "input":Ljava/lang/String;
    :cond_29
    :goto_29
    return-object p0

    .line 59
    .restart local p0    # "input":Ljava/lang/String;
    :cond_2a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 60
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x20

    .line 62
    .local v1, "ch":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 63
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    if-ge v2, v3, :cond_6e

    .line 64
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 65
    if-le v1, v6, :cond_4a

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 67
    :cond_4a
    if-ne v1, v9, :cond_52

    .line 68
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_47

    .line 69
    :cond_52
    if-ne v1, v6, :cond_5a

    .line 70
    const-string v4, "&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_47

    .line 71
    :cond_5a
    if-ne v1, v8, :cond_62

    .line 72
    const-string v4, "&amp;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_47

    .line 73
    :cond_62
    if-ne v1, v7, :cond_6a

    .line 74
    const-string v4, "&quot;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_47

    .line 76
    :cond_6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_47

    .line 79
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29
.end method
