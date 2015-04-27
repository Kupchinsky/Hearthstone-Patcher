.class public Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;
.super Ljava/lang/Object;
.source "PendingTransactionsManager.java"


# static fields
.field private static final PENDING_THIRD_PARTY_RECEIPT_SUBMISSION_DELAY:I = 0xea60

.field private static final PENDING_TRANSACTIONS_RECORD_FILE:Ljava/lang/String; = "pendingTransactionsRecord.dat"

.field private static final TAG:Ljava/lang/String; = "PendingTransactionsManager"

.field private static s_instance:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;


# instance fields
.field private m_isPendingTransactionsLoaded:Z

.field private m_isSubmittingPendingPurchases:Z

.field private m_pendingTransactions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/blizzard/wtcg/hearthstone/PendingTransaction;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_pendingTransactionsLocked:Z

.field private m_submitNextPendingPurchaseHandler:Landroid/os/Handler;

.field private m_submitNextPendingPurchaseRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->s_instance:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseHandler:Landroid/os/Handler;

    .line 30
    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isSubmittingPendingPurchases:Z

    .line 31
    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isPendingTransactionsLoaded:Z

    .line 32
    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactionsLocked:Z

    .line 33
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    .line 237
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;-><init>(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseRunnable:Ljava/lang/Runnable;

    .line 43
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->load()V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactionsLocked:Z

    return v0
.end method

.method static synthetic access$1(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isSubmittingPendingPurchases:Z

    return-void
.end method

.method private containsTransactionId(Ljava/lang/String;)Z
    .locals 8
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v4, "PendingTransactionsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Checking if transaction Id exists: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isPendingTransactionsLoaded:Z

    if-nez v4, :cond_0

    .line 86
    const-string v4, "PendingTransactionsManager"

    const-string v5, "ERROR: Pending transactions have not been loaded"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return v3

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 90
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 91
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 93
    .local v2, "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;

    .line 94
    .local v1, "transaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    iget-object v7, v1, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 95
    const-string v5, "PendingTransactionsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Transaction is found for user: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->s_instance:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    invoke-direct {v0}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;-><init>()V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->s_instance:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    .line 39
    :cond_0
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->s_instance:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    return-object v0
.end method

.method private getTransactionId(Ljava/lang/String;)Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getTransactionId(Ljava/lang/String;Z)Lcom/blizzard/wtcg/hearthstone/PendingTransaction;

    move-result-object v0

    return-object v0
.end method

.method private getTransactionId(Ljava/lang/String;Z)Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    .locals 10
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "removeTransaction"    # Z

    .prologue
    .line 110
    const-string v4, "PendingTransactionsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get transaction Id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isPendingTransactionsLoaded:Z

    if-nez v4, :cond_0

    .line 113
    const-string v4, "PendingTransactionsManager"

    const-string v5, "ERROR: Pending transactions have not been loaded"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x0

    .line 146
    :goto_0
    return-object v1

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 118
    .local v1, "foundTransaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    monitor-enter v5

    .line 119
    :try_start_0
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 118
    :cond_2
    :goto_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 119
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 121
    .local v3, "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 133
    :goto_3
    if-eqz v1, :cond_1

    .line 134
    if-eqz p2, :cond_2

    .line 135
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactionsLocked:Z

    .line 136
    const-string v4, "PendingTransactionsManager"

    const-string v6, "Transaction is removed from user\'s transaction list"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->save()V

    .line 139
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactionsLocked:Z

    goto :goto_1

    .line 121
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;

    .line 122
    .local v2, "transaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    iget-object v4, v2, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    const-string v8, "PendingTransactionsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Transaction is found for user: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    move-result-object v4

    invoke-virtual {v4}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getBattleNetUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 125
    move-object v1, v2

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    const-string v4, "PendingTransactionsManager"

    const-string v7, "ERROR: Transaction is found is for a different user"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public addTransactionId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 150
    const-string v6, "PendingTransactionsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Adding transaction Id for user: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v6, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isPendingTransactionsLoaded:Z

    if-nez v6, :cond_0

    .line 153
    const-string v6, "PendingTransactionsManager"

    const-string v7, "ERROR: Pending transactions have not been loaded"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->containsTransactionId(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 158
    const-string v6, "PendingTransactionsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Transaction Id already exists: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    move-result-object v6

    invoke-virtual {v6}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getBattleNetUserId()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "battleNetUserId":Ljava/lang/String;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    move-result-object v6

    invoke-virtual {v6}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getIapPlugin()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;->getProductIds()Ljava/util/ArrayList;

    move-result-object v2

    .line 164
    .local v2, "productIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 165
    :cond_2
    const-string v6, "PendingTransactionsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to find transaction product Id ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") in product Id list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_3

    const-string v2, "null"

    .end local v2    # "productIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .restart local v2    # "productIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v3, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;

    invoke-direct {v3, p1, p2}, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v3, "transaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactionsLocked:Z

    .line 172
    const/4 v4, 0x0

    .line 173
    .local v4, "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    monitor-enter v7

    .line 174
    :try_start_0
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 176
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v4    # "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    .local v5, "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    :try_start_1
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 173
    .end local v5    # "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    .restart local v4    # "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    if-nez v4, :cond_6

    .line 184
    const-string v6, "PendingTransactionsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ERROR: Transaction list for user is null: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-boolean v9, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactionsLocked:Z

    goto/16 :goto_0

    .line 179
    :cond_5
    :try_start_3
    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 189
    :cond_6
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->save()V

    .line 193
    iput-boolean v9, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactionsLocked:Z

    goto/16 :goto_0

    .line 173
    .end local v4    # "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    .restart local v5    # "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    .restart local v4    # "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    goto :goto_2
.end method

.method public load()V
    .locals 7

    .prologue
    .line 47
    const-string v4, "PendingTransactionsManager"

    const-string v5, "Loading pending transactions record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    .local v0, "context":Landroid/content/Context;
    const-string v4, "pendingTransactionsRecord.dat"

    invoke-virtual {v0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 52
    .local v2, "fileIn":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v3, "inputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iput-object v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    .line 54
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "fileIn":Ljava/io/FileInputStream;
    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isPendingTransactionsLoaded:Z

    .line 65
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "PendingTransactionsManager"

    const-string v5, "Pending transactions record not found, creating new one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PendingTransactionsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERROR: Exception attempting to load pending transactions record: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public removeTransactionId(Ljava/lang/String;)V
    .locals 4
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v1, "PendingTransactionsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing transaction Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isPendingTransactionsLoaded:Z

    if-nez v1, :cond_1

    .line 201
    const-string v1, "PendingTransactionsManager"

    const-string v2, "ERROR: Pending transactions have not been loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getTransactionId(Ljava/lang/String;Z)Lcom/blizzard/wtcg/hearthstone/PendingTransaction;

    move-result-object v0

    .line 207
    .local v0, "foundTransaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    if-nez v0, :cond_0

    .line 208
    const-string v1, "PendingTransactionsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find transaction Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public save()V
    .locals 7

    .prologue
    .line 68
    const-string v4, "PendingTransactionsManager"

    const-string v5, "Saving pending transactions record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "context":Landroid/content/Context;
    const-string v4, "pendingTransactionsRecord.dat"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 73
    .local v1, "fileOut":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 74
    .local v3, "outputStream":Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 76
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "outputStream":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "i":Ljava/io/IOException;
    const-string v4, "PendingTransactionsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERROR: Exception attempting to save pending transactions record: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public submitNextPendingTransaction()V
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isSubmittingPendingPurchases:Z

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string v0, "PendingTransactionsManager"

    const-string v1, "Submitting to server next pending transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 296
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseHandler:Landroid/os/Handler;

    .line 298
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_isSubmittingPendingPurchases:Z

    .line 299
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public submitTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "gameObjectName"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;
    .param p3, "receiptData"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->submitTransaction(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public submitTransaction(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "isPending"    # Z
    .param p2, "gameObjectName"    # Ljava/lang/String;
    .param p3, "transactionId"    # Ljava/lang/String;
    .param p4, "receiptData"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v3, "PendingTransactionsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Submitting to server "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "pending "

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "transaction: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz p2, :cond_3

    .line 220
    invoke-direct {p0, p3}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getTransactionId(Ljava/lang/String;)Lcom/blizzard/wtcg/hearthstone/PendingTransaction;

    move-result-object v1

    .line 222
    .local v1, "foundTransaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    if-eqz v1, :cond_2

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_productId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "arguments":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 225
    const-string v2, "SubmitPendingTransaction"

    invoke-static {p2, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v0    # "arguments":Ljava/lang/String;
    .end local v1    # "foundTransaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    :goto_1
    return-void

    .line 217
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 227
    .restart local v0    # "arguments":Ljava/lang/String;
    .restart local v1    # "foundTransaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    :cond_1
    const-string v2, "OnPaymentTransactionStatePurchased"

    invoke-static {p2, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    .end local v0    # "arguments":Ljava/lang/String;
    :cond_2
    const-string v2, "PendingTransactionsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: Unable to find transaction Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 233
    .end local v1    # "foundTransaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    :cond_3
    const-string v2, "PendingTransactionsManager"

    const-string v3, "ERROR: gameObjectName is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
