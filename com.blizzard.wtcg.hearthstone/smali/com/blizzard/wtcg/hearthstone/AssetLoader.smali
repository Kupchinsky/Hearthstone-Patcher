.class public Lcom/blizzard/wtcg/hearthstone/AssetLoader;
.super Ljava/lang/Object;
.source "AssetLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetFileSize(Ljava/lang/String;)I
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 20
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jar:file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 22
    .local v2, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 27
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "urlConnection":Ljava/net/URLConnection;
    :goto_0
    return v3

    .line 24
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "AssetLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GetFileSize("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static LoadFile(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v0, 0x0

    .line 33
    const/4 v8, 0x0

    .line 37
    .local v8, "urlConnection":Ljava/net/URLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "jar:file://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 45
    .end local v7    # "url":Ljava/net/URL;
    :goto_0
    const/4 v2, 0x0

    .line 49
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    move-object v2, v3

    .line 56
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v8}, Ljava/net/URLConnection;->getContentLength()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v8}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 57
    .local v0, "contentLength":I
    :cond_0
    const v9, 0x8000

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 62
    .local v6, "tempBufferSize":I
    :try_start_2
    new-array v5, v6, [B

    .line 63
    .local v5, "tempBuffer":[B
    :goto_2
    const/4 v9, 0x0

    array-length v10, v5

    invoke-virtual {v2, v5, v9, v10}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .local v4, "nRead":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_1

    .line 72
    .end local v4    # "nRead":I
    .end local v5    # "tempBuffer":[B
    :goto_3
    return-void

    .line 40
    .end local v0    # "contentLength":I
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "tempBufferSize":I
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "AssetLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "LoadFile("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 53
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "AssetLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "LoadFile("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "contentLength":I
    .restart local v4    # "nRead":I
    .restart local v5    # "tempBuffer":[B
    .restart local v6    # "tempBufferSize":I
    :cond_1
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {p1, v5, v9, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 68
    .end local v4    # "nRead":I
    .end local v5    # "tempBuffer":[B
    :catch_2
    move-exception v1

    .line 70
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "AssetLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "LoadFile("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
