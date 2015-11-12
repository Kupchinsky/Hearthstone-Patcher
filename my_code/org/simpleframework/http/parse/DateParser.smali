.class public Lorg/simpleframework/http/parse/DateParser;
.super Lorg/simpleframework/util/parse/Parser;
.source "DateParser.java"


# static fields
.field private static final MONTHS:[Ljava/lang/String;

.field private static final WEEKDAYS:[Ljava/lang/String;

.field private static final WKDAYS:[Ljava/lang/String;

.field private static final ZONE:Ljava/util/TimeZone;


# instance fields
.field private day:I

.field private hour:I

.field private mins:I

.field private month:I

.field private secs:I

.field private weekday:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/simpleframework/http/parse/DateParser;->ZONE:Ljava/util/TimeZone;

    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Mon"

    aput-object v1, v0, v3

    const-string v1, "Tue"

    aput-object v1, v0, v4

    const-string v1, "Wed"

    aput-object v1, v0, v5

    const-string v1, "Thu"

    aput-object v1, v0, v6

    const-string v1, "Fri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Sat"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sun"

    aput-object v2, v0, v1

    sput-object v0, Lorg/simpleframework/http/parse/DateParser;->WKDAYS:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Monday"

    aput-object v1, v0, v3

    const-string v1, "Tuesday"

    aput-object v1, v0, v4

    const-string v1, "Wednesday"

    aput-object v1, v0, v5

    const-string v1, "Thursday"

    aput-object v1, v0, v6

    const-string v1, "Friday"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Saturday"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sunday"

    aput-object v2, v0, v1

    sput-object v0, Lorg/simpleframework/http/parse/DateParser;->WEEKDAYS:[Ljava/lang/String;

    .line 72
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lorg/simpleframework/http/parse/DateParser;->MONTHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/simpleframework/util/parse/Parser;-><init>()V

    .line 131
    invoke-virtual {p0}, Lorg/simpleframework/http/parse/DateParser;->init()V

    .line 132
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "date"    # J

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;-><init>()V

    .line 146
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/http/parse/DateParser;->parse(J)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;-><init>()V

    .line 160
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/DateParser;->parse(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private asctime()V
    .registers 2

    .prologue
    .line 297
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->wkday()V

    .line 298
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 299
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->date3()V

    .line 300
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 301
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->time()V

    .line 302
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 303
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->year4()V

    .line 304
    return-void
.end method

.method private date(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x20

    .line 551
    sget-object v0, Lorg/simpleframework/http/parse/DateParser;->WKDAYS:[Ljava/lang/String;

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->weekday:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1b

    .line 555
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    :cond_1b
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    sget-object v0, Lorg/simpleframework/http/parse/DateParser;->MONTHS:[Ljava/lang/String;

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->month:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    return-void
.end method

.method private date1()V
    .registers 2

    .prologue
    .line 315
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->day()V

    .line 316
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 317
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->month()V

    .line 318
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 319
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->year4()V

    .line 320
    return-void
.end method

.method private date2()V
    .registers 2

    .prologue
    .line 331
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->day()V

    .line 332
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 333
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->month()V

    .line 334
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 335
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->year2()V

    .line 336
    return-void
.end method

.method private date3()V
    .registers 2

    .prologue
    .line 347
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->month()V

    .line 348
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 349
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->day()V

    .line 350
    return-void
.end method

.method private day()V
    .registers 4

    .prologue
    .line 360
    iget-object v0, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/DateParser;->space(C)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 361
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 363
    :cond_12
    :goto_12
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->count:I

    if-ge v0, v1, :cond_24

    .line 364
    iget-object v0, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/DateParser;->digit(C)Z

    move-result v0

    if-nez v0, :cond_25

    .line 372
    :cond_24
    return-void

    .line 367
    :cond_25
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    .line 368
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    iget-object v1, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    .line 369
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    .line 370
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    goto :goto_12
.end method

.method public static getDate()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    .local v0, "time":J
    new-instance v2, Lorg/simpleframework/http/parse/DateParser;

    invoke-direct {v2, v0, v1}, Lorg/simpleframework/http/parse/DateParser;-><init>(J)V

    invoke-virtual {v2}, Lorg/simpleframework/http/parse/DateParser;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hours()V
    .registers 4

    .prologue
    .line 443
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->count:I

    if-ge v0, v1, :cond_12

    .line 444
    iget-object v0, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/DateParser;->digit(C)Z

    move-result v0

    if-nez v0, :cond_13

    .line 452
    :cond_12
    return-void

    .line 447
    :cond_13
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    .line 448
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    iget-object v1, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    .line 449
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    .line 450
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    goto :goto_0
.end method

.method private mins()V
    .registers 4

    .prologue
    .line 463
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->count:I

    if-ge v0, v1, :cond_12

    .line 464
    iget-object v0, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/DateParser;->digit(C)Z

    move-result v0

    if-nez v0, :cond_13

    .line 472
    :cond_12
    return-void

    .line 467
    :cond_13
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    .line 468
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    iget-object v1, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    .line 469
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    .line 470
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    goto :goto_0
.end method

.method private month()V
    .registers 3

    .prologue
    .line 530
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lorg/simpleframework/http/parse/DateParser;->MONTHS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 531
    sget-object v1, Lorg/simpleframework/http/parse/DateParser;->MONTHS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/parse/DateParser;->skip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 532
    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->month:I

    .line 536
    :cond_12
    return-void

    .line 530
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private rfc1123()V
    .registers 2

    .prologue
    .line 261
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->wkday()V

    .line 262
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 263
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->date1()V

    .line 264
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 265
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->time()V

    .line 266
    return-void
.end method

.method private rfc850()V
    .registers 2

    .prologue
    .line 279
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->weekday()V

    .line 280
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 281
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->date2()V

    .line 282
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 283
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->time()V

    .line 284
    return-void
.end method

.method private secs()V
    .registers 4

    .prologue
    .line 483
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->count:I

    if-ge v0, v1, :cond_12

    .line 484
    iget-object v0, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/DateParser;->digit(C)Z

    move-result v0

    if-nez v0, :cond_13

    .line 492
    :cond_12
    return-void

    .line 487
    :cond_13
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    .line 488
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    iget-object v1, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    .line 489
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    .line 490
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    goto :goto_0
.end method

.method private time()V
    .registers 2

    .prologue
    .line 427
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->hours()V

    .line 428
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 429
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->mins()V

    .line 430
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    .line 431
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->secs()V

    .line 432
    return-void
.end method

.method private time(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x30

    const/16 v1, 0x9

    .line 578
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    if-gt v0, v1, :cond_d

    .line 579
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    :cond_d
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    if-gt v0, v1, :cond_1c

    .line 585
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    :cond_1c
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    if-gt v0, v1, :cond_2b

    .line 591
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    :cond_2b
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    return-void
.end method

.method private weekday()V
    .registers 3

    .prologue
    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lorg/simpleframework/http/parse/DateParser;->WKDAYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 517
    sget-object v1, Lorg/simpleframework/http/parse/DateParser;->WEEKDAYS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/parse/DateParser;->skip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 518
    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->weekday:I

    .line 522
    :cond_12
    return-void

    .line 516
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private wkday()V
    .registers 3

    .prologue
    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lorg/simpleframework/http/parse/DateParser;->WKDAYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 502
    sget-object v1, Lorg/simpleframework/http/parse/DateParser;->WKDAYS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/simpleframework/http/parse/DateParser;->skip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 503
    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->weekday:I

    .line 507
    :cond_12
    return-void

    .line 501
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private year2()V
    .registers 5

    .prologue
    .line 384
    const/16 v1, 0x7d0

    .line 385
    .local v1, "mill":I
    const/4 v0, 0x0

    .line 386
    .local v0, "cent":I
    :goto_3
    iget v2, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    iget v3, p0, Lorg/simpleframework/http/parse/DateParser;->count:I

    if-ge v2, v3, :cond_15

    .line 387
    iget-object v2, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v3, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/simpleframework/http/parse/DateParser;->digit(C)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 395
    :cond_15
    add-int v2, v1, v0

    iput v2, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    .line 396
    return-void

    .line 390
    :cond_1a
    mul-int/lit8 v0, v0, 0xa

    .line 391
    iget-object v2, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v3, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v2, v2, v3

    add-int/2addr v0, v2

    .line 392
    add-int/lit8 v0, v0, -0x30

    .line 393
    iget v2, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    goto :goto_3
.end method

.method private year4()V
    .registers 4

    .prologue
    .line 406
    :goto_0
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->count:I

    if-ge v0, v1, :cond_12

    .line 407
    iget-object v0, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/simpleframework/http/parse/DateParser;->digit(C)Z

    move-result v0

    if-nez v0, :cond_13

    .line 415
    :cond_12
    return-void

    .line 410
    :cond_13
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    .line 411
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    iget-object v1, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    iget v2, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    aget-char v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    .line 412
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    add-int/lit8 v0, v0, -0x30

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    .line 413
    iget v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    goto :goto_0
.end method

.method private zone(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 605
    const-string v0, "GMT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)J
    .registers 4
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/parse/DateParser;->parse(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lorg/simpleframework/http/parse/DateParser;->toLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public convert(J)Ljava/lang/String;
    .registers 4
    .param p1, "date"    # J

    .prologue
    .line 216
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/http/parse/DateParser;->parse(J)V

    .line 217
    invoke-virtual {p0}, Lorg/simpleframework/http/parse/DateParser;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->off:I

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->weekday:I

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    iput v0, p0, Lorg/simpleframework/http/parse/DateParser;->month:I

    .line 229
    return-void
.end method

.method protected parse()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 240
    iget-object v0, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    array-length v0, v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_8

    .line 248
    :goto_7
    return-void

    .line 241
    :cond_8
    iget-object v0, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    aget-char v0, v0, v2

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_14

    .line 242
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->rfc1123()V

    goto :goto_7

    .line 243
    :cond_14
    iget-object v0, p0, Lorg/simpleframework/http/parse/DateParser;->buf:[C

    aget-char v0, v0, v2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_20

    .line 244
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->asctime()V

    goto :goto_7

    .line 246
    :cond_20
    invoke-direct {p0}, Lorg/simpleframework/http/parse/DateParser;->rfc850()V

    goto :goto_7
.end method

.method public parse(J)V
    .registers 6
    .param p1, "date"    # J

    .prologue
    const/16 v1, 0xb

    .line 176
    sget-object v2, Lorg/simpleframework/http/parse/DateParser;->ZONE:Ljava/util/TimeZone;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 177
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lorg/simpleframework/http/parse/DateParser;->weekday:I

    .line 180
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    .line 181
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lorg/simpleframework/http/parse/DateParser;->month:I

    .line 182
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    .line 184
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    .line 185
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    .line 186
    iget v2, p0, Lorg/simpleframework/http/parse/DateParser;->month:I

    if-le v2, v1, :cond_4c

    :goto_41
    iput v1, p0, Lorg/simpleframework/http/parse/DateParser;->month:I

    .line 187
    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->weekday:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit8 v1, v1, 0x7

    iput v1, p0, Lorg/simpleframework/http/parse/DateParser;->weekday:I

    .line 188
    return-void

    .line 186
    :cond_4c
    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->month:I

    goto :goto_41
.end method

.method public toLong()J
    .registers 8

    .prologue
    .line 618
    sget-object v1, Lorg/simpleframework/http/parse/DateParser;->ZONE:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 619
    .local v0, "calendar":Ljava/util/Calendar;
    iget v1, p0, Lorg/simpleframework/http/parse/DateParser;->year:I

    iget v2, p0, Lorg/simpleframework/http/parse/DateParser;->month:I

    iget v3, p0, Lorg/simpleframework/http/parse/DateParser;->day:I

    iget v4, p0, Lorg/simpleframework/http/parse/DateParser;->hour:I

    iget v5, p0, Lorg/simpleframework/http/parse/DateParser;->mins:I

    iget v6, p0, Lorg/simpleframework/http/parse/DateParser;->secs:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 621
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 642
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/DateParser;->date(Ljava/lang/StringBuilder;)V

    .line 643
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/DateParser;->time(Ljava/lang/StringBuilder;)V

    .line 644
    invoke-direct {p0, v0}, Lorg/simpleframework/http/parse/DateParser;->zone(Ljava/lang/StringBuilder;)V

    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
