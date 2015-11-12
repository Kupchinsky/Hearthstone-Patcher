.class public Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "FilteredLogTableModel.java"


# instance fields
.field protected _allRecords:Ljava/util/List;

.field protected _colNames:[Ljava/lang/String;

.field protected _filter:Lorg/apache/log4j/lf5/LogRecordFilter;

.field protected _filteredRecords:Ljava/util/List;

.field protected _maxNumberOfLogRecords:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 72
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/log4j/lf5/PassingLogRecordFilter;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/PassingLogRecordFilter;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    .line 52
    const/16 v0, 0x1388

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Thread"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Message #"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Level"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NDC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Category"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Message"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Thrown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_colNames:[Ljava/lang/String;

    .line 73
    return-void
.end method

.method private numberOfRecordsToTrim()I
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized addLogRecord(Lorg/apache/log4j/lf5/LogRecord;)Z
    .registers 4
    .param p1, "record"    # Lorg/apache/log4j/lf5/LogRecord;

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    invoke-interface {v0, p1}, Lorg/apache/log4j/lf5/LogRecordFilter;->passes(Lorg/apache/log4j/lf5/LogRecord;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_28

    move-result v0

    if-nez v0, :cond_11

    .line 120
    const/4 v0, 0x0

    .line 125
    :goto_f
    monitor-exit p0

    return v0

    .line 122
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getRowCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getRowCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljavax/swing/table/AbstractTableModel;->fireTableRowsInserted(II)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->trimRecords()V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_28

    .line 125
    const/4 v0, 0x1

    goto :goto_f

    .line 117
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 150
    monitor-exit p0

    return-void

    .line 147
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createFilteredRecordsList()Ljava/util/List;
    .registers 5

    .prologue
    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v2, "result":Ljava/util/List;
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    .local v1, "records":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogRecord;

    .line 169
    .local v0, "current":Lorg/apache/log4j/lf5/LogRecord;
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    invoke-interface {v3, v0}, Lorg/apache/log4j/lf5/LogRecordFilter;->passes(Lorg/apache/log4j/lf5/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 170
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 173
    .end local v0    # "current":Lorg/apache/log4j/lf5/LogRecord;
    :cond_23
    return-object v2
.end method

.method public declared-synchronized fastRefresh()V
    .registers 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/swing/table/AbstractTableModel;->fireTableRowsDeleted(II)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 140
    monitor-exit p0

    return-void

    .line 138
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getColumn(ILorg/apache/log4j/lf5/LogRecord;)Ljava/lang/Object;
    .registers 9
    .param p1, "col"    # I
    .param p2, "lr"    # Lorg/apache/log4j/lf5/LogRecord;

    .prologue
    .line 191
    if-nez p2, :cond_5

    .line 192
    const-string v2, "NULL Column"

    .line 213
    :goto_4
    return-object v2

    .line 194
    :cond_5
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "date":Ljava/lang/String;
    packed-switch p1, :pswitch_data_84

    .line 215
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The column number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "must be between 0 and 8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_34
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 199
    :pswitch_56
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getThreadDescription()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 201
    :pswitch_5b
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getSequenceNumber()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_4

    .line 203
    :pswitch_65
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v2

    goto :goto_4

    .line 205
    :pswitch_6a
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getNDC()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 207
    :pswitch_6f
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getCategory()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 209
    :pswitch_74
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 211
    :pswitch_79
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getLocation()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 213
    :pswitch_7e
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getThrownStackTrace()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 195
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_34
        :pswitch_56
        :pswitch_5b
        :pswitch_65
        :pswitch_6a
        :pswitch_6f
        :pswitch_74
        :pswitch_79
        :pswitch_7e
    .end packed-switch
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_colNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_colNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getFilteredRecord(I)Lorg/apache/log4j/lf5/LogRecord;
    .registers 5
    .param p1, "row"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "records":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 179
    .local v1, "size":I
    if-ge p1, v1, :cond_11

    .line 180
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogRecord;

    .line 186
    :goto_10
    return-object v2

    :cond_11
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogRecord;

    goto :goto_10
.end method

.method protected getFilteredRecords()Ljava/util/List;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    if-nez v0, :cond_7

    .line 158
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 160
    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    return-object v0
.end method

.method public getLogRecordFilter()Lorg/apache/log4j/lf5/LogRecordFilter;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    return-object v0
.end method

.method public getRowCount()I
    .registers 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTotalRowCount()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .registers 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecord(I)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v0

    .line 105
    .local v0, "record":Lorg/apache/log4j/lf5/LogRecord;
    invoke-virtual {p0, p2, v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getColumn(ILorg/apache/log4j/lf5/LogRecord;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected needsTrimming()Z
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public declared-synchronized refresh()V
    .registers 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->createFilteredRecordsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    .line 134
    invoke-virtual {p0}, Ljavax/swing/table/AbstractTableModel;->fireTableDataChanged()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 135
    monitor-exit p0

    return-void

    .line 133
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V
    .registers 2
    .param p1, "filter"    # Lorg/apache/log4j/lf5/LogRecordFilter;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    .line 81
    return-void
.end method

.method public setMaxNumberOfLogRecords(I)V
    .registers 2
    .param p1, "maxNumRecords"    # I

    .prologue
    .line 109
    if-lez p1, :cond_4

    .line 110
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    .line 113
    :cond_4
    return-void
.end method

.method protected trimOldestRecords()V
    .registers 6

    .prologue
    .line 237
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    monitor-enter v3

    .line 238
    :try_start_3
    invoke-direct {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->numberOfRecordsToTrim()I

    move-result v1

    .line 239
    .local v1, "trim":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_19

    .line 240
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 242
    .local v0, "oldRecords":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 248
    .end local v0    # "oldRecords":Ljava/util/List;
    :goto_17
    monitor-exit v3

    .line 250
    return-void

    .line 245
    :cond_19
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->fastRefresh()V

    goto :goto_17

    .line 248
    .end local v1    # "trim":I
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2
.end method

.method protected trimRecords()V
    .registers 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->needsTrimming()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 228
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->trimOldestRecords()V

    .line 230
    :cond_9
    return-void
.end method
