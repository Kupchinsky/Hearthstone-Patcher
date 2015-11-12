.class public Lcom/turn/ttorrent/cli/ClientMain;
.super Ljava/lang/Object;
.source "ClientMain.java"


# static fields
.field private static final DEFAULT_OUTPUT_DIRECTORY:Ljava/lang/String; = "/tmp"

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/turn/ttorrent/cli/ClientMain;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/turn/ttorrent/cli/ClientMain;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .registers 5
    .param p0, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/nio/channels/UnsupportedAddressTypeException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 74
    if-eqz p0, :cond_1d

    .line 75
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 77
    .local v1, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 78
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 79
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_a

    .line 80
    check-cast v0, Ljava/net/Inet4Address;

    .line 87
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1c
    return-object v0

    .line 85
    :cond_1d
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    .line 86
    .local v2, "localhost":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_29

    .line 87
    check-cast v2, Ljava/net/Inet4Address;

    .end local v2    # "localhost":Ljava/net/InetAddress;
    move-object v0, v2

    goto :goto_1c

    .line 90
    .restart local v2    # "localhost":Ljava/net/InetAddress;
    :cond_29
    new-instance v3, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v3}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v3
.end method

.method public static main([Ljava/lang/String;)V
    .registers 27
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 113
    new-instance v22, Lorg/apache/log4j/ConsoleAppender;

    new-instance v23, Lorg/apache/log4j/PatternLayout;

    const-string v24, "%d [%-25t] %-5p: %m%n"

    invoke-direct/range {v23 .. v24}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v22 .. v23}, Lorg/apache/log4j/ConsoleAppender;-><init>(Lorg/apache/log4j/Layout;)V

    invoke-static/range {v22 .. v22}, Lorg/apache/log4j/BasicConfigurator;->configure(Lorg/apache/log4j/Appender;)V

    .line 116
    new-instance v19, Ljargs/gnu/CmdLineParser;

    invoke-direct/range {v19 .. v19}, Ljargs/gnu/CmdLineParser;-><init>()V

    .line 117
    .local v19, "parser":Ljargs/gnu/CmdLineParser;
    const/16 v22, 0x68

    const-string v23, "help"

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addBooleanOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v6

    .line 118
    .local v6, "help":Ljargs/gnu/CmdLineParser$Option;
    const/16 v22, 0x6f

    const-string v23, "output"

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addStringOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v17

    .line 119
    .local v17, "output":Ljargs/gnu/CmdLineParser$Option;
    const/16 v22, 0x69

    const-string v23, "iface"

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addStringOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v7

    .line 120
    .local v7, "iface":Ljargs/gnu/CmdLineParser$Option;
    const/16 v22, 0x73

    const-string v23, "seed"

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addIntegerOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v20

    .line 121
    .local v20, "seedTime":Ljargs/gnu/CmdLineParser$Option;
    const/16 v22, 0x75

    const-string v23, "max-upload"

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addDoubleOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v12

    .line 122
    .local v12, "maxUpload":Ljargs/gnu/CmdLineParser$Option;
    const/16 v22, 0x64

    const-string v23, "max-download"

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->addDoubleOption(CLjava/lang/String;)Ljargs/gnu/CmdLineParser$Option;

    move-result-object v9

    .line 125
    .local v9, "maxDownload":Ljargs/gnu/CmdLineParser$Option;
    :try_start_68
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljargs/gnu/CmdLineParser;->parse([Ljava/lang/String;)V
    :try_end_6f
    .catch Ljargs/gnu/CmdLineParser$OptionException; {:try_start_68 .. :try_end_6f} :catch_153

    .line 133
    :goto_6f
    sget-object v23, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8d

    .line 134
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v22 .. v22}, Lcom/turn/ttorrent/cli/ClientMain;->usage(Ljava/io/PrintStream;)V

    .line 135
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->exit(I)V

    .line 138
    :cond_8d
    const-string v22, "/tmp"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 140
    .local v18, "outputValue":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 141
    .local v8, "ifaceValue":Ljava/lang/String;
    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 143
    .local v21, "seedTimeValue":I
    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 144
    .local v10, "maxDownloadRate":D
    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Ljargs/gnu/CmdLineParser;->getOptionValue(Ljargs/gnu/CmdLineParser$Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 146
    .local v14, "maxUploadRate":D
    invoke-virtual/range {v19 .. v19}, Ljargs/gnu/CmdLineParser;->getRemainingArgs()[Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "otherArgs":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_fc

    .line 148
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static/range {v22 .. v22}, Lcom/turn/ttorrent/cli/ClientMain;->usage(Ljava/io/PrintStream;)V

    .line 149
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->exit(I)V

    .line 153
    :cond_fc
    :try_start_fc
    new-instance v4, Lcom/turn/ttorrent/client/Client;

    invoke-static {v8}, Lcom/turn/ttorrent/cli/ClientMain;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v22

    new-instance v23, Ljava/io/File;

    const/16 v24, 0x0

    aget-object v24, v16, v24

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v24}, Lcom/turn/ttorrent/client/SharedTorrent;->fromFile(Ljava/io/File;Ljava/io/File;)Lcom/turn/ttorrent/client/SharedTorrent;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1}, Lcom/turn/ttorrent/client/Client;-><init>(Ljava/net/InetAddress;Lcom/turn/ttorrent/client/SharedTorrent;)V

    .line 159
    .local v4, "c":Lcom/turn/ttorrent/client/Client;
    invoke-virtual {v4, v10, v11}, Lcom/turn/ttorrent/client/Client;->setMaxDownloadRate(D)V

    .line 160
    invoke-virtual {v4, v14, v15}, Lcom/turn/ttorrent/client/Client;->setMaxUploadRate(D)V

    .line 164
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    new-instance v23, Ljava/lang/Thread;

    new-instance v24, Lcom/turn/ttorrent/client/Client$ClientShutdown;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/turn/ttorrent/client/Client$ClientShutdown;-><init>(Lcom/turn/ttorrent/client/Client;Ljava/util/Timer;)V

    invoke-direct/range {v23 .. v24}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 167
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/turn/ttorrent/client/Client;->share(I)V

    .line 168
    sget-object v22, Lcom/turn/ttorrent/client/Client$ClientState;->ERROR:Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-virtual {v4}, Lcom/turn/ttorrent/client/Client;->getState()Lcom/turn/ttorrent/client/Client$ClientState;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/turn/ttorrent/client/Client$ClientState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_152

    .line 169
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->exit(I)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_152} :catch_169

    .line 175
    .end local v4    # "c":Lcom/turn/ttorrent/client/Client;
    :cond_152
    :goto_152
    return-void

    .line 126
    .end local v8    # "ifaceValue":Ljava/lang/String;
    .end local v10    # "maxDownloadRate":D
    .end local v14    # "maxUploadRate":D
    .end local v16    # "otherArgs":[Ljava/lang/String;
    .end local v18    # "outputValue":Ljava/lang/String;
    .end local v21    # "seedTimeValue":I
    :catch_153
    move-exception v13

    .line 127
    .local v13, "oe":Ljargs/gnu/CmdLineParser$OptionException;
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v13}, Ljargs/gnu/CmdLineParser$OptionException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v22, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static/range {v22 .. v22}, Lcom/turn/ttorrent/cli/ClientMain;->usage(Ljava/io/PrintStream;)V

    .line 129
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_6f

    .line 171
    .end local v13    # "oe":Ljargs/gnu/CmdLineParser$OptionException;
    .restart local v8    # "ifaceValue":Ljava/lang/String;
    .restart local v10    # "maxDownloadRate":D
    .restart local v14    # "maxUploadRate":D
    .restart local v16    # "otherArgs":[Ljava/lang/String;
    .restart local v18    # "outputValue":Ljava/lang/String;
    .restart local v21    # "seedTimeValue":I
    :catch_169
    move-exception v5

    .line 172
    .local v5, "e":Ljava/lang/Exception;
    sget-object v22, Lcom/turn/ttorrent/cli/ClientMain;->logger:Lorg/slf4j/Logger;

    const-string v23, "Fatal error: {}"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/System;->exit(I)V

    goto :goto_152
.end method

.method private static usage(Ljava/io/PrintStream;)V
    .registers 2
    .param p0, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 97
    const-string v0, "usage: Client [options] <torrent>"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 99
    const-string v0, "Available options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    const-string v0, "  -h,--help                  Show this help and exit."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    const-string v0, "  -o,--output DIR            Read/write data to directory DIR."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    const-string v0, "  -i,--iface IFACE           Bind to interface IFACE."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    const-string v0, "  -s,--seed SECONDS          Time to seed after downloading (default: infinitely)."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    const-string v0, "  -d,--max-download KB/SEC   Max download rate (default: unlimited)."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    const-string v0, "  -u,--max-upload KB/SEC     Max upload rate (default: unlimited)."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 107
    return-void
.end method
