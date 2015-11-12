.class public Lorg/apache/log4j/net/SyslogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SyslogAppender.java"


# static fields
.field protected static final FACILITY_OI:I = 0x1

.field public static final LOG_AUTH:I = 0x20

.field public static final LOG_AUTHPRIV:I = 0x50

.field public static final LOG_CRON:I = 0x48

.field public static final LOG_DAEMON:I = 0x18

.field public static final LOG_FTP:I = 0x58

.field public static final LOG_KERN:I = 0x0

.field public static final LOG_LOCAL0:I = 0x80

.field public static final LOG_LOCAL1:I = 0x88

.field public static final LOG_LOCAL2:I = 0x90

.field public static final LOG_LOCAL3:I = 0x98

.field public static final LOG_LOCAL4:I = 0xa0

.field public static final LOG_LOCAL5:I = 0xa8

.field public static final LOG_LOCAL6:I = 0xb0

.field public static final LOG_LOCAL7:I = 0xb8

.field public static final LOG_LPR:I = 0x30

.field public static final LOG_MAIL:I = 0x10

.field public static final LOG_NEWS:I = 0x38

.field public static final LOG_SYSLOG:I = 0x28

.field public static final LOG_USER:I = 0x8

.field public static final LOG_UUCP:I = 0x40

.field protected static final SYSLOG_HOST_OI:I = 0x0

.field static final TAB:Ljava/lang/String; = "    "


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field facilityPrinting:Z

.field facilityStr:Ljava/lang/String;

.field private header:Z

.field private layoutHeaderChecked:Z

.field private localHostname:Ljava/lang/String;

.field sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

.field syslogFacility:I

