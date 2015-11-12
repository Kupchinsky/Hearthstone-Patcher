.class public Lorg/apache/log4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# static fields
.field static final HT_SIZE:I = 0x7

.field static final mdc:Lorg/apache/log4j/MDC;


# instance fields
.field java1:Z

.field tlm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;-><init>()V

    sput-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->isJava1()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    .line 56
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_14

    .line 57
    new-instance v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    .line 59
    :cond_14
    return-void
.end method

.method public static clear()V
    .registers 1

    .prologue
    .line 123
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_9

    .line 124
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;->clear0()V

    .line 126
    :cond_9
    return-void
.end method

.method private clear0()V
    .registers 3

    .prologue
    .line 179
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-eqz v1, :cond_17

    .line 180
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 181
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_17

    .line 182
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 185
    .end local v0    # "ht":Ljava/util/Hashtable;
    :cond_17
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_b

    .line 87
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->get0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private get0(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v1, :cond_b

    :cond_9
    move-object v1, v2

    .line 152
    :goto_a
    return-object v1

    .line 148
    :cond_b
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 149
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 150
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    :cond_1e
    move-object v1, v2

    .line 152
    goto :goto_a
.end method

.method public static getContext()Ljava/util/Hashtable;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_b

    .line 112
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;->getContext0()Ljava/util/Hashtable;

    move-result-object v0

    .line 114
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getContext0()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 171
    :cond_8
    const/4 v0, 0x0

    .line 173
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    goto :goto_9
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 73
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_9

    .line 74
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/MDC;->put0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    :cond_9
    return-void
.end method

.method private put0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 131
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v1, :cond_9

    .line 141
    :cond_8
    :goto_8
    return-void

    .line 134
    :cond_9
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 135
    .local v0, "ht":Ljava/util/Hashtable;
    if-nez v0, :cond_22

    .line 136
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "ht":Ljava/util/Hashtable;
    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 137
    .restart local v0    # "ht":Ljava/util/Hashtable;
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    :cond_22
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public static remove(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_9

    .line 101
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->remove0(Ljava/lang/String;)V

    .line 103
    :cond_9
    return-void
.end method

.method private remove0(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-eqz v1, :cond_17

    .line 160
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 161
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_17

    .line 162
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v0    # "ht":Ljava/util/Hashtable;
    :cond_17
    return-void
.end method
