.class public Lorg/apache/log4j/helpers/ISO8601DateFormat;
.super Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.source "ISO8601DateFormat.java"


# static fields
.field private static lastTime:J = 0x0L

.field private static lastTimeString:[C = null

.field private static final serialVersionUID:J = -0xa8b7f21cd667ee0L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/16 v0, 0x14

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 2
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    .line 52
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 20
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 68
    .local v8, "now":J
    const-wide/16 v12, 0x3e8

    rem-long v12, v8, v12

    long-to-int v4, v12

    .line 70
    .local v4, "millis":I
    int-to-long v12, v4

    sub-long v12, v8, v12

    sget-wide v14, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_19

    sget-object v12, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    const/4 v13, 0x0

    aget-char v12, v12, v13

    if-nez v12, :cond_127

    .line 75
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    .line 79
    .local v10, "start":I
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 80
    .local v11, "year":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 83
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    packed-switch v12, :pswitch_data_130

    .line 96
    const-string v6, "-NA-"

    .line 98
    .local v6, "month":Ljava/lang/String;
    :goto_42
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 101
    .local v2, "day":I
    const/16 v12, 0xa

    if-ge v2, v12, :cond_5b

    .line 102
    const/16 v12, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    :cond_5b
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    const/16 v12, 0x20

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 108
    .local v3, "hour":I
    const/16 v12, 0xa

    if-ge v3, v12, :cond_7c

    .line 109
    const/16 v12, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    :cond_7c
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    const/16 v12, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 115
    .local v5, "mins":I
    const/16 v12, 0xa

    if-ge v5, v12, :cond_9d

    .line 116
    const/16 v12, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :cond_9d
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    const/16 v12, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xd

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 122
    .local v7, "secs":I
    const/16 v12, 0xa

    if-ge v7, v12, :cond_be

    .line 123
    const/16 v12, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :cond_be
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 127
    const/16 v12, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    sget-object v13, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12, v13, v14}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 131
    int-to-long v12, v4

    sub-long v12, v8, v12

    sput-wide v12, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    .line 138
    .end local v2    # "day":I
    .end local v3    # "hour":I
    .end local v5    # "mins":I
    .end local v6    # "month":Ljava/lang/String;
    .end local v7    # "secs":I
    .end local v10    # "start":I
    .end local v11    # "year":I
    :goto_db
    const/16 v12, 0x64

    if-ge v4, v12, :cond_e6

    .line 139
    const/16 v12, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    :cond_e6
    const/16 v12, 0xa

    if-ge v4, v12, :cond_f1

    .line 141
    const/16 v12, 0x30

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :cond_f1
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 144
    return-object p2

    .line 84
    .restart local v10    # "start":I
    .restart local v11    # "year":I
    :pswitch_f7
    const-string v6, "-01-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 85
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_fb
    const-string v6, "-02-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 86
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_ff
    const-string v6, "-03-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 87
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_103
    const-string v6, "-04-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 88
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_107
    const-string v6, "-05-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 89
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_10b
    const-string v6, "-06-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 90
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_10f
    const-string v6, "-07-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 91
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_113
    const-string v6, "-08-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 92
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_117
    const-string v6, "-09-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 93
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_11b
    const-string v6, "-10-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 94
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_11f
    const-string v6, "-11-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 95
    .end local v6    # "month":Ljava/lang/String;
    :pswitch_123
    const-string v6, "-12-"

    .restart local v6    # "month":Ljava/lang/String;
    goto/16 :goto_42

    .line 134
    .end local v6    # "month":Ljava/lang/String;
    .end local v10    # "start":I
    .end local v11    # "year":I
    :cond_127
    sget-object v12, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_db

    .line 83
    nop

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_f7
        :pswitch_fb
        :pswitch_ff
        :pswitch_103
        :pswitch_107
        :pswitch_10b
        :pswitch_10f
        :pswitch_113
        :pswitch_117
        :pswitch_11b
        :pswitch_11f
        :pswitch_123
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method
