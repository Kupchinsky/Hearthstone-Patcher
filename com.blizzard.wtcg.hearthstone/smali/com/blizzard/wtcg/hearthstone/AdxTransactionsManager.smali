.class public Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;
.super Ljava/lang/Object;
.source "AdxTransactionsManager.java"


# static fields
.field private static final ADX_TRANSACTIONS_RECORD_FILE:Ljava/lang/String; = "adxTransactionsRecord.dat"

.field private static final MAX_ADX_TRANSACTIONS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AdxTransactionsManager"

.field private static s_instance:Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;


# instance fields
.field private m_adxTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_isAdxTransactionsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->s_instance:Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_isAdxTransactionsLoaded:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->load()V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->s_instance:Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    invoke-direct {v0}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;-><init>()V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->s_instance:Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->s_instance:Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    return-object v0
.end method


# virtual methods
.method public addTransactionId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 6
    .param p1, "gameObjectName"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "price"    # D
    .param p6, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 98
    const-string v1, "AdxTransactionsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding transaction Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_isAdxTransactionsLoaded:Z

    if-nez v1, :cond_0

    .line 101
    const-string v1, "AdxTransactionsManager"

    const-string v2, "ERROR: Adx transactions have not been loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, p2}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->containsTransactionId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "AdxTransactionsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transaction Id already exists: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_1
    if-eqz p1, :cond_3

    .line 109
    const-string v1, "%.02f|%s|%s|%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p6, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "arguments":Ljava/lang/String;
    const-string v1, "TrackGamePurchaseTransaction"

    invoke-static {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "AdxTransactionsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Submitting adx transaction with arguments: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    .line 118
    const-string v1, "AdxTransactionsManager"

    const-string v2, "Max adx transactions hit, removing a transaction..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    monitor-enter v2

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 121
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    monitor-enter v2

    .line 128
    :try_start_1
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->save()V

    goto :goto_0

    .line 113
    .end local v0    # "arguments":Ljava/lang/String;
    :cond_3
    const-string v1, "AdxTransactionsManager"

    const-string v2, "ERROR: gameObjectName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .restart local v0    # "arguments":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 127
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public containsTransactionId(Ljava/lang/String;)Z
    .locals 4
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 80
    const-string v1, "AdxTransactionsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking if transaction Id exists: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_isAdxTransactionsLoaded:Z

    if-nez v1, :cond_0

    .line 83
    const-string v1, "AdxTransactionsManager"

    const-string v2, "ERROR: Adx transactions have not been loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v0, "AdxTransactionsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transaction is found for user: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public load()V
    .locals 7

    .prologue
    .line 42
    const-string v4, "AdxTransactionsManager"

    const-string v5, "Loading adx transactions record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :try_start_0
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    const-string v4, "adxTransactionsRecord.dat"

    invoke-virtual {v0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 47
    .local v2, "fileIn":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    .local v3, "inputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    .line 49
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 50
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "fileIn":Ljava/io/FileInputStream;
    .end local v3    # "inputStream":Ljava/io/ObjectInputStream;
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_isAdxTransactionsLoaded:Z

    .line 60
    :goto_1
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "AdxTransactionsManager"

    const-string v5, "Adx transactions record not found, creating new one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    goto :goto_0

    .line 54
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AdxTransactionsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERROR: Exception attempting to load adx transactions record: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public save()V
    .locals 7

    .prologue
    .line 63
    const-string v4, "AdxTransactionsManager"

    const-string v5, "Saving adx transactions record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :try_start_0
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "context":Landroid/content/Context;
    const-string v4, "adxTransactionsRecord.dat"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 68
    .local v1, "fileOut":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    .local v3, "outputStream":Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->m_adxTransactions:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 71
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "outputStream":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "i":Ljava/io/IOException;
    const-string v4, "AdxTransactionsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ERROR: Exception attempting to save adx transactions record: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