.field syslogHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 97
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 99
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    .line 110
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    .line 115
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 125
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 129
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;I)V
    .registers 7
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "syslogFacility"    # I

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 97
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 99
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    .line 110
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    .line 115
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd HH:mm:ss "

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 125
    iput-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 134
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 135
    iput p2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 136
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;I)V
    .registers 4
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "syslogHost"    # Ljava/lang/String;
    .param p3, "syslogFacility"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1, p3}, Lorg/apache/log4j/net/SyslogAppender;-><init>(Lorg/apache/log4j/Layout;I)V

    .line 142
    invoke-virtual {p0, p2}, Lorg/apache/log4j/net/SyslogAppender;->setSyslogHost(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static getFacility(Ljava/lang/String;)I
    .registers 2
    .param p0, "facilityName"    # Ljava/lang/String;

    .prologue
    .line 230
    if-eqz p0, :cond_6

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 233
    :cond_6
    const-string v0, "KERN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 234
    const/4 v0, 0x0

    .line 274
    :goto_f
    return v0

    .line 235
    :cond_10
    const-string v0, "USER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 236
    const/16 v0, 0x8

    goto :goto_f

    .line 237
    :cond_1b
    const-string v0, "MAIL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 238
    const/16 v0, 0x10

    goto :goto_f

    .line 239
    :cond_26
    const-string v0, "DAEMON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 240
    const/16 v0, 0x18

    goto :goto_f

    .line 241
    :cond_31
    const-string v0, "AUTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 242
    const/16 v0, 0x20

    goto :goto_f

    .line 243
    :cond_3c
    const-string v0, "SYSLOG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 244
    const/16 v0, 0x28

    goto :goto_f

    .line 245
    :cond_47
    const-string v0, "LPR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 246
    const/16 v0, 0x30

    goto :goto_f

    .line 247
    :cond_52
    const-string v0, "NEWS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 248
    const/16 v0, 0x38

    goto :goto_f

    .line 249
    :cond_5d
    const-string v0, "UUCP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 250
    const/16 v0, 0x40

    goto :goto_f

    .line 251
    :cond_68
    const-string v0, "CRON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 252
    const/16 v0, 0x48

    goto :goto_f

    .line 253
    :cond_73
    const-string v0, "AUTHPRIV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 254
    const/16 v0, 0x50

    goto :goto_f

    .line 255
    :cond_7e
    const-string v0, "FTP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 256
    const/16 v0, 0x58

    goto :goto_f

    .line 257
    :cond_89
    const-string v0, "LOCAL0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 258
    const/16 v0, 0x80

    goto/16 :goto_f

    .line 259
    :cond_95
    const-string v0, "LOCAL1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 260
    const/16 v0, 0x88

    goto/16 :goto_f

    .line 261
    :cond_a1
    const-string v0, "LOCAL2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 262
    const/16 v0, 0x90

    goto/16 :goto_f

    .line 263
    :cond_ad
    const-string v0, "LOCAL3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 264
    const/16 v0, 0x98

    goto/16 :goto_f

    .line 265
    :cond_b9
    const-string v0, "LOCAL4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 266
    const/16 v0, 0xa0

    goto/16 :goto_f

    .line 267
    :cond_c5
    const-string v0, "LOCAL5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 268
    const/16 v0, 0xa8

    goto/16 :goto_f

    .line 269
    :cond_d1
    const-string v0, "LOCAL6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 270
    const/16 v0, 0xb0

    goto/16 :goto_f

    .line 271
    :cond_dd
    const-string v0, "LOCAL7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 272
    const/16 v0, 0xb8

    goto/16 :goto_f

    .line 274
    :cond_e9
    const/4 v0, -0x1

    goto/16 :goto_f
.end method

.method public static getFacilityString(I)Ljava/lang/String;
    .registers 2
    .param p0, "syslogFacility"    # I

    .prologue
    .line 191
    sparse-switch p0, :sswitch_data_42

    .line 212
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 192
    :sswitch_5
    const-string v0, "kern"

    goto :goto_4

    .line 193
    :sswitch_8
    const-string v0, "user"

    goto :goto_4

    .line 194
    :sswitch_b
    const-string v0, "mail"

    goto :goto_4

    .line 195
    :sswitch_e
    const-string v0, "daemon"

    goto :goto_4

    .line 196
    :sswitch_11
    const-string v0, "auth"

    goto :goto_4

    .line 197
    :sswitch_14
    const-string v0, "syslog"

    goto :goto_4

    .line 198
    :sswitch_17
    const-string v0, "lpr"

    goto :goto_4

    .line 199
    :sswitch_1a
    const-string v0, "news"

    goto :goto_4

    .line 200
    :sswitch_1d
    const-string v0, "uucp"

    goto :goto_4

    .line 201
    :sswitch_20
    const-string v0, "cron"

    goto :goto_4

    .line 202
    :sswitch_23
    const-string v0, "authpriv"

    goto :goto_4

    .line 203
    :sswitch_26
    const-string v0, "ftp"

    goto :goto_4

    .line 204
    :sswitch_29
    const-string v0, "local0"

    goto :goto_4

    .line 205
    :sswitch_2c
    const-string v0, "local1"

    goto :goto_4

    .line 206
    :sswitch_2f
    const-string v0, "local2"

    goto :goto_4

    .line 207
    :sswitch_32
    const-string v0, "local3"

    goto :goto_4

    .line 208
    :sswitch_35
    const-string v0, "local4"

    goto :goto_4

    .line 209
    :sswitch_38
    const-string v0, "local5"

    goto :goto_4

    .line 210
    :sswitch_3b
    const-string v0, "local6"

    goto :goto_4

    .line 211
    :sswitch_3e
    const-string v0, "local7"

    goto :goto_4

    .line 191
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_5
        0x8 -> :sswitch_8
        0x10 -> :sswitch_b
        0x18 -> :sswitch_e
        0x20 -> :sswitch_11
        0x28 -> :sswitch_14
        0x30 -> :sswitch_17
        0x38 -> :sswitch_1a
        0x40 -> :sswitch_1d
        0x48 -> :sswitch_20
        0x50 -> :sswitch_23
        0x58 -> :sswitch_26
        0x80 -> :sswitch_29
        0x88 -> :sswitch_2c
        0x90 -> :sswitch_2f
        0x98 -> :sswitch_32
        0xa0 -> :sswitch_35
        0xa8 -> :sswitch_38
        0xb0 -> :sswitch_3b
        0xb8 -> :sswitch_3e
    .end sparse-switch
.end method

.method private getLocalHostname()Ljava/lang/String;
    .registers 4

    .prologue
    .line 485
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 487
    :try_start_4
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 488
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_e} :catch_11

    .line 493
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_e
    :goto_e
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    return-object v2

    .line 489
    :catch_11
    move-exception v1

    .line 490
    .local v1, "uhe":Ljava/net/UnknownHostException;
    const-string v2, "UNKNOWN_HOST"

    iput-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->localHostname:Ljava/lang/String;

    goto :goto_e
