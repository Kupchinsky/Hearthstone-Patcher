.class public final Lorg/apache/log4j/helpers/ThreadLocalMap;
.super Ljava/lang/InheritableThreadLocal;
.source "ThreadLocalMap.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "parentValue"    # Ljava/lang/Object;

    .prologue
    .line 35
    move-object v0, p1

    check-cast v0, Ljava/util/Hashtable;

    .line 36
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_a

    .line 37
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    .line 39
    :goto_9
    return-object v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method
