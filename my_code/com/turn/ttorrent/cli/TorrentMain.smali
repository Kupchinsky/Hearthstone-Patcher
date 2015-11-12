.class public Lcom/turn/ttorrent/cli/TorrentMain;
.super Ljava/lang/Object;
.source "TorrentMain.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/turn/ttorrent/cli/TorrentMain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/cli/TorrentMain;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 26
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 82
    new-instance v21, Lorg/apache/log4j/ConsoleAppender;

    new-instance v22, Lorg/apache/log4j/PatternLayout;

    const-string v23, "%-5p: %m%n"

    invoke-direct/range {v22 .. v23}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v21 .. v22}, Lorg/apache/log4j/ConsoleAppender;-><init>(Lorg/apache/log4j/Layout;)V

    invoke-static/range {v21 .. v21}, Lorg/apache/log4j/BasicConfigurator;->configure(Lorg/apache/log4j/Appender;)V

    .line 85
    new-instance v18, Ljargs/gnu/CmdLineParser;

    invoke-direct/range {v18 .. v18}, Ljargs/gnu/CmdLineParser;-><init>()V

    .line 86
    .local v18, "parser":Ljargs/gnu/CmdLineParser;
    const/16 v21, 0x68

    const-string v22, "help"

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addBooleanOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v15

    .line 87
    .local v15, "help":Ljargs/gnu/CmdLineParser$Option;
    const/16 v21, 0x74

    const-string v22, "torrent"

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addStringOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v10

    .line 88
    .local v10, "filename":Ljargs/gnu/CmdLineParser$Option;
    const/16 v21, 0x63

    const-string v22, "create"

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addBooleanOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v6

    .line 89
    .local v6, "create":Ljargs/gnu/CmdLineParser$Option;
    const/16 v21, 0x61

    const-string v22, "announce"

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addStringOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v3

    .line 92
    .local v3, "announce":Ljargs/gnu/CmdLineParser$Option;
    :try_start_4c
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljargs/gnu/CmdLineParser;->parse([Ljava/lang/String;)V
    :try_end_53
    .catch Ljargs/gnu/CmdLineParser$OptionException; {:try_start_4c .. :try_end_53} :catch_12f

    .line 100
    :goto_53
    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_71

    .line 101
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lcom/turn/ttorrent/cli/TorrentMain;->usage(Ljava/io/PrintStream;)V

    .line 102
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->exit(I)V

    .line 105
    :cond_71
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 106
    .local v11, "filenameValue":Ljava/lang/String;
    if-nez v11, :cond_87

    .line 107
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v22, "Torrent file must be provided!"

    invoke-static/range {v21 .. v22}, Lcom/turn/ttorrent/cli/TorrentMain;->usage(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 108
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->exit(I)V

    .line 111
    :cond_87
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 112
    .local v7, "createFlag":Ljava/lang/Boolean;
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, "announceURL":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljargs/gnu/CmdLineParser;->getRemainingArgs()[Ljava/lang/String;

    move-result-object v17

    .line 116
    .local v17, "otherArgs":[Ljava/lang/String;
    sget-object v21, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b4

    if-nez v5, :cond_c0

    .line 118
    :cond_b4
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v22, "Announce URL and a file or directory must be provided to create a torrent file!"

    invoke-static/range {v21 .. v22}, Lcom/turn/ttorrent/cli/TorrentMain;->usage(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 120
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->exit(I)V

    .line 123
    :cond_c0
    const/4 v13, 0x0

    .line 125
    .local v13, "fos":Ljava/io/OutputStream;
    :try_start_c1
    sget-object v21, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_191

    .line 126
    if-eqz v11, :cond_145

    .line 127
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v13    # "fos":Ljava/io/OutputStream;
    .local v14, "fos":Ljava/io/OutputStream;
    move-object v13, v14

    .line 132
    .end local v14    # "fos":Ljava/io/OutputStream;
    .restart local v13    # "fos":Ljava/io/OutputStream;
    :goto_d3
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "announceURI":Ljava/net/URI;
    new-instance v19, Ljava/io/File;

    const/16 v21, 0x0

    aget-object v21, v17, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v19, "source":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_f1

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->canRead()Z

    move-result v21

    if-nez v21, :cond_148

    .line 135
    :cond_f1
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot access source file or directory "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_10e} :catch_10e
    .catchall {:try_start_c1 .. :try_end_10e} :catchall_19e

    .line 157
    .end local v4    # "announceURI":Ljava/net/URI;
    .end local v19    # "source":Ljava/io/File;
    :catch_10e
    move-exception v9

    .line 158
    .local v9, "e":Ljava/lang/Exception;
    :try_start_10f
    sget-object v21, Lcom/turn/ttorrent/cli/TorrentMain;->logger:Lorg/slf4j/Logger;

    const-string v22, "{}"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->exit(I)V
    :try_end_125
    .catchall {:try_start_10f .. :try_end_125} :catchall_19e

    .line 161
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    if-eq v13, v0, :cond_12e

    .line 162
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 165
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_12e
    :goto_12e
    return-void

    .line 93
    .end local v5    # "announceURL":Ljava/lang/String;
    .end local v7    # "createFlag":Ljava/lang/Boolean;
    .end local v11    # "filenameValue":Ljava/lang/String;
    .end local v13    # "fos":Ljava/io/OutputStream;
    .end local v17    # "otherArgs":[Ljava/lang/String;
    :catch_12f
    move-exception v16

    .line 94
    .local v16, "oe":Ljargs/gnu/CmdLineParser$OptionException;
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual/range {v16 .. v16}, Ljargs/gnu/CmdLineParser$OptionException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v21, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lcom/turn/ttorrent/cli/TorrentMain;->usage(Ljava/io/PrintStream;)V

    .line 96
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_53

    .line 129
    .end local v16    # "oe":Ljargs/gnu/CmdLineParser$OptionException;
    .restart local v5    # "announceURL":Ljava/lang/String;
    .restart local v7    # "createFlag":Ljava/lang/Boolean;
    .restart local v11    # "filenameValue":Ljava/lang/String;
    .restart local v13    # "fos":Ljava/io/OutputStream;
    .restart local v17    # "otherArgs":[Ljava/lang/String;
    :cond_145
    :try_start_145
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_d3

    .line 140
    .restart local v4    # "announceURI":Ljava/net/URI;
    .restart local v19    # "source":Ljava/io/File;
    :cond_148
    const-string v21, "%s (ttorrent)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "user.name"

    invoke-static/range {v24 .. v24}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "creator":Ljava/lang/String;
    const/16 v20, 0x0

    .line 144
    .local v20, "torrent":Lcom/turn/ttorrent/common/Torrent;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_18a

    .line 145
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 146
    .local v12, "files":[Ljava/io/File;
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 147
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4, v8}, Lcom/turn/ttorrent/common/Torrent;->create(Ljava/io/File;Ljava/util/List;Ljava/net/URI;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;

    move-result-object v20

    .line 153
    .end local v12    # "files":[Ljava/io/File;
    :goto_17b
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/turn/ttorrent/common/Torrent;->save(Ljava/io/OutputStream;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_180} :catch_10e
    .catchall {:try_start_145 .. :try_end_180} :catchall_19e

    .line 161
    .end local v4    # "announceURI":Ljava/net/URI;
    .end local v8    # "creator":Ljava/lang/String;
    .end local v19    # "source":Ljava/io/File;
    .end local v20    # "torrent":Lcom/turn/ttorrent/common/Torrent;
    :goto_180
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v21

    if-eq v13, v0, :cond_12e

    .line 162
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_12e

    .line 150
    .restart local v4    # "announceURI":Ljava/net/URI;
    .restart local v8    # "creator":Ljava/lang/String;
    .restart local v19    # "source":Ljava/io/File;
    .restart local v20    # "torrent":Lcom/turn/ttorrent/common/Torrent;
    :cond_18a
    :try_start_18a
    move-object/from16 v0, v19

    invoke-static {v0, v4, v8}, Lcom/turn/ttorrent/common/Torrent;->create(Ljava/io/File;Ljava/net/URI;Ljava/lang/String;)Lcom/turn/ttorrent/common/Torrent;

    move-result-object v20

    goto :goto_17b

    .line 155
    .end local v4    # "announceURI":Ljava/net/URI;
    .end local v8    # "creator":Ljava/lang/String;
    .end local v19    # "source":Ljava/io/File;
    .end local v20    # "torrent":Lcom/turn/ttorrent/common/Torrent;
    :cond_191
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/turn/ttorrent/common/Torrent;->load(Ljava/io/File;Z)Lcom/turn/ttorrent/common/Torrent;
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_19d} :catch_10e
    .catchall {:try_start_18a .. :try_end_19d} :catchall_19e

    goto :goto_180

    .line 161
    :catchall_19e
    move-exception v21

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v22

    if-eq v13, v0, :cond_1a8

    .line 162
    invoke-static {v13}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    :cond_1a8
    throw v21
.end method

.method private static usage(Ljava/io/PrintStream;)V
    .registers 2
    .param p0, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/turn/ttorrent/cli/TorrentMain;->usage(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private static usage(Ljava/io/PrintStream;Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/io/PrintStream;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    if-eqz p1, :cond_8

    .line 55
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 59
    :cond_8
    const-string v0, "usage: Torrent [options] [file|directory]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 61
    const-string v0, "Available options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    const-string v0, "  -h,--help             Show this help and exit."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    const-string v0, "  -t,--torrent FILE     Use FILE to read/write torrent file."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 65
    const-string v0, "  -c,--create           Create a new torrent file using the given announce URL and data."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    const-string v0, "  -a,--announce         Tracker URL (can be repeated)."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 69
    return-void
.end method
