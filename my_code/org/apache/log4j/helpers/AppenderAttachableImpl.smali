.class public Lorg/apache/log4j/helpers/AppenderAttachableImpl;
.super Ljava/lang/Object;
.source "AppenderAttachableImpl.java"

# interfaces
.implements Lorg/apache/log4j/spi/AppenderAttachable;


# instance fields
.field protected appenderList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/log4j/Appender;)V
    .registers 4
    .param p1, "newAppender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 45
    if-nez p1, :cond_3

    .line 53
    :cond_2
    :goto_2
    return-void

    .line 48
    :cond_3
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_f

    .line 49
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    .line 51
    :cond_f
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I
    .registers 6
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 62
    .local v2, "size":I
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-eqz v3, :cond_1c

    .line 63
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_1c

    .line 65
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 66
    .local v0, "appender":Lorg/apache/log4j/Appender;
    invoke-interface {v0, p1}, Lorg/apache/log4j/Appender;->doAppend(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 69
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    .end local v1    # "i":I
    :cond_1c
    return v2
.end method

.method public getAllAppenders()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_6

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_5
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-eqz v4, :cond_7

    if-nez p1, :cond_9

    :cond_7
    move-object v0, v3

    .line 106
    :cond_8
    :goto_8
    return-object v0

    .line 99
    :cond_9
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 101
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_27

    .line 102
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 103
    .local v0, "appender":Lorg/apache/log4j/Appender;
    invoke-interface {v0}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    :cond_27
    move-object v0, v3

    .line 106
    goto :goto_8
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .registers 7
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-eqz v4, :cond_7

    if-nez p1, :cond_8

    .line 127
    :cond_7
    :goto_7
    return v3

    .line 120
    :cond_8
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 122
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_7

    .line 123
    iget-object v4, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 124
    .local v0, "a":Lorg/apache/log4j/Appender;
    if-ne v0, p1, :cond_1d

    .line 125
    const/4 v3, 0x1

    goto :goto_7

    .line 122
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public removeAllAppenders()V
    .registers 5

    .prologue
    .line 137
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-eqz v3, :cond_23

    .line 138
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 139
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_1b

    .line 140
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 141
    .local v0, "a":Lorg/apache/log4j/Appender;
    invoke-interface {v0}, Lorg/apache/log4j/Appender;->close()V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 143
    .end local v0    # "a":Lorg/apache/log4j/Appender;
    :cond_1b
    iget-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 144
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    .line 146
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_23
    return-void
.end method

.method public removeAppender(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    if-eqz p1, :cond_6

    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v2, :cond_7

    .line 174
    :cond_6
    :goto_6
    return-void

    .line 167
    :cond_7
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 168
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_6

    .line 169
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Appender;

    invoke-interface {v2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 170
    iget-object v2, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_6

    .line 168
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public removeAppender(Lorg/apache/log4j/Appender;)V
    .registers 3
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 154
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    if-nez v0, :cond_7

    .line 157
    :cond_6
    :goto_6
    return-void

    .line 156
    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appenderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_6
.end method
