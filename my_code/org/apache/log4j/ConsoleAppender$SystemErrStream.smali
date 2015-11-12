.class Lorg/apache/log4j/ConsoleAppender$SystemErrStream;
.super Ljava/io/OutputStream;
.source "ConsoleAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/ConsoleAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemErrStream"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 167
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 173
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 174
    return-void
.end method

.method public write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->write(I)V

    .line 187
    return-void
.end method

.method public write([B)V
    .registers 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/FilterOutputStream;->write([B)V

    .line 178
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PrintStream;->write([BII)V

    .line 183
    return-void
.end method
