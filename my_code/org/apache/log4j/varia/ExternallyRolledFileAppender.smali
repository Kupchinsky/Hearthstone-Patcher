.class public Lorg/apache/log4j/varia/ExternallyRolledFileAppender;
.super Lorg/apache/log4j/RollingFileAppender;
.source "ExternallyRolledFileAppender.java"


# static fields
.field public static final OK:Ljava/lang/String; = "OK"

.field public static final ROLL_OVER:Ljava/lang/String; = "RollOver"


# instance fields
.field hup:Lorg/apache/log4j/varia/HUP;

.field port:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/log4j/RollingFileAppender;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    .line 72
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 3

    .prologue
    .line 96
    invoke-super {p0}, Lorg/apache/log4j/FileAppender;->activateOptions()V

    .line 97
    iget v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    if-eqz v0, :cond_24

    .line 98
    iget-object v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->hup:Lorg/apache/log4j/varia/HUP;

    if-eqz v0, :cond_10

    .line 99
    iget-object v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->hup:Lorg/apache/log4j/varia/HUP;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 101
    :cond_10
    new-instance v0, Lorg/apache/log4j/varia/HUP;

    iget v1, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    invoke-direct {v0, p0, v1}, Lorg/apache/log4j/varia/HUP;-><init>(Lorg/apache/log4j/varia/ExternallyRolledFileAppender;I)V

    iput-object v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->hup:Lorg/apache/log4j/varia/HUP;

    .line 102
    iget-object v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->hup:Lorg/apache/log4j/varia/HUP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 103
    iget-object v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->hup:Lorg/apache/log4j/varia/HUP;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    :cond_24
    return-void
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    return v0
.end method

.method public setPort(I)V
    .registers 2
    .param p1, "port"    # I

    .prologue
    .line 80
    iput p1, p0, Lorg/apache/log4j/varia/ExternallyRolledFileAppender;->port:I

    .line 81
    return-void
.end method
