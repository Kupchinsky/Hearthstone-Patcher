.class public Lorg/apache/commons/io/output/ProxyWriter;
.super Ljava/io/FilterWriter;
.source "ProxyWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 2
    .param p1, "proxy"    # Ljava/io/Writer;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected afterWrite(I)V
    .registers 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    return-void
.end method

.method public append(C)Ljava/io/Writer;
    .registers 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 56
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    .line 61
    :goto_d
    return-object p0

    .line 58
    :catch_e
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_d
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "len":I
    if-eqz p1, :cond_7

    .line 97
    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 100
    :cond_7
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 101
    iget-object v2, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 102
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_13

    .line 106
    :goto_12
    return-object p0

    .line 103
    :catch_13
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_12
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    sub-int v1, p3, p2

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 77
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    .line 78
    sub-int v1, p3, p2

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_10

    .line 82
    :goto_f
    return-object p0

    .line 79
    :catch_10
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_f
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/ProxyWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method protected beforeWrite(I)V
    .registers 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 227
    :goto_5
    return-void

    .line 224
    :catch_6
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_5
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 214
    :goto_5
    return-void

    .line 211
    :catch_6
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_5
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .registers 2
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    throw p1
.end method

.method public write(I)V
    .registers 4
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 118
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    .line 123
    :goto_d
    return-void

    .line 120
    :catch_e
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_d
.end method

.method public write(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "len":I
    if-eqz p1, :cond_7

    .line 174
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 177
    :cond_7
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 178
    iget-object v2, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_13

    .line 183
    :goto_12
    return-void

    .line 180
    :catch_13
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_12
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "st"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 196
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 197
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 201
    :goto_b
    return-void

    .line 198
    :catch_c
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_b
.end method

.method public write([C)V
    .registers 5
    .param p1, "chr"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "len":I
    if-eqz p1, :cond_4

    .line 135
    :try_start_3
    array-length v1, p1

    .line 138
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 139
    iget-object v2, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write([C)V

    .line 140
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_10

    .line 144
    :goto_f
    return-void

    .line 141
    :catch_10
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_f
.end method

.method public write([CII)V
    .registers 6
    .param p1, "chr"    # [C
    .param p2, "st"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->beforeWrite(I)V

    .line 157
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 158
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyWriter;->afterWrite(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 162
    :goto_b
    return-void

    .line 159
    :catch_c
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyWriter;->handleIOException(Ljava/io/IOException;)V

    goto :goto_b
.end method
