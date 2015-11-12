.class public Lcom/turn/ttorrent/client/peer/Rate;
.super Ljava/lang/Object;
.source "Rate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/client/peer/Rate$1;,
        Lcom/turn/ttorrent/client/peer/Rate$RateComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/turn/ttorrent/client/peer/Rate;",
        ">;"
    }
.end annotation


# static fields
.field public static final RATE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/turn/ttorrent/client/peer/Rate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bytes:J

.field private last:J

.field private reset:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    new-instance v0, Lcom/turn/ttorrent/client/peer/Rate$RateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/turn/ttorrent/client/peer/Rate$RateComparator;-><init>(Lcom/turn/ttorrent/client/peer/Rate$1;)V

    sput-object v0, Lcom/turn/ttorrent/client/peer/Rate;->RATE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->bytes:J

    .line 39
    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->reset:J

    .line 40
    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->last:J

    .line 102
    return-void
.end method


# virtual methods
.method public declared-synchronized add(J)V
    .registers 8
    .param p1, "count"    # J

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->bytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->bytes:J

    .line 49
    iget-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->reset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->reset:J

    .line 52
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->last:J
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 53
    monitor-exit p0

    return-void

    .line 48
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compareTo(Lcom/turn/ttorrent/client/peer/Rate;)I
    .registers 3
    .param p1, "other"    # Lcom/turn/ttorrent/client/peer/Rate;

    .prologue
    .line 82
    sget-object v0, Lcom/turn/ttorrent/client/peer/Rate;->RATE_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Lcom/turn/ttorrent/client/peer/Rate;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/turn/ttorrent/client/peer/Rate;->compareTo(Lcom/turn/ttorrent/client/peer/Rate;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized get()F
    .registers 7

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->last:J

    iget-wide v2, p0, Lcom/turn/ttorrent/client/peer/Rate;->reset:J
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->bytes:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/turn/ttorrent/client/peer/Rate;->last:J

    iget-wide v4, p0, Lcom/turn/ttorrent/client/peer/Rate;->reset:J
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1d

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_d

    .line 64
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    .prologue
    .line 75
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->bytes:J

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->reset:J

    .line 77
    iget-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->reset:J

    iput-wide v0, p0, Lcom/turn/ttorrent/client/peer/Rate;->last:J
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 78
    monitor-exit p0

    return-void

    .line 75
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
