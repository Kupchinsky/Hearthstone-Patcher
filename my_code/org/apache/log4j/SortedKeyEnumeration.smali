.class Lorg/apache/log4j/SortedKeyEnumeration;
.super Ljava/lang/Object;
.source "PropertyConfigurator.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private e:Ljava/util/Enumeration;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 9
    .param p1, "ht"    # Ljava/util/Hashtable;

    .prologue
    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 944
    .local v0, "f":Ljava/util/Enumeration;
    new-instance v3, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/Vector;-><init>(I)V

    .line 945
    .local v3, "keys":Ljava/util/Vector;
    const/4 v4, 0x0

    .local v4, "last":I
    :goto_11
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 946
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 947
    .local v2, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v4, :cond_2c

    .line 948
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 949
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_32

    .line 951
    .end local v5    # "s":Ljava/lang/String;
    :cond_2c
    invoke-virtual {v3, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 945
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 947
    .restart local v5    # "s":Ljava/lang/String;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 953
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :cond_35
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/log4j/SortedKeyEnumeration;->e:Ljava/util/Enumeration;

    .line 954
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 957
    iget-object v0, p0, Lorg/apache/log4j/SortedKeyEnumeration;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Lorg/apache/log4j/SortedKeyEnumeration;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
