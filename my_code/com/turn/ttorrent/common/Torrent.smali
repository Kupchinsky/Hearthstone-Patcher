.class public Lcom/turn/ttorrent/common/Torrent;
.super Ljava/lang/Object;
.source "Torrent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;,
        Lcom/turn/ttorrent/common/Torrent$TorrentFile;
    }
.end annotation


# static fields
.field public static final BYTE_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field public static final PIECE_HASH_SIZE:I = 0x14

.field private static final PIECE_LENGTH:I = 0x80000

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final allTrackers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final comment:Ljava/lang/String;

.field private final createdBy:Ljava/lang/String;

.field private final creationDate:Ljava/util/Date;

.field protected final decoded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;"
        }
    .end annotation
.end field

.field protected final decoded_info:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/turn/ttorrent/bcodec/BEValue;",
            ">;"
        }
    .end annotation
.end field

.field protected final encoded:[B

.field protected final encoded_info:[B

.field protected final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/turn/ttorrent/common/Torrent$TorrentFile;",
            ">;"
        }
    .end annotation
.end field

.field private final hex_info_hash:Ljava/lang/String;

.field private final info_hash:[B

.field private final name:Ljava/lang/String;

.field private final seeder:Z

.field private final size:J

.field private final trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-class v0, Lcom/turn/ttorrent/common/Torrent;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 35
    .param p1, "torrent"    # [B
    .param p2, "seeder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->encoded:[B

    .line 135
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/turn/ttorrent/common/Torrent;->seeder:Z

    .line 137
    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->encoded:[B

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BDecoder;->bdecode(Ljava/io/InputStream;)Lcom/turn/ttorrent/bcodec/BEValue;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getMap()Ljava/util/Map;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "info"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getMap()Ljava/util/Map;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->decoded_info:Ljava/util/Map;

    .line 141
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded_info:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 143
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->encoded_info:[B

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->encoded_info:[B

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/turn/ttorrent/common/Torrent;->hash([B)[B

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->info_hash:[B

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->info_hash:[B

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->hex_info_hash:Ljava/lang/String;

    .line 161
    :try_start_7a
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->trackers:Ljava/util/List;

    .line 162
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->allTrackers:Ljava/util/Set;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "announce-list"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12c

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "announce-list"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getList()Ljava/util/List;

    move-result-object v16

    .line 166
    .local v16, "tiers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b4
    :goto_b4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_177

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/turn/ttorrent/bcodec/BEValue;

    .line 167
    .local v19, "tv":Lcom/turn/ttorrent/bcodec/BEValue;
    invoke-virtual/range {v19 .. v19}, Lcom/turn/ttorrent/bcodec/BEValue;->getList()Ljava/util/List;

    move-result-object v18

    .line 168
    .local v18, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b4

    .line 172
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v13, "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_d3
    :goto_d3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/turn/ttorrent/bcodec/BEValue;

    .line 174
    .local v17, "tracker":Lcom/turn/ttorrent/bcodec/BEValue;
    new-instance v20, Ljava/net/URI;

    invoke-virtual/range {v17 .. v17}, Lcom/turn/ttorrent/bcodec/BEValue;->getString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 177
    .local v20, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->allTrackers:Ljava/util/Set;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d3

    .line 178
    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->allTrackers:Ljava/util/Set;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_10e
    .catch Ljava/net/URISyntaxException; {:try_start_7a .. :try_end_10e} :catch_10f

    goto :goto_d3

    .line 197
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .end local v16    # "tiers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v17    # "tracker":Lcom/turn/ttorrent/bcodec/BEValue;
    .end local v18    # "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v19    # "tv":Lcom/turn/ttorrent/bcodec/BEValue;
    .end local v20    # "uri":Ljava/net/URI;
    :catch_10f
    move-exception v21

    .line 198
    .local v21, "use":Ljava/net/URISyntaxException;
    new-instance v22, Ljava/io/IOException;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 184
    .end local v21    # "use":Ljava/net/URISyntaxException;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v13    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .restart local v16    # "tiers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .restart local v18    # "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .restart local v19    # "tv":Lcom/turn/ttorrent/bcodec/BEValue;
    :cond_11a
    :try_start_11a
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b4

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->trackers:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 188
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .end local v16    # "tiers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v18    # "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v19    # "tv":Lcom/turn/ttorrent/bcodec/BEValue;
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "announce"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_177

    .line 189
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "announce"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 190
    .local v17, "tracker":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->allTrackers:Ljava/util/Set;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .restart local v13    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->trackers:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_177
    .catch Ljava/net/URISyntaxException; {:try_start_11a .. :try_end_177} :catch_10f

    .line 201
    .end local v13    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    .end local v17    # "tracker":Ljava/net/URI;
    :cond_177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "creation date"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_282

    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v24, "creation date"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getLong()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    invoke-direct/range {v23 .. v25}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v22, v23

    :goto_1a6
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->creationDate:Ljava/util/Date;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "comment"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_286

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "comment"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getString()Ljava/lang/String;

    move-result-object v22

    :goto_1cc
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->comment:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "created by"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "created by"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getString()Ljava/lang/String;

    move-result-object v22

    :goto_1f2
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->createdBy:Ljava/lang/String;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded_info:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "name"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->name:Ljava/lang/String;

    .line 212
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/turn/ttorrent/common/Torrent;->files:Ljava/util/List;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded_info:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "files"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c0

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded_info:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "files"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_23f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2f3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/turn/ttorrent/bcodec/BEValue;

    .line 217
    .local v5, "file":Lcom/turn/ttorrent/bcodec/BEValue;
    invoke-virtual {v5}, Lcom/turn/ttorrent/bcodec/BEValue;->getMap()Ljava/util/Map;

    move-result-object v6

    .line 218
    .local v6, "fileInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v11, "path":Ljava/lang/StringBuilder;
    const-string v22, "path"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_266
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_28e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/turn/ttorrent/bcodec/BEValue;

    .line 220
    .local v12, "pathElement":Lcom/turn/ttorrent/bcodec/BEValue;
    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Lcom/turn/ttorrent/bcodec/BEValue;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_266

    .line 201
    .end local v5    # "file":Lcom/turn/ttorrent/bcodec/BEValue;
    .end local v6    # "fileInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "path":Ljava/lang/StringBuilder;
    .end local v12    # "pathElement":Lcom/turn/ttorrent/bcodec/BEValue;
    :cond_282
    const/16 v22, 0x0

    goto/16 :goto_1a6

    .line 204
    :cond_286
    const/16 v22, 0x0

    goto/16 :goto_1cc

    .line 207
    :cond_28a
    const/16 v22, 0x0

    goto/16 :goto_1f2

    .line 223
    .restart local v5    # "file":Lcom/turn/ttorrent/bcodec/BEValue;
    .restart local v6    # "fileInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "path":Ljava/lang/StringBuilder;
    :cond_28e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->files:Ljava/util/List;

    move-object/from16 v23, v0

    new-instance v24, Lcom/turn/ttorrent/common/Torrent$TorrentFile;

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "length"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getLong()J

    move-result-wide v26

    invoke-direct/range {v24 .. v27}, Lcom/turn/ttorrent/common/Torrent$TorrentFile;-><init>(Ljava/io/File;J)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23f

    .line 230
    .end local v5    # "file":Lcom/turn/ttorrent/bcodec/BEValue;
    .end local v6    # "fileInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "path":Ljava/lang/StringBuilder;
    :cond_2c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->files:Ljava/util/List;

    move-object/from16 v23, v0

    new-instance v24, Lcom/turn/ttorrent/common/Torrent$TorrentFile;

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded_info:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v26, "length"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getLong()J

    move-result-wide v26

    invoke-direct/range {v24 .. v27}, Lcom/turn/ttorrent/common/Torrent$TorrentFile;-><init>(Ljava/io/File;J)V

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_2f3
    const-wide/16 v14, 0x0

    .line 237
    .local v14, "size":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->files:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2ff
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_312

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/turn/ttorrent/common/Torrent$TorrentFile;

    .line 238
    .local v5, "file":Lcom/turn/ttorrent/common/Torrent$TorrentFile;
    iget-wide v0, v5, Lcom/turn/ttorrent/common/Torrent$TorrentFile;->size:J

    move-wide/from16 v22, v0

    add-long v14, v14, v22

    .line 239
    goto :goto_2ff

    .line 240
    .end local v5    # "file":Lcom/turn/ttorrent/common/Torrent$TorrentFile;
    :cond_312
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/turn/ttorrent/common/Torrent;->size:J

    .line 242
    sget-object v23, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v24, "{}-file torrent information:"

    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/common/Torrent;->isMultifile()Z

    move-result v22

    if-eqz v22, :cond_3c4

    const-string v22, "Multi"

    :goto_322
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    sget-object v22, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v23, "  Torrent name: {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    sget-object v23, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  Announced at:"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->trackers:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_3c8

    const-string v22, " Seems to be trackerless"

    :goto_357
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 246
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_36b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->trackers:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_3d1

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->trackers:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 248
    .restart local v13    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_388
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_3ce

    .line 249
    sget-object v23, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v24, "    {}{}"

    if-nez v10, :cond_3cb

    const-string v22, "%2d. "

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    add-int/lit8 v27, v7, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    :goto_3b2
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    add-int/lit8 v10, v10, 0x1

    goto :goto_388

    .line 242
    .end local v7    # "i":I
    .end local v10    # "j":I
    .end local v13    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :cond_3c4
    const-string v22, "Single"

    goto/16 :goto_322

    .line 245
    :cond_3c8
    const-string v22, ""

    goto :goto_357

    .line 249
    .restart local v7    # "i":I
    .restart local v10    # "j":I
    .restart local v13    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :cond_3cb
    const-string v22, "    "

    goto :goto_3b2

    .line 246
    :cond_3ce
    add-int/lit8 v7, v7, 0x1

    goto :goto_36b

    .line 255
    .end local v10    # "j":I
    .end local v13    # "tier":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :cond_3d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->creationDate:Ljava/util/Date;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3e6

    .line 256
    sget-object v22, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v23, "  Created on..: {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->creationDate:Ljava/util/Date;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    :cond_3e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->comment:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3fb

    .line 259
    sget-object v22, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v23, "  Comment.....: {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->comment:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    :cond_3fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->createdBy:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_410

    .line 262
    sget-object v22, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v23, "  Created by..: {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->createdBy:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    :cond_410
    invoke-virtual/range {p0 .. p0}, Lcom/turn/ttorrent/common/Torrent;->isMultifile()Z

    move-result v22

    if-eqz v22, :cond_498

    .line 266
    sget-object v22, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v23, "  Found {} file(s) in multi-file torrent structure."

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->files:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    const/4 v7, 0x0

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->files:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_436
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_498

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/turn/ttorrent/common/Torrent$TorrentFile;

    .line 270
    .restart local v5    # "file":Lcom/turn/ttorrent/common/Torrent$TorrentFile;
    sget-object v22, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v23, "    {}. {} ({} byte(s))"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "%2d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    iget-object v0, v5, Lcom/turn/ttorrent/common/Torrent$TorrentFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string v26, "%,d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    iget-wide v0, v5, Lcom/turn/ttorrent/common/Torrent$TorrentFile;->size:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-interface/range {v22 .. v24}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_436

    .line 279
    .end local v5    # "file":Lcom/turn/ttorrent/common/Torrent$TorrentFile;
    :cond_498
    sget-object v23, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v24, "  Pieces......: {} piece(s) ({} byte(s)/piece)"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/turn/ttorrent/common/Torrent;->size:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded_info:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v25, "piece length"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v28, v0

    div-long v26, v26, v28

    const-wide/16 v28, 0x1

    add-long v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/turn/ttorrent/common/Torrent;->decoded_info:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v26, "piece length"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {v22 .. v22}, Lcom/turn/ttorrent/bcodec/BEValue;->getInt()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    sget-object v22, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v23, "  Total size..: {} byte(s)"

    const-string v24, "%,d"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/turn/ttorrent/common/Torrent;->size:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method private static accumulateHashes(Ljava/lang/StringBuilder;Ljava/util/List;)I
    .registers 8
    .param p0, "hashes"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 808
    .local v3, "pieces":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 809
    .local v0, "chunk":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_8

    .line 813
    .end local v0    # "chunk":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pieces":I
    :catch_1e
    move-exception v1

    .line 814
    .local v1, "ee":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error while hashing the torrent data!"

    invoke-direct {v4, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 811
    .end local v1    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pieces":I
    :cond_27
    :try_start_27
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_2a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_2a} :catch_1e

    .line 812
    return v3
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 415
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/net/URI;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;
    .registers 4
    .param p0, "source"    # Ljava/io/File;
    .param p1, "announce"    # Ljava/net/URI;
    .param p2, "createdBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-static {p0, v0, p1, v0, p2}, Lcom/turn/ttorrent/common/Torrent;->create(Ljava/io/File;Ljava/util/List;Ljava/net/URI;Ljava/util/List;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/util/List;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;
    .registers 4
    .param p0, "source"    # Ljava/io/File;
    .param p2, "createdBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/turn/ttorrent/common/Torrent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "announceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/net/URI;>;>;"
    const/4 v0, 0x0

    .line 554
    invoke-static {p0, v0, v0, p1, p2}, Lcom/turn/ttorrent/common/Torrent;->create(Ljava/io/File;Ljava/util/List;Ljava/net/URI;Ljava/util/List;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/util/List;Ljava/net/URI;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;
    .registers 5
    .param p0, "parent"    # Ljava/io/File;
    .param p2, "announce"    # Ljava/net/URI;
    .param p3, "createdBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Lcom/turn/ttorrent/common/Torrent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/turn/ttorrent/common/Torrent;->create(Ljava/io/File;Ljava/util/List;Ljava/net/URI;Ljava/util/List;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;

    move-result-object v0

    return-object v0
.end method

.method private static create(Ljava/io/File;Ljava/util/List;Ljava/net/URI;Ljava/util/List;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;
    .registers 29
    .param p0, "parent"    # Ljava/io/File;
    .param p2, "announce"    # Ljava/net/URI;
    .param p4, "createdBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/turn/ttorrent/common/Torrent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p3, "announceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/net/URI;>;>;"
    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_67

    .line 604
    :cond_8
    sget-object v17, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v18, "Creating single-file torrent for {}..."

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    :goto_13
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 613
    .local v14, "torrent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    if-eqz p2, :cond_2c

    .line 614
    const-string v17, "announce"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_2c
    if-eqz p3, :cond_98

    .line 617
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 618
    .local v13, "tiers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_37
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_88

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 619
    .local v16, "trackers":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 620
    .local v12, "tierInfo":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/URI;

    .line 621
    .local v15, "trackerURI":Ljava/net/URI;
    new-instance v17, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v15}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 607
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "tierInfo":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v13    # "tiers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v14    # "torrent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v15    # "trackerURI":Ljava/net/URI;
    .end local v16    # "trackers":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :cond_67
    sget-object v17, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v18, "Creating {}-file torrent {}..."

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    .line 623
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "tierInfo":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .restart local v13    # "tiers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .restart local v14    # "torrent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .restart local v16    # "trackers":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :cond_7b
    new-instance v17, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 625
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "tierInfo":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v16    # "trackers":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :cond_88
    const-string v17, "announce-list"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .end local v13    # "tiers":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    :cond_98
    const-string v17, "creation date"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v17, "created by"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 632
    .local v11, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const-string v17, "name"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v17, "piece length"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    const/high16 v19, 0x80000

    invoke-direct/range {v18 .. v19}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    if-eqz p1, :cond_f8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_14f

    .line 636
    :cond_f8
    const-string v17, "length"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v17, "pieces"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-static/range {p0 .. p0}, Lcom/turn/ttorrent/common/Torrent;->hashFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ISO-8859-1"

    invoke-direct/range {v18 .. v20}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :goto_122
    const-string v17, "info"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 665
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v17, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/turn/ttorrent/bcodec/BEncoder;->bencode(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 666
    new-instance v17, Lcom/turn/ttorrent/common/Torrent;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    const/16 v19, 0x1

    invoke-direct/range {v17 .. v19}, Lcom/turn/ttorrent/common/Torrent;-><init>([BZ)V

    return-object v17

    .line 640
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_14f
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 641
    .local v6, "fileInfo":Ljava/util/List;, "Ljava/util/List<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_158
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1be

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 642
    .local v5, "file":Ljava/io/File;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 643
    .local v7, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    const-string v17, "length"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 646
    .local v8, "filePath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    :goto_184
    if-eqz v5, :cond_18e

    .line 647
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1ab

    .line 655
    :cond_18e
    const-string v17, "path"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v17, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_158

    .line 651
    :cond_1ab
    new-instance v17, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 652
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    goto :goto_184

    .line 658
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/turn/ttorrent/bcodec/BEValue;>;"
    .end local v8    # "filePath":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/turn/ttorrent/bcodec/BEValue;>;"
    :cond_1be
    const-string v17, "files"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v17, "pieces"

    new-instance v18, Lcom/turn/ttorrent/bcodec/BEValue;

    invoke-static/range {p1 .. p1}, Lcom/turn/ttorrent/common/Torrent;->hashFiles(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "ISO-8859-1"

    invoke-direct/range {v18 .. v20}, Lcom/turn/ttorrent/bcodec/BEValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_122
.end method

.method public static create(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;
    .registers 5
    .param p0, "source"    # Ljava/io/File;
    .param p3, "createdBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/turn/ttorrent/common/Torrent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "announceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/net/URI;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/turn/ttorrent/common/Torrent;->create(Ljava/io/File;Ljava/util/List;Ljava/net/URI;Ljava/util/List;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;

    move-result-object v0

    return-object v0
.end method

.method protected static getHashingThreadsCount()I
    .registers 3

    .prologue
    .line 445
    const-string v2, "TTORRENT_HASHING_THREADS"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "threads":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 449
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_f

    move-result v0

    .line 450
    .local v0, "count":I
    if-lez v0, :cond_10

    .line 458
    .end local v0    # "count":I
    :goto_e
    return v0

    .line 453
    :catch_f
    move-exception v2

    .line 458
    :cond_10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    goto :goto_e
.end method

.method public static hash([B)[B
    .registers 2
    .param p0, "data"    # [B

    .prologue
    .line 405
    invoke-static {p0}, Lorg/apache/commons/codec/digest/DigestUtils;->sha1([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static hashFile(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/turn/ttorrent/common/Torrent;->hashFiles(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hashFiles(Ljava/util/List;)Ljava/lang/String;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/turn/ttorrent/common/Torrent;->getHashingThreadsCount()I

    move-result v19

    .line 720
    .local v19, "threads":I
    invoke-static/range {v19 .. v19}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 721
    .local v6, "executor":Ljava/util/concurrent/ExecutorService;
    const/high16 v20, 0x80000

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 722
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 723
    .local v15, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/String;>;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .local v10, "hashes":Ljava/lang/StringBuilder;
    const-wide/16 v12, 0x0

    .line 726
    .local v12, "length":J
    const/4 v14, 0x0

    .line 728
    .local v14, "pieces":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 729
    .local v16, "start":J
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_ed

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 730
    .local v8, "file":Ljava/io/File;
    sget-object v20, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v21, "Hashing data from {} with {} threads ({} pieces)..."

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4120000000000000L    # 524288.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-interface/range {v20 .. v22}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v20

    add-long v12, v12, v20

    .line 740
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 741
    .local v9, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 742
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    const/16 v18, 0xa

    .line 745
    .local v18, "step":I
    :cond_7d
    :goto_7d
    :try_start_7d
    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v20

    if-lez v20, :cond_dd

    .line 746
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v20

    if-nez v20, :cond_9e

    .line 747
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 748
    new-instance v20, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;-><init>(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_9e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-lt v0, v1, :cond_ae

    .line 752
    invoke-static {v10, v15}, Lcom/turn/ttorrent/common/Torrent;->accumulateHashes(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v20

    add-int v14, v14, v20

    .line 755
    :cond_ae
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_7d

    .line 756
    sget-object v20, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v21, "  ... {}% complete"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_da
    .catchall {:try_start_7d .. :try_end_da} :catchall_e5

    .line 757
    add-int/lit8 v18, v18, 0xa

    goto :goto_7d

    .line 761
    :cond_dd
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 762
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_23

    .line 761
    :catchall_e5
    move-exception v20

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 762
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    throw v20

    .line 767
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "step":I
    :cond_ed
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    if-lez v20, :cond_115

    .line 768
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 769
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 770
    new-instance v20, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/turn/ttorrent/common/Torrent$CallableChunkHasher;-><init>(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_115
    invoke-static {v10, v15}, Lcom/turn/ttorrent/common/Torrent;->accumulateHashes(Ljava/lang/StringBuilder;Ljava/util/List;)I

    move-result v20

    add-int v14, v14, v20

    .line 777
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 778
    :goto_11e
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v20

    if-nez v20, :cond_12a

    .line 779
    const-wide/16 v20, 0xa

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_11e

    .line 781
    :cond_12a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    sub-long v4, v20, v16

    .line 783
    .local v4, "elapsed":J
    long-to-double v0, v12

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4120000000000000L    # 524288.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v7, v0

    .line 785
    .local v7, "expectedPieces":I
    sget-object v20, Lcom/turn/ttorrent/common/Torrent;->logger:Lorg/slf4j/Logger;

    const-string v21, "Hashed {} file(s) ({} bytes) in {} pieces ({} expected) in {}ms."

    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    const-string v24, "%.1f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    long-to-double v0, v4

    move-wide/from16 v28, v0

    const-wide v30, 0x412e848000000000L    # 1000000.0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-interface/range {v20 .. v22}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20
.end method

.method public static load(Ljava/io/File;)Lcom/turn/ttorrent/common/Torrent;
    .registers 2
    .param p0, "torrent"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/turn/ttorrent/common/Torrent;->load(Ljava/io/File;Z)Lcom/turn/ttorrent/common/Torrent;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/io/File;Z)Lcom/turn/ttorrent/common/Torrent;
    .registers 4
    .param p0, "torrent"    # Ljava/io/File;
    .param p1, "seeder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 491
    .local v0, "data":[B
    new-instance v1, Lcom/turn/ttorrent/common/Torrent;

    invoke-direct {v1, v0, p1}, Lcom/turn/ttorrent/common/Torrent;-><init>([BZ)V

    return-object v1
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 426
    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 427
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/turn/ttorrent/common/Torrent;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 429
    .end local v0    # "bytes":[B
    :goto_a
    return-object v2

    .line 428
    :catch_b
    move-exception v1

    .line 429
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    goto :goto_a
.end method


# virtual methods
.method public getAnnounceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent;->trackers:Ljava/util/List;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent;->createdBy:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent;->encoded:[B

    return-object v0
.end method

.method public getFilenames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 328
    .local v1, "filenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/turn/ttorrent/common/Torrent;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/common/Torrent$TorrentFile;

    .line 329
    .local v0, "file":Lcom/turn/ttorrent/common/Torrent$TorrentFile;
    iget-object v3, v0, Lcom/turn/ttorrent/common/Torrent$TorrentFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 331
    .end local v0    # "file":Lcom/turn/ttorrent/common/Torrent$TorrentFile;
    :cond_21
    return-object v1
.end method

.method public getHexInfoHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent;->hex_info_hash:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoHash()[B
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent;->info_hash:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/turn/ttorrent/common/Torrent;->size:J

    return-wide v0
.end method

.method public getTrackerCount()I
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/turn/ttorrent/common/Torrent;->allTrackers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public isMultifile()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 338
    iget-object v1, p0, Lcom/turn/ttorrent/common/Torrent;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSeeder()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/turn/ttorrent/common/Torrent;->seeder:Z

    return v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/Torrent;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 402
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/Torrent;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
