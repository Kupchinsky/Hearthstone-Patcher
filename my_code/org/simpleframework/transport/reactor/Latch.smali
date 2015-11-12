.class Lorg/simpleframework/transport/reactor/Latch;
.super Ljava/util/concurrent/CountDownLatch;
.source "Latch.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lorg/simpleframework/transport/reactor/Latch;->await()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 70
    return-void

    .line 67
    :catch_4
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Thread interrupted"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public signal()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Lorg/simpleframework/transport/reactor/Latch;->countDown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 56
    return-void

    .line 53
    :catch_4
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Thread interrupted"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
