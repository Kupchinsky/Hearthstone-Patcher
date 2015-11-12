.class public Lcom/turn/ttorrent/cli/TrackerMain;
.super Ljava/lang/Object;
.source "TrackerMain.java"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/turn/ttorrent/cli/TrackerMain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/cli/TrackerMain;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 22
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 57
    new-instance v18, Lorg/apache/log4j/ConsoleAppender;

    new-instance v19, Lorg/apache/log4j/PatternLayout;

    const-string v20, "%d [%-25t] %-5p: %m%n"

    invoke-direct/range {v19 .. v20}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lorg/apache/log4j/ConsoleAppender;-><init>(Lorg/apache/log4j/Layout;)V

    invoke-static/range {v18 .. v18}, Lorg/apache/log4j/BasicConfigurator;->configure(Lorg/apache/log4j/Appender;)V

    .line 60
    new-instance v14, Ljargs/gnu/CmdLineParser;

    invoke-direct {v14}, Ljargs/gnu/CmdLineParser;-><init>()V

    .line 61
    .local v14, "parser":Ljargs/gnu/CmdLineParser;
    const/16 v18, 0x68

    const-string v19, "help"

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljargs/gnu/CmdLineParser;->addBooleanOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v8

    .line 62
    .local v8, "help":Ljargs/gnu/CmdLineParser$Option;
    const/16 v18, 0x70

    const-string v19, "port"

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljargs/gnu/CmdLineParser;->addIntegerOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v15

    .line 65
    .local v15, "port":Ljargs/gnu/CmdLineParser$Option;
    :try_start_2c
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljargs/gnu/CmdLineParser;->parse([Ljava/lang/String;)V
    :try_end_31
    .catch Ljargs/gnu/CmdLineParser$OptionException; {:try_start_2c .. :try_end_31} :catch_c5

    .line 73
    :goto_31
    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v8}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4d

    .line 74
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v18 .. v18}, Lcom/turn/ttorrent/cli/TrackerMain;->usage(Ljava/io/PrintStream;)V

    .line 75
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    .line 78
    :cond_4d
    const/16 v18, 0x1b39

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v15, v0}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 81
    .local v16, "portValue":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljargs/gnu/CmdLineParser;->getRemainingArgs()[Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, "otherArgs":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_74

    .line 84
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static/range {v18 .. v18}, Lcom/turn/ttorrent/cli/TrackerMain;->usage(Ljava/io/PrintStream;)V

    .line 85
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    .line 90
    :cond_74
    array-length v0, v12

    move/from16 v18, v0

    if-lez v18, :cond_db

    const/16 v18, 0x0

    aget-object v4, v12, v18

    .line 94
    .local v4, "directory":Ljava/lang/String;
    :goto_7d
    new-instance v7, Lcom/turn/ttorrent/cli/TrackerMain$1;

    invoke-direct {v7}, Lcom/turn/ttorrent/cli/TrackerMain$1;-><init>()V

    .line 102
    .local v7, "filter":Ljava/io/FilenameFilter;
    :try_start_82
    new-instance v17, Lcom/turn/ttorrent/tracker/Tracker;

    new-instance v18, Ljava/net/InetSocketAddress;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct/range {v17 .. v18}, Lcom/turn/ttorrent/tracker/Tracker;-><init>(Ljava/net/InetSocketAddress;)V

    .line 104
    .local v17, "t":Lcom/turn/ttorrent/tracker/Tracker;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v13, "parent":Ljava/io/File;
    invoke-virtual {v13, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .local v3, "arr$":[Ljava/io/File;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_9b
    if-ge v9, v10, :cond_de

    aget-object v6, v3, v9

    .line 106
    .local v6, "f":Ljava/io/File;
    sget-object v18, Lcom/turn/ttorrent/cli/TrackerMain;->logger:Lorg/slf4j/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Loading torrent from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 107
    invoke-static {v6}, Lcom/turn/ttorrent/tracker/TrackedTorrent;->load(Ljava/io/File;)Lcom/turn/ttorrent/tracker/TrackedTorrent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/turn/ttorrent/tracker/Tracker;->announce(Lcom/turn/ttorrent/tracker/TrackedTorrent;)Lcom/turn/ttorrent/tracker/TrackedTorrent;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_c2} :catch_f5

    .line 105
    add-int/lit8 v9, v9, 0x1

    goto :goto_9b

    .line 66
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v4    # "directory":Ljava/lang/String;
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "filter":Ljava/io/FilenameFilter;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "otherArgs":[Ljava/lang/String;
    .end local v13    # "parent":Ljava/io/File;
    .end local v16    # "portValue":Ljava/lang/Integer;
    .end local v17    # "t":Lcom/turn/ttorrent/tracker/Tracker;
    :catch_c5
    move-exception v11

    .line 67
    .local v11, "oe":Ljargs/gnu/CmdLineParser$OptionException;
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v11}, Ljargs/gnu/CmdLineParser$OptionException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static/range {v18 .. v18}, Lcom/turn/ttorrent/cli/TrackerMain;->usage(Ljava/io/PrintStream;)V

    .line 69
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_31

    .line 90
    .end local v11    # "oe":Ljargs/gnu/CmdLineParser$OptionException;
    .restart local v12    # "otherArgs":[Ljava/lang/String;
    .restart local v16    # "portValue":Ljava/lang/Integer;
    :cond_db
    const-string v4, "."

    goto :goto_7d

    .line 110
    .restart local v3    # "arr$":[Ljava/io/File;
    .restart local v4    # "directory":Ljava/lang/String;
    .restart local v7    # "filter":Ljava/io/FilenameFilter;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "parent":Ljava/io/File;
    .restart local v17    # "t":Lcom/turn/ttorrent/tracker/Tracker;
    :cond_de
    :try_start_de
    sget-object v18, Lcom/turn/ttorrent/cli/TrackerMain;->logger:Lorg/slf4j/Logger;

    const-string v19, "Starting tracker with {} announced torrents..."

    invoke-virtual/range {v17 .. v17}, Lcom/turn/ttorrent/tracker/Tracker;->getTrackedTorrents()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-virtual/range {v17 .. v17}, Lcom/turn/ttorrent/tracker/Tracker;->start()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f4} :catch_f5

    .line 117
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "parent":Ljava/io/File;
    .end local v17    # "t":Lcom/turn/ttorrent/tracker/Tracker;
    :goto_f4
    return-void

    .line 113
    :catch_f5
    move-exception v5

    .line 114
    .local v5, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/turn/ttorrent/cli/TrackerMain;->logger:Lorg/slf4j/Logger;

    const-string v19, "{}"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto :goto_f4
.end method

.method private static usage(Ljava/io/PrintStream;)V
    .registers 2
    .param p0, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 45
    const-string v0, "usage: Tracker [options] [directory]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 47
    const-string v0, "Available options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    const-string v0, "  -h,--help             Show this help and exit."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    const-string v0, "  -p,--port PORT        Bind to port PORT."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 51
    return-void
.end method
