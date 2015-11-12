.class public Lcom/turn/ttorrent/bcodec/BEValue;
.super Ljava/lang/Object;
.source "BEValue.java"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Number;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "value"    # [B

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    .line 109
    :catch_7
    move-exception v0

    .line 110
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v1, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BEValue;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 163
    iget-object v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 165
    :cond_b
    new-instance v0, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    const-string v1, "Excepted List<BEvalue> !"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BEValue;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/HashMap;

    if-eqz v0, :cond_b

    .line 177
    iget-object v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 179
    :cond_b
    new-instance v0, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    const-string v1, "Expected Map<String, BEValue> !"

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumber()Ljava/lang/Number;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v1

    .line 122
    :catch_5
    move-exception v0

    .line 123
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v1, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShort()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BEValue;->getNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/turn/ttorrent/bcodec/BEValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/turn/ttorrent/bcodec/BEValue;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_15

    return-object v2

    .line 94
    :catch_a
    move-exception v0

    .line 95
    .local v0, "cce":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/turn/ttorrent/bcodec/InvalidBEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    :catch_15
    move-exception v1

    .line 97
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/turn/ttorrent/bcodec/BEValue;->value:Ljava/lang/Object;

    return-object v0
.end method
