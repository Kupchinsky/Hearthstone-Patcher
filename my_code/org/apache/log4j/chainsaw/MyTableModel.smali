.class Lorg/apache/log4j/chainsaw/MyTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "MyTableModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/chainsaw/MyTableModel$Processor;
    }
.end annotation


# static fields
.field private static final COL_NAMES:[Ljava/lang/String;

.field private static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

.field private static final LOG:Lorg/apache/log4j/Logger;

.field private static final MY_COMP:Ljava/util/Comparator;

.field static class$java$lang$Boolean:Ljava/lang/Class;

.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;


# instance fields
.field private final mAllEvents:Ljava/util/SortedSet;

.field private mCategoryFilter:Ljava/lang/String;

.field private mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

.field private final mLock:Ljava/lang/Object;

.field private mMessageFilter:Ljava/lang/String;

.field private mNDCFilter:Ljava/lang/String;

.field private mPaused:Z

.field private final mPendingEvents:Ljava/util/List;

.field private mPriorityFilter:Lorg/apache/log4j/Priority;

.field private mThreadFilter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 42
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;

    if-nez v0, :cond_47

    const-string v0, "org.apache.log4j.chainsaw.MyTableModel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;

    :goto_f
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->LOG:Lorg/apache/log4j/Logger;

    .line 45
    new-instance v0, Lorg/apache/log4j/chainsaw/MyTableModel$1;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/MyTableModel$1;-><init>()V

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->MY_COMP:Ljava/util/Comparator;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Time"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Priority"

    aput-object v2, v0, v1

    const-string v1, "Trace"

    aput-object v1, v0, v4

    const-string v1, "Category"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "NDC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Message"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->COL_NAMES:[Ljava/lang/String;

    .line 116
    new-array v0, v3, [Lorg/apache/log4j/chainsaw/EventDetails;

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

    .line 119
    invoke-static {v5, v4}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->DATE_FORMATTER:Ljava/text/DateFormat;

    return-void

    .line 42
    :cond_47
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;

    goto :goto_f
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    .line 149
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 123
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    .line 125
    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Lorg/apache/log4j/chainsaw/MyTableModel;->MY_COMP:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    .line 127
    sget-object v1, Lorg/apache/log4j/chainsaw/MyTableModel;->EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    .line 134
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mThreadFilter:Ljava/lang/String;

    .line 136
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    .line 138
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    .line 140
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mCategoryFilter:Ljava/lang/String;

    .line 142
    sget-object v1, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPriorityFilter:Lorg/apache/log4j/Priority;

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/MyTableModel$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method static access$000(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static access$100(Lorg/apache/log4j/chainsaw/MyTableModel;)Z
    .registers 2
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    return v0
.end method

.method static access$200(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    return-object v0
.end method

.method static access$300(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/SortedSet;
    .registers 2
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    return-object v0
.end method

.method static access$400(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/EventDetails;)Z
    .registers 3
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .param p1, "x1"    # Lorg/apache/log4j/chainsaw/EventDetails;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel;->matchFilter(Lorg/apache/log4j/chainsaw/EventDetails;)Z

    move-result v0

    return v0
.end method

.method static access$500(Lorg/apache/log4j/chainsaw/MyTableModel;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private matchFilter(Lorg/apache/log4j/chainsaw/EventDetails;)Z
    .registers 7
    .param p1, "aEvent"    # Lorg/apache/log4j/chainsaw/EventDetails;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getPriority()Lorg/apache/log4j/Priority;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPriorityFilter:Lorg/apache/log4j/Priority;

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getThreadName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mThreadFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5b

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mCategoryFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5b

    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5b

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5b

    .line 379
    :cond_40
    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "rm":Ljava/lang/String;
    if-nez v0, :cond_51

    .line 382
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4f

    .line 388
    .end local v0    # "rm":Ljava/lang/String;
    :cond_4e
    :goto_4e
    return v1

    .restart local v0    # "rm":Ljava/lang/String;
    :cond_4f
    move v1, v2

    .line 382
    goto :goto_4e

    .line 384
    :cond_51
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4e

    move v1, v2

    goto :goto_4e

    .end local v0    # "rm":Ljava/lang/String;
    :cond_5b
    move v1, v2

    .line 388
    goto :goto_4e
.end method

.method private updateFilteredEvents(Z)V
    .registers 16
    .param p1, "aInsertedToFront"    # Z

    .prologue
    const/4 v11, 0x0

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 332
    .local v8, "start":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, "filtered":Ljava/util/List;
    iget-object v10, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v7

    .line 334
    .local v7, "size":I
    iget-object v10, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 336
    .local v5, "it":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 337
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/chainsaw/EventDetails;

    .line 338
    .local v2, "event":Lorg/apache/log4j/chainsaw/EventDetails;
    invoke-direct {p0, v2}, Lorg/apache/log4j/chainsaw/MyTableModel;->matchFilter(Lorg/apache/log4j/chainsaw/EventDetails;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 339
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 343
    .end local v2    # "event":Lorg/apache/log4j/chainsaw/EventDetails;
    :cond_2c
    iget-object v10, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    array-length v10, v10

    if-nez v10, :cond_7c

    const/4 v6, 0x0

    .line 346
    .local v6, "lastFirst":Lorg/apache/log4j/chainsaw/EventDetails;
    :goto_32
    sget-object v10, Lorg/apache/log4j/chainsaw/MyTableModel;->EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

    invoke-interface {v3, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/apache/log4j/chainsaw/EventDetails;

    check-cast v10, [Lorg/apache/log4j/chainsaw/EventDetails;

    iput-object v10, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    .line 348
    if-eqz p1, :cond_87

    if-eqz v6, :cond_87

    .line 349
    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 350
    .local v4, "index":I
    const/4 v10, 0x1

    if-ge v4, v10, :cond_81

    .line 351
    sget-object v10, Lorg/apache/log4j/chainsaw/MyTableModel;->LOG:Lorg/apache/log4j/Logger;

    const-string v11, "In strange state"

    invoke-virtual {v10, v11}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V

    .line 360
    .end local v4    # "index":I
    :goto_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 361
    .local v0, "end":J
    sget-object v10, Lorg/apache/log4j/chainsaw/MyTableModel;->LOG:Lorg/apache/log4j/Logger;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Total time [ms]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    sub-long v12, v0, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " in update, size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 363
    return-void

    .line 343
    .end local v0    # "end":J
    .end local v6    # "lastFirst":Lorg/apache/log4j/chainsaw/EventDetails;
    :cond_7c
    iget-object v10, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    aget-object v6, v10, v11

    goto :goto_32

    .line 354
    .restart local v4    # "index":I
    .restart local v6    # "lastFirst":Lorg/apache/log4j/chainsaw/EventDetails;
    :cond_81
    add-int/lit8 v10, v4, -0x1

    invoke-virtual {p0, v11, v10}, Ljavax/swing/table/AbstractTableModel;->fireTableRowsInserted(II)V

    goto :goto_53

    .line 357
    .end local v4    # "index":I
    :cond_87
    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V

    goto :goto_53
.end method


# virtual methods
.method public addEvent(Lorg/apache/log4j/chainsaw/EventDetails;)V
    .registers 4
    .param p1, "aEvent"    # Lorg/apache/log4j/chainsaw/EventDetails;

    .prologue
    .line 277
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    monitor-exit v1

    .line 280
    return-void

    .line 279
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 286
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 288
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/log4j/chainsaw/EventDetails;

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    .line 289
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V

    .line 291
    monitor-exit v1

    .line 292
    return-void

    .line 291
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .registers 3
    .param p1, "aCol"    # I

    .prologue
    .line 182
    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Boolean:Ljava/lang/Class;

    :goto_f
    return-object v0

    :cond_10
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Boolean:Ljava/lang/Class;

    goto :goto_f

    :cond_13
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_20

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_f

    :cond_20
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_f
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 170
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->COL_NAMES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .param p1, "aCol"    # I

    .prologue
    .line 176
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->COL_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getEventDetails(I)Lorg/apache/log4j/chainsaw/EventDetails;
    .registers 4
    .param p1, "aRow"    # I

    .prologue
    .line 315
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    aget-object v0, v0, p1

    monitor-exit v1

    return-object v0

    .line 317
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getRowCount()I
    .registers 3

    .prologue
    .line 162
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    array-length v0, v0

    monitor-exit v1

    return v0

    .line 164
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .registers 9
    .param p1, "aRow"    # I
    .param p2, "aCol"    # I

    .prologue
    .line 187
    iget-object v2, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 188
    :try_start_3
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    aget-object v0, v1, p1

    .line 190
    .local v0, "event":Lorg/apache/log4j/chainsaw/EventDetails;
    if-nez p2, :cond_1a

    .line 191
    sget-object v1, Lorg/apache/log4j/chainsaw/MyTableModel;->DATE_FORMATTER:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    .line 202
    :goto_19
    return-object v1

    .line 192
    :cond_1a
    const/4 v1, 0x1

    if-ne p2, v1, :cond_26

    .line 193
    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getPriority()Lorg/apache/log4j/Priority;

    move-result-object v1

    monitor-exit v2

    goto :goto_19

    .line 203
    .end local v0    # "event":Lorg/apache/log4j/chainsaw/EventDetails;
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1

    .line 194
    .restart local v0    # "event":Lorg/apache/log4j/chainsaw/EventDetails;
    :cond_26
    const/4 v1, 0x2

    if-ne p2, v1, :cond_36

    .line 195
    :try_start_29
    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_31
    monitor-exit v2

    goto :goto_19

    :cond_33
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_31

    .line 197
    :cond_36
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3f

    .line 198
    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_19

    .line 199
    :cond_3f
    const/4 v1, 0x4

    if-ne p2, v1, :cond_48

    .line 200
    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_19

    .line 202
    :cond_48
    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getMessage()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_23

    goto :goto_19
.end method

.method public isPaused()Z
    .registers 3

    .prologue
    .line 303
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_3
    iget-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    monitor-exit v1

    return v0

    .line 305
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setCategoryFilter(Ljava/lang/String;)V
    .registers 4
    .param p1, "aStr"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mCategoryFilter:Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 268
    monitor-exit v1

    .line 269
    return-void

    .line 268
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setMessageFilter(Ljava/lang/String;)V
    .registers 4
    .param p1, "aStr"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setNDCFilter(Ljava/lang/String;)V
    .registers 4
    .param p1, "aStr"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 256
    monitor-exit v1

    .line 257
    return-void

    .line 256
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setPriorityFilter(Lorg/apache/log4j/Priority;)V
    .registers 4
    .param p1, "aPriority"    # Lorg/apache/log4j/Priority;

    .prologue
    .line 217
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_3
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPriorityFilter:Lorg/apache/log4j/Priority;

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setThreadFilter(Ljava/lang/String;)V
    .registers 4
    .param p1, "aStr"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mThreadFilter:Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public toggle()V
    .registers 3

    .prologue
    .line 296
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_3
    iget-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    .line 298
    monitor-exit v1

    .line 299
    return-void

    .line 297
    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    .line 298
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
