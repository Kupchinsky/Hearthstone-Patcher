.class Lorg/simpleframework/util/lease/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Lorg/simpleframework/util/lease/Contract;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/util/lease/Contract",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile time:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p2, "lease"    # J
    .param p4, "scale"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/simpleframework/util/lease/Entry;, "Lorg/simpleframework/util/lease/Entry<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0}, Lorg/simpleframework/util/lease/Entry;->getTime()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/simpleframework/util/lease/Entry;->time:J

    .line 58
    iput-object p1, p0, Lorg/simpleframework/util/lease/Entry;->key:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private compareTo(Lorg/simpleframework/util/lease/Entry;)I
    .registers 10
    .param p1, "entry"    # Lorg/simpleframework/util/lease/Entry;

    .prologue
    .local p0, "this":Lorg/simpleframework/util/lease/Entry;, "Lorg/simpleframework/util/lease/Entry<TT;>;"
    const-wide/16 v6, 0x0

    .line 142
    iget-wide v2, p0, Lorg/simpleframework/util/lease/Entry;->time:J

    iget-wide v4, p1, Lorg/simpleframework/util/lease/Entry;->time:J

    sub-long v0, v2, v4

    .line 144
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_e

    .line 145
    const/4 v2, -0x1

    .line 149
    :goto_d
    return v2

    .line 146
    :cond_e
    cmp-long v2, v0, v6

    if-lez v2, :cond_14

    .line 147
    const/4 v2, 0x1

    goto :goto_d

    .line 149
    :cond_14
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private getTime()J
    .registers 3

    .prologue
    .line 109
    .local p0, "this":Lorg/simpleframework/util/lease/Entry;, "Lorg/simpleframework/util/lease/Entry<TT;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lorg/simpleframework/util/lease/Entry;, "Lorg/simpleframework/util/lease/Entry<TT;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/util/lease/Entry;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .registers 4
    .param p1, "other"    # Ljava/util/concurrent/Delayed;

    .prologue
    .line 123
    .local p0, "this":Lorg/simpleframework/util/lease/Entry;, "Lorg/simpleframework/util/lease/Entry<TT;>;"
    move-object v0, p1

    check-cast v0, Lorg/simpleframework/util/lease/Entry;

    .line 125
    .local v0, "entry":Lorg/simpleframework/util/lease/Entry;
    if-ne p1, p0, :cond_7

    .line 126
    const/4 v1, 0x0

    .line 128
    :goto_6
    return v1

    :cond_7
    invoke-direct {p0, v0}, Lorg/simpleframework/util/lease/Entry;->compareTo(Lorg/simpleframework/util/lease/Entry;)I

    move-result v1

    goto :goto_6
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .registers 6
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 83
    .local p0, "this":Lorg/simpleframework/util/lease/Entry;, "Lorg/simpleframework/util/lease/Entry<TT;>;"
    iget-wide v0, p0, Lorg/simpleframework/util/lease/Entry;->time:J

    invoke-direct {p0}, Lorg/simpleframework/util/lease/Entry;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/simpleframework/util/lease/Entry;, "Lorg/simpleframework/util/lease/Entry<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/util/lease/Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public setDelay(JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 97
    .local p0, "this":Lorg/simpleframework/util/lease/Entry;, "Lorg/simpleframework/util/lease/Entry<TT;>;"
    invoke-direct {p0}, Lorg/simpleframework/util/lease/Entry;->getTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/simpleframework/util/lease/Entry;->time:J

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 161
    .local p0, "this":Lorg/simpleframework/util/lease/Entry;, "Lorg/simpleframework/util/lease/Entry<TT;>;"
    const-string v0, "contract %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/util/lease/Entry;->key:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
