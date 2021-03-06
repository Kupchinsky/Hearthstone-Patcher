.class public Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.super Ljava/text/DateFormat;
.source "AbsoluteTimeDateFormat.java"


# static fields
.field public static final ABS_TIME_DATE_FORMAT:Ljava/lang/String; = "ABSOLUTE"

.field public static final DATE_AND_TIME_DATE_FORMAT:Ljava/lang/String; = "DATE"

.field public static final ISO8601_DATE_FORMAT:Ljava/lang/String; = "ISO8601"

.field private static previousTime:J = 0x0L

.field private static previousTimeWithoutMillis:[C = null

.field private static final serialVersionUID:J = -0x5657ec95299578eL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/16 v0, 0x9

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 68
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 16
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 86
    .local v4, "now":J
    const-wide/16 v8, 0x3e8

    rem-long v8, v4, v8

    long-to-int v1, v8

    .line 88
    .local v1, "millis":I
    int-to-long v8, v1

    sub-long v8, v4, v8

    sget-wide v10, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTime:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_19

    sget-object v7, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    if-nez v7, :cond_92

    .line 93
    :cond_19
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 97
    .local v6, "start":I
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 98
    .local v0, "hour":I
    const/16 v7, 0xa

    if-ge v0, v7, :cond_33

    .line 99
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    :cond_33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 105
    .local v2, "mins":I
    const/16 v7, 0xa

    if-ge v2, v7, :cond_4c

    .line 106
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 108
    :cond_4c
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 112
    .local v3, "secs":I
    const/16 v7, 0xa

    if-ge v3, v7, :cond_65

    .line 113
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    :cond_65
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 116
    const/16 v7, 0x2c

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    sget-object v8, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    const/4 v9, 0x0

    invoke-virtual {p2, v6, v7, v8, v9}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 121
    int-to-long v8, v1

    sub-long v8, v4, v8

    sput-wide v8, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTime:J

    .line 129
    .end local v0    # "hour":I
    .end local v2    # "mins":I
    .end local v3    # "secs":I
    .end local v6    # "start":I
    :goto_7c
    const/16 v7, 0x64

    if-ge v1, v7, :cond_85

    .line 130
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    :cond_85
    const/16 v7, 0xa

    if-ge v1, v7, :cond_8e

    .line 132
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    :cond_8e
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 135
    return-object p2

    .line 124
    :cond_92
    sget-object v7, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_7c
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method
