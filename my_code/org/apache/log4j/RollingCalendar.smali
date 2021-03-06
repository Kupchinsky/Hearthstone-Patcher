.class Lorg/apache/log4j/RollingCalendar;
.super Ljava/util/GregorianCalendar;
.source "DailyRollingFileAppender.java"


# static fields
.field private static final serialVersionUID:J = -0x3168d6e1c54238a1L


# instance fields
.field type:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 381
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 385
    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 4
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 381
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 389
    return-void
.end method


# virtual methods
.method public getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;
    .registers 10
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 400
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 402
    iget v1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    packed-switch v1, :pswitch_data_9a

    .line 450
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown periodicity type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :pswitch_18
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 405
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 406
    invoke-virtual {p0, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 452
    :goto_23
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 409
    :pswitch_28
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 410
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 411
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 412
    invoke-virtual {p0, v6, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 415
    :pswitch_37
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 416
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 417
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 418
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 419
    .local v0, "hour":I
    if-ge v0, v4, :cond_4c

    .line 420
    invoke-virtual {p0, v6, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_23

    .line 422
    :cond_4c
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 423
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 427
    .end local v0    # "hour":I
    :pswitch_54
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 428
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 429
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 430
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 431
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 434
    :pswitch_67
    const/4 v1, 0x7

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 435
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 436
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 437
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 438
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 439
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 442
    :pswitch_82
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 443
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 444
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 445
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 446
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 447
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 402
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_28
        :pswitch_37
        :pswitch_54
        :pswitch_67
        :pswitch_82
    .end packed-switch
.end method

.method public getNextCheckMillis(Ljava/util/Date;)J
    .registers 4
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lorg/apache/log4j/RollingCalendar;->getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 392
    iput p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 393
    return-void
.end method