.end method

.method private getPacketHeader(J)Ljava/lang/String;
    .registers 8
    .param p1, "timeStamp"    # J

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x4

    .line 503
    iget-boolean v1, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    if-eqz v1, :cond_31

    .line 504
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_22

    .line 507
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 509
    :cond_22
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->getLocalHostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :goto_30
    return-object v1

    :cond_31
    const-string v1, ""

    goto :goto_30
.end method

.method private initSyslogFacilityStr()V
    .registers 4

    .prologue
    .line 172
    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-static {v0}, Lorg/apache/log4j/net/SyslogAppender;->getFacilityString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 175
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" is an unknown syslog facility. Defaulting to \"USER\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 178
    const-string v0, "user:"

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    .line 182
    :goto_34
    return-void

    .line 180
    :cond_35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    goto :goto_34
.end method

.method private sendLayoutMessage(Ljava/lang/String;)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-eqz v3, :cond_3c

    .line 522
    move-object v2, p1

    .line 523
    .local v2, "packet":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/apache/log4j/net/SyslogAppender;->getPacketHeader(J)Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "hdr":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-nez v3, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_31

    .line 525
    :cond_1c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-boolean v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-eqz v3, :cond_2a

    .line 527
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :cond_2a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_31
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setLevel(I)V

    .line 533
    iget-object v3, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v3, v2}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    .line 535
    .end local v1    # "hdr":Ljava/lang/String;
    .end local v2    # "packet":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method private splitPacket(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "packet"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    .line 286
    .local v0, "byteCount":I
    const/16 v2, 0x3fb

    if-gt v0, v2, :cond_f

    .line 287
    iget-object v2, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v2, p2}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    .line 293
    :goto_e
    return-void

    .line 289
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 290
    .local v1, "split":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method


# virtual methods
.method public activateOptions()V
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    if-eqz v0, :cond_7

    .line 362
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->getLocalHostname()Ljava/lang/String;

    .line 364
    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 365
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v0}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    .line 367
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 368
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 11
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const/4 v8, 0x1

    .line 298
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/log4j/AppenderSkeleton;->isAsSevereAsThreshold(Lorg/apache/log4j/Priority;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 353
    :cond_b
    :goto_b
    return-void

    .line 302
    :cond_c
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-nez v5, :cond_31

    .line 303
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "No syslog host is set for SyslogAppedender named \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    goto :goto_b

    .line 308
    :cond_31
    iget-boolean v5, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    if-nez v5, :cond_4c

    .line 309
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v5, :cond_4a

    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    .line 310
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    .line 312
    :cond_4a
    iput-boolean v8, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    .line 315
    :cond_4c
    iget-wide v6, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-direct {p0, v6, v7}, Lorg/apache/log4j/net/SyslogAppender;->getPacketHeader(J)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "hdr":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-nez v5, :cond_da

    .line 318
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "packet":Ljava/lang/String;
    :goto_5e
    iget-boolean v5, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-nez v5, :cond_68

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7d

    .line 323
    :cond_68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-boolean v5, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    if-eqz v5, :cond_76

    .line 325
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityStr:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    :cond_76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_7d
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/log4j/Priority;->getSyslogEquivalent()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setLevel(I)V

    .line 335
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-le v5, v6, :cond_e2

    .line 336
    invoke-direct {p0, v1, v3}, Lorg/apache/log4j/net/SyslogAppender;->splitPacket(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_95
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v5, :cond_a1

    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 342
    :cond_a1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "s":[Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 344
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a8
    array-length v5, v4

    if-ge v2, v5, :cond_b

    .line 345
    aget-object v5, v4, v2

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 346
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    .line 344
    :goto_d7
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 320
    .end local v2    # "i":I
    .end local v3    # "packet":Ljava/lang/String;
    .end local v4    # "s":[Ljava/lang/String;
    :cond_da
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "packet":Ljava/lang/String;
    goto/16 :goto_5e

    .line 338
    :cond_e2
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v5, v3}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    goto :goto_95

    .line 348
    .restart local v2    # "i":I
    .restart local v4    # "s":[Ljava/lang/String;
    :cond_e8
    iget-object v5, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->write(Ljava/lang/String;)V

    goto :goto_d7
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 153
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 154
    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_37

    if-eqz v1, :cond_29

    .line 156
    :try_start_8
    iget-boolean v1, p0, Lorg/apache/log4j/net/SyslogAppender;->layoutHeaderChecked:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 157
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/log4j/net/SyslogAppender;->sendLayoutMessage(Ljava/lang/String;)V

    .line 159
    :cond_21
    iget-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    invoke-virtual {v1}, Ljava/io/FilterWriter;->close()V

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_29
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_29} :catch_2b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_29} :catch_3a
    .catchall {:try_start_8 .. :try_end_29} :catchall_37

    .line 168
    :cond_29
    :goto_29
    monitor-exit p0

    return-void

    .line 161
    :catch_2b
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/InterruptedIOException;
    :try_start_2c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_37

    goto :goto_29

    .line 153
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1

    .line 164
    :catch_3a
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    :try_start_3c
    iput-object v1, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_37

    goto :goto_29
