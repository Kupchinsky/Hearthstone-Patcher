.class public Lorg/apache/log4j/jdbc/JDBCAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "JDBCAppender.java"

# interfaces
.implements Lorg/apache/log4j/Appender;


# instance fields
.field protected buffer:Ljava/util/ArrayList;

.field protected bufferSize:I

.field protected connection:Ljava/sql/Connection;

.field protected databasePassword:Ljava/lang/String;

.field protected databaseURL:Ljava/lang/String;

.field protected databaseUser:Ljava/lang/String;

.field private locationInfo:Z

.field protected removes:Ljava/util/ArrayList;

.field protected sqlStatement:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 84
    const-string v0, "jdbc:odbc:myDB"

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    .line 89
    const-string v0, "me"

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    .line 94
    const-string v0, "mypassword"

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->sqlStatement:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->locationInfo:Z

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    .line 138
    return-void
.end method


# virtual methods
.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 4
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 174
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 178
    iget-boolean v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->locationInfo:Z

    if-eqz v0, :cond_10

    .line 179
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 181
    :cond_10
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    if-lt v0, v1, :cond_28

    .line 186
    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->flushBuffer()V

    .line 187
    :cond_28
    return-void
.end method

.method public close()V
    .registers 5

    .prologue
    .line 265
    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->flushBuffer()V

    .line 268
    :try_start_3
    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->isClosed()Z

    move-result v1

    if-nez v1, :cond_14

    .line 269
    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_14
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_14} :catch_18

    .line 273
    :cond_14
    :goto_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 274
    return-void

    .line 270
    :catch_18
    move-exception v0

    .line 271
    .local v0, "e":Ljava/sql/SQLException;
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Error closing connection"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_14
.end method

.method protected closeConnection(Ljava/sql/Connection;)V
    .registers 2
    .param p1, "con"    # Ljava/sql/Connection;

    .prologue
    .line 239
    return-void
.end method

.method protected execute(Ljava/lang/String;)V
    .registers 5
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "con":Ljava/sql/Connection;
    const/4 v2, 0x0

    .line 215
    .local v2, "stmt":Ljava/sql/Statement;
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 218
    invoke-interface {v2, p1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_d} :catch_14

    .line 224
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 225
    invoke-virtual {p0, v0}, Lorg/apache/log4j/jdbc/JDBCAppender;->closeConnection(Ljava/sql/Connection;)V

    .line 228
    return-void

    .line 219
    :catch_14
    move-exception v1

    .line 220
    .local v1, "e":Ljava/sql/SQLException;
    if-eqz v2, :cond_1a

    .line 221
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 222
    :cond_1a
    throw v1
.end method

.method public finalize()V
    .registers 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/apache/log4j/jdbc/JDBCAppender;->close()V

    .line 310
    return-void
.end method

.method public flushBuffer()V
    .registers 8

    .prologue
    .line 285
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 286
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 288
    :try_start_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/spi/LoggingEvent;

    .line 289
    .local v2, "logEvent":Lorg/apache/log4j/spi/LoggingEvent;
    invoke-virtual {p0, v2}, Lorg/apache/log4j/jdbc/JDBCAppender;->getLogStatement(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/apache/log4j/jdbc/JDBCAppender;->execute(Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/sql/SQLException; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_11

    .line 293
    .end local v2    # "logEvent":Lorg/apache/log4j/spi/LoggingEvent;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 294
    .local v0, "e":Ljava/sql/SQLException;
    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v5, "Failed to excute sql"

    const/4 v6, 0x2

    invoke-interface {v4, v5, v0, v6}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_11

    .line 300
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_34
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 303
    iget-object v4, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 304
    return-void
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 381
    iget v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    return v0
.end method

.method protected getConnection()Ljava/sql/Connection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Ljava/sql/DriverManager;->getDrivers()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_f

    .line 249
    const-string v0, "sun.jdbc.odbc.JdbcOdbcDriver"

    invoke-virtual {p0, v0}, Lorg/apache/log4j/jdbc/JDBCAppender;->setDriver(Ljava/lang/String;)V

    .line 251
    :cond_f
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    if-nez v0, :cond_1f

    .line 252
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    .line 256
    :cond_1f
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->connection:Ljava/sql/Connection;

    return-object v0
.end method

.method public getLocationInfo()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->locationInfo:Z

    return v0
.end method

.method protected getLogStatement(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .registers 3
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->sqlStatement:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public setBufferSize(I)V
    .registers 4
    .param p1, "newBufferSize"    # I

    .prologue
    .line 359
    iput p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    .line 360
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->buffer:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 361
    iget-object v0, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->removes:Ljava/util/ArrayList;

    iget v1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 362
    return-void
.end method

.method public setDriver(Ljava/lang/String;)V
    .registers 6
    .param p1, "driverClass"    # Ljava/lang/String;

    .prologue
    .line 391
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 396
    :goto_3
    return-void

    .line 392
    :catch_4
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Failed to load driver"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_3
.end method

.method public setLocationInfo(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->locationInfo:Z

    .line 167
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databasePassword:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setSql(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->sqlStatement:Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    if-nez v0, :cond_11

    .line 327
    new-instance v0, Lorg/apache/log4j/PatternLayout;

    invoke-direct {v0, p1}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/AppenderSkeleton;->setLayout(Lorg/apache/log4j/Layout;)V

    .line 332
    :goto_10
    return-void

    .line 330
    :cond_11
    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->getLayout()Lorg/apache/log4j/Layout;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/PatternLayout;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/PatternLayout;->setConversionPattern(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public setURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseURL:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lorg/apache/log4j/jdbc/JDBCAppender;->databaseUser:Ljava/lang/String;

    .line 345
    return-void
.end method
