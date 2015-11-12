.class public Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;
.super Lcom/turn/ttorrent/client/announce/TrackerClient;
.source "HTTPTrackerClient.java"


# static fields
.field protected static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;Ljava/net/URI;)V
    .registers 4
    .param p1, "torrent"    # Lcom/turn/ttorrent/client/SharedTorrent;
    .param p2, "peer"    # Lcom/turn/ttorrent/common/Peer;
    .param p3, "tracker"    # Ljava/net/URI;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/turn/ttorrent/client/announce/TrackerClient;-><init>(Lcom/turn/ttorrent/client/SharedTorrent;Lcom/turn/ttorrent/common/Peer;Ljava/net/URI;)V

    .line 57
    return-void
.end method

.method private buildAnnounceRequest(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
    .registers 17
    .param p1, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->getInfoHash()[B

    move-result-object v1

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/Peer;->getPeerId()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/Peer;->getPort()I

    move-result v3

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->getUploaded()J

    move-result-wide v4

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->getDownloaded()J

    move-result-wide v6

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/SharedTorrent;->getLeft()J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->peer:Lcom/turn/ttorrent/common/Peer;

    invoke-virtual {v0}, Lcom/turn/ttorrent/common/Peer;->getIp()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x32

    move-object/from16 v12, p1

    invoke-static/range {v1 .. v14}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->craft([B[BIJJJZZLcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Ljava/lang/String;I)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public announce(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;Z)V
    .registers 21
    .param p1, "event"    # Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .param p2, "inhibitEvents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/turn/ttorrent/client/announce/AnnounceException;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v12, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->logger:Lorg/slf4j/Logger;

    const-string v13, "Announcing{} to tracker with {}U/{}D/{}L bytes..."

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->formatAnnounceEvent(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/client/SharedTorrent;->getUploaded()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/client/SharedTorrent;->getDownloaded()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->torrent:Lcom/turn/ttorrent/client/SharedTorrent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/turn/ttorrent/client/SharedTorrent;->getLeft()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const/4 v11, 0x0

    .line 90
    .local v11, "target":Ljava/net/URL;
    :try_start_45
    invoke-direct/range {p0 .. p1}, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->buildAnnounceRequest(Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;)Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;

    move-result-object v10

    .line 92
    .local v10, "request":Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->tracker:Ljava/net/URI;

    invoke-virtual {v12}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;->buildAnnounceURL(Ljava/net/URL;)Ljava/net/URL;
    :try_end_54
    .catch Ljava/net/MalformedURLException; {:try_start_45 .. :try_end_54} :catch_6d
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_45 .. :try_end_54} :catch_91
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_54} :catch_b5

    move-result-object v11

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 107
    .local v5, "in":Ljava/io/InputStream;
    :try_start_57
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 108
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_62} :catch_d9

    move-result-object v5

    .line 118
    :cond_63
    :goto_63
    if-nez v5, :cond_e1

    .line 119
    new-instance v12, Lcom/turn/ttorrent/client/announce/AnnounceException;

    const-string v13, "No response or unreachable tracker!"

    invoke-direct {v12, v13}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 93
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v10    # "request":Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
    :catch_6d
    move-exception v8

    .line 94
    .local v8, "mue":Ljava/net/MalformedURLException;
    new-instance v12, Lcom/turn/ttorrent/client/announce/AnnounceException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid announce URL ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v8}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 96
    .end local v8    # "mue":Ljava/net/MalformedURLException;
    :catch_91
    move-exception v9

    .line 97
    .local v9, "mve":Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
    new-instance v12, Lcom/turn/ttorrent/client/announce/AnnounceException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Announce request creation violated expected protocol ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v9}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 99
    .end local v9    # "mve":Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
    :catch_b5
    move-exception v6

    .line 100
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v12, Lcom/turn/ttorrent/client/announce/AnnounceException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error building announce request ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v6}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 109
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v10    # "request":Lcom/turn/ttorrent/common/protocol/http/HTTPAnnounceRequestMessage;
    :catch_d9
    move-exception v6

    .line 110
    .restart local v6    # "ioe":Ljava/io/IOException;
    if-eqz v3, :cond_63

    .line 111
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    goto :goto_63

    .line 123
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_e1
    :try_start_e1
    new-instance v2, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v2}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 124
    .local v2, "baos":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    invoke-virtual {v2, v5}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 127
    invoke-virtual {v2}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v12}, Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;->parse(Ljava/nio/ByteBuffer;)Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;

    move-result-object v7

    .line 129
    .local v7, "message":Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->handleTrackerAnnounceResponse(Lcom/turn/ttorrent/common/protocol/TrackerMessage;Z)V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_fc} :catch_11b
    .catch Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException; {:try_start_e1 .. :try_end_fc} :catch_132
    .catchall {:try_start_e1 .. :try_end_fc} :catchall_124

    .line 139
    :try_start_fc
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_109

    .line 145
    :goto_ff
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 146
    .local v4, "err":Ljava/io/InputStream;
    if-eqz v4, :cond_108

    .line 148
    :try_start_105
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_112

    .line 154
    :cond_108
    :goto_108
    return-void

    .line 140
    .end local v4    # "err":Ljava/io/InputStream;
    :catch_109
    move-exception v6

    .line 141
    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v12, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->logger:Lorg/slf4j/Logger;

    const-string v13, "Problem ensuring error stream closed!"

    invoke-interface {v12, v13, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ff

    .line 149
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v4    # "err":Ljava/io/InputStream;
    :catch_112
    move-exception v6

    .line 150
    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v12, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->logger:Lorg/slf4j/Logger;

    const-string v13, "Problem ensuring error stream closed!"

    invoke-interface {v12, v13, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_108

    .line 130
    .end local v2    # "baos":Lorg/apache/commons/io/output/ByteArrayOutputStream;
    .end local v4    # "err":Ljava/io/InputStream;
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v7    # "message":Lcom/turn/ttorrent/common/protocol/http/HTTPTrackerMessage;
    :catch_11b
    move-exception v6

    .line 131
    .restart local v6    # "ioe":Ljava/io/IOException;
    :try_start_11c
    new-instance v12, Lcom/turn/ttorrent/client/announce/AnnounceException;

    const-string v13, "Error reading tracker response!"

    invoke-direct {v12, v13, v6}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_124
    .catchall {:try_start_11c .. :try_end_124} :catchall_124

    .line 138
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_124
    move-exception v12

    .line 139
    :try_start_125
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_156

    .line 145
    :goto_128
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 146
    .restart local v4    # "err":Ljava/io/InputStream;
    if-eqz v4, :cond_131

    .line 148
    :try_start_12e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_15f

    .line 153
    :cond_131
    :goto_131
    throw v12

    .line 132
    .end local v4    # "err":Ljava/io/InputStream;
    :catch_132
    move-exception v9

    .line 133
    .restart local v9    # "mve":Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
    :try_start_133
    new-instance v12, Lcom/turn/ttorrent/client/announce/AnnounceException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Tracker message violates expected protocol ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v9}, Lcom/turn/ttorrent/client/announce/AnnounceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_156
    .catchall {:try_start_133 .. :try_end_156} :catchall_124

    .line 140
    .end local v9    # "mve":Lcom/turn/ttorrent/common/protocol/TrackerMessage$MessageValidationException;
    :catch_156
    move-exception v6

    .line 141
    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v13, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->logger:Lorg/slf4j/Logger;

    const-string v14, "Problem ensuring error stream closed!"

    invoke-interface {v13, v14, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_128

    .line 149
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v4    # "err":Ljava/io/InputStream;
    :catch_15f
    move-exception v6

    .line 150
    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v13, Lcom/turn/ttorrent/client/announce/HTTPTrackerClient;->logger:Lorg/slf4j/Logger;

    const-string v14, "Problem ensuring error stream closed!"

    invoke-interface {v13, v14, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_131
.end method