.end method

.method public getFacility()Ljava/lang/String;
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-static {v0}, Lorg/apache/log4j/net/SyslogAppender;->getFacilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityPrinting()Z
    .registers 2

    .prologue
    .line 457
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    return v0
.end method

.method public final getHeader()Z
    .registers 2

    .prologue
    .line 467
    iget-boolean v0, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    return v0
.end method

.method public getSyslogHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogHost:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public setFacility(Ljava/lang/String;)V
    .registers 5
    .param p1, "facilityName"    # Ljava/lang/String;

    .prologue
    .line 416
    if-nez p1, :cond_3

    .line 432
    :cond_2
    :goto_2
    return-void

    .line 419
    :cond_3
    invoke-static {p1}, Lorg/apache/log4j/net/SyslogAppender;->getFacility(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 420
    iget v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 421
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] is an unknown syslog facility. Defaulting to [USER]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    .line 426
    :cond_30
    invoke-direct {p0}, Lorg/apache/log4j/net/SyslogAppender;->initSyslogFacilityStr()V

    .line 429
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    iget v1, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    invoke-virtual {v0, v1}, Lorg/apache/log4j/helpers/SyslogQuietWriter;->setSyslogFacility(I)V

    goto :goto_2
.end method

.method public setFacilityPrinting(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lorg/apache/log4j/net/SyslogAppender;->facilityPrinting:Z

    .line 450
    return-void
.end method

.method public final setHeader(Z)V
    .registers 2
    .param p1, "val"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lorg/apache/log4j/net/SyslogAppender;->header:Z

    .line 477
    return-void
.end method

.method public setSyslogHost(Ljava/lang/String;)V
    .registers 6
    .param p1, "syslogHost"    # Ljava/lang/String;

    .prologue
    .line 391
    new-instance v0, Lorg/apache/log4j/helpers/SyslogQuietWriter;

    new-instance v1, Lorg/apache/log4j/helpers/SyslogWriter;

    invoke-direct {v1, p1}, Lorg/apache/log4j/helpers/SyslogWriter;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogFacility:I

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/SyslogQuietWriter;-><init>(Ljava/io/Writer;ILorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SyslogAppender;->sqw:Lorg/apache/log4j/helpers/SyslogQuietWriter;

    .line 394
    iput-object p1, p0, Lorg/apache/log4j/net/SyslogAppender;->syslogHost:Ljava/lang/String;

    .line 395
    return-void
.end method
