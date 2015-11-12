.class public Lorg/apache/log4j/Level;
.super Lorg/apache/log4j/Priority;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Lorg/apache/log4j/Level;

.field public static final DEBUG:Lorg/apache/log4j/Level;

.field public static final ERROR:Lorg/apache/log4j/Level;

.field public static final FATAL:Lorg/apache/log4j/Level;

.field public static final INFO:Lorg/apache/log4j/Level;

.field public static final OFF:Lorg/apache/log4j/Level;

.field public static final TRACE:Lorg/apache/log4j/Level;

.field public static final TRACE_INT:I = 0x1388

.field public static final WARN:Lorg/apache/log4j/Level;

.field static class$org$apache$log4j$Level:Ljava/lang/Class; = null

.field static final serialVersionUID:J = 0x3073071f1f02c436L


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x7

    .line 51
    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0x7fffffff

    const-string v2, "OFF"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    .line 57
    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0xc350

    const-string v2, "FATAL"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    .line 62
    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0x9c40

    const-string v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    .line 67
    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x7530

    const-string v2, "WARN"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    .line 73
    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x4e20

    const-string v2, "INFO"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    .line 79
    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x2710

    const-string v2, "DEBUG"

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    .line 86
    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x1388

    const-string v2, "TRACE"

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    .line 92
    new-instance v0, Lorg/apache/log4j/Level;

    const/high16 v1, -0x80000000

    const-string v2, "ALL"

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .registers 4
    .param p1, "level"    # I
    .param p2, "levelStr"    # Ljava/lang/String;
    .param p3, "syslogEquivalent"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/Priority;-><init>(ILjava/lang/String;I)V

    .line 105
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 215
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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 185
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/Priority;->level:I

    .line 186
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    .line 187
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    if-nez v0, :cond_1d

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    .line 191
    :cond_1d
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v0, Lorg/apache/log4j/Level;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v0, :cond_19

    const-string v0, "org.apache.log4j.Level"

    invoke-static {v0}, Lorg/apache/log4j/Level;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/Level;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :goto_10
    if-ne v1, v0, :cond_18

    .line 216
    iget v0, p0, Lorg/apache/log4j/Priority;->level:I

    invoke-static {v0}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object p0

    .line 221
    .end local p0    # "this":Lorg/apache/log4j/Level;
    :cond_18
    return-object p0

    .line 215
    .restart local p0    # "this":Lorg/apache/log4j/Level;
    :cond_19
    sget-object v0, Lorg/apache/log4j/Level;->class$org$apache$log4j$Level:Ljava/lang/Class;

    goto :goto_10
.end method

.method public static toLevel(I)Lorg/apache/log4j/Level;
    .registers 2
    .param p0, "val"    # I

    .prologue
    .line 126
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p0, v0}, Lorg/apache/log4j/Level;->toLevel(ILorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(ILorg/apache/log4j/Level;)Lorg/apache/log4j/Level;
    .registers 2
    .param p0, "val"    # I
    .param p1, "defaultLevel"    # Lorg/apache/log4j/Level;

    .prologue
    .line 136
    sparse-switch p0, :sswitch_data_1c

    .line 145
    .end local p1    # "defaultLevel":Lorg/apache/log4j/Level;
    :goto_3
    return-object p1

    .line 137
    .restart local p1    # "defaultLevel":Lorg/apache/log4j/Level;
    :sswitch_4
    sget-object p1, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    goto :goto_3

    .line 138
    :sswitch_7
    sget-object p1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    goto :goto_3

    .line 139
    :sswitch_a
    sget-object p1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    goto :goto_3

    .line 140
    :sswitch_d
    sget-object p1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    goto :goto_3

    .line 141
    :sswitch_10
    sget-object p1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    goto :goto_3

    .line 142
    :sswitch_13
    sget-object p1, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    goto :goto_3

    .line 143
    :sswitch_16
    sget-object p1, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    goto :goto_3

    .line 144
    :sswitch_19
    sget-object p1, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_3

    .line 136
    :sswitch_data_1c
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x1388 -> :sswitch_19
        0x2710 -> :sswitch_7
        0x4e20 -> :sswitch_a
        0x7530 -> :sswitch_d
        0x9c40 -> :sswitch_10
        0xc350 -> :sswitch_13
        0x7fffffff -> :sswitch_16
    .end sparse-switch
.end method

.method public static toLevel(Ljava/lang/String;)Lorg/apache/log4j/Level;
    .registers 2
    .param p0, "sArg"    # Ljava/lang/String;

    .prologue
    .line 115
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p0, v0}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;
    .registers 4
    .param p0, "sArg"    # Ljava/lang/String;
    .param p1, "defaultLevel"    # Lorg/apache/log4j/Level;

    .prologue
    .line 157
    if-nez p0, :cond_3

    .line 174
    .end local p1    # "defaultLevel":Lorg/apache/log4j/Level;
    :cond_2
    :goto_2
    return-object p1

    .line 160
    .restart local p1    # "defaultLevel":Lorg/apache/log4j/Level;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "s":Ljava/lang/String;
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object p1, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    goto :goto_2

    .line 163
    :cond_12
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object p1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    goto :goto_2

    .line 164
    :cond_1d
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object p1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    goto :goto_2

    .line 165
    :cond_28
    const-string v1, "WARN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object p1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    goto :goto_2

    .line 166
    :cond_33
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    sget-object p1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    goto :goto_2

    .line 167
    :cond_3e
    const-string v1, "FATAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    sget-object p1, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    goto :goto_2

    .line 168
    :cond_49
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    sget-object p1, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    goto :goto_2

    .line 169
    :cond_54
    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    sget-object p1, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    goto :goto_2

    .line 173
    :cond_5f
    const-string v1, "\u0130NFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    goto :goto_2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 200
    iget v0, p0, Lorg/apache/log4j/Priority;->level:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 201
    iget v0, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 202
    iget-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 203
    return-void
.end method
