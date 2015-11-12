.class public Lorg/simpleframework/util/lease/LeaseMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "LeaseMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<TT;",
        "Lorg/simpleframework/util/lease/Lease",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseMap;, "Lorg/simpleframework/util/lease/LeaseMap<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 53
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseMap;, "Lorg/simpleframework/util/lease/LeaseMap<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseMap;, "Lorg/simpleframework/util/lease/LeaseMap<TT;>;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/util/lease/LeaseMap;->get(Ljava/lang/Object;)Lorg/simpleframework/util/lease/Lease;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/simpleframework/util/lease/Lease;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseMap;, "Lorg/simpleframework/util/lease/LeaseMap<TT;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/util/lease/Lease;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseMap;, "Lorg/simpleframework/util/lease/LeaseMap<TT;>;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/util/lease/LeaseMap;->remove(Ljava/lang/Object;)Lorg/simpleframework/util/lease/Lease;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lorg/simpleframework/util/lease/Lease;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/simpleframework/util/lease/LeaseMap;, "Lorg/simpleframework/util/lease/LeaseMap<TT;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/util/lease/Lease;

    return-object v0
.end method
