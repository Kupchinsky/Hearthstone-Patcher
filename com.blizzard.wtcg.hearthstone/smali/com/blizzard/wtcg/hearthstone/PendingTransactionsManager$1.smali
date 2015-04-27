.class Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;
.super Ljava/lang/Object;
.source "PendingTransactionsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/32 v10, 0xea60

    const/4 v9, 0x0

    .line 240
    const-string v7, "PendingTransactionsManager"

    const-string v8, "Runnable: Submitting to server next pending transaction"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    # getter for: Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactionsLocked:Z
    invoke-static {v7}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$0(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 243
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    # getter for: Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$1(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    # getter for: Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$2(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    const-string v7, "PendingTransactionsManager"

    const-string v8, "Pending transactions is being modified, attempting submission later"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-void

    .line 248
    :cond_0
    const/4 v5, 0x0

    .line 251
    .local v5, "transaction":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    move-result-object v7

    invoke-virtual {v7}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getBattleNetUserId()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "battleNetUserId":Ljava/lang/String;
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    # getter for: Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;
    invoke-static {v7}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$3(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Ljava/util/Map;

    move-result-object v8

    monitor-enter v8

    .line 253
    :try_start_0
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    # getter for: Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_pendingTransactions:Ljava/util/Map;
    invoke-static {v7}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$3(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 254
    .local v6, "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 255
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;

    move-object v5, v0

    .line 252
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    if-eqz v5, :cond_4

    .line 261
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    move-result-object v7

    invoke-virtual {v7}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getIapPlugin()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;->getGameObject()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "gameObject":Ljava/lang/String;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    move-result-object v7

    invoke-virtual {v7}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getIapPlugin()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    move-result-object v7

    iget-object v8, v5, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;->getReceipt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "receiptData":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 265
    const-string v7, "PendingTransactionsManager"

    const-string v8, "ERROR: gameObjectName is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    invoke-static {v7, v9}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$4(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;Z)V

    goto :goto_0

    .line 252
    .end local v3    # "gameObject":Ljava/lang/String;
    .end local v4    # "receiptData":Ljava/lang/String;
    .end local v6    # "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 270
    .restart local v3    # "gameObject":Ljava/lang/String;
    .restart local v4    # "receiptData":Ljava/lang/String;
    .restart local v6    # "transactionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/blizzard/wtcg/hearthstone/PendingTransaction;>;"
    :cond_2
    if-nez v4, :cond_3

    .line 271
    const-string v7, "PendingTransactionsManager"

    const-string v8, "ERROR: receiptData is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    invoke-static {v7, v9}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$4(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;Z)V

    goto :goto_0

    .line 276
    :cond_3
    const-string v7, "PendingTransactionsManager"

    const-string v8, "Found next pending transaction"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    const/4 v8, 0x1

    iget-object v9, v5, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    invoke-virtual {v7, v8, v3, v9, v4}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->submitTransaction(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    # getter for: Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$1(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    # getter for: Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->m_submitNextPendingPurchaseRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$2(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 282
    .end local v3    # "gameObject":Ljava/lang/String;
    .end local v4    # "receiptData":Ljava/lang/String;
    :cond_4
    const-string v7, "PendingTransactionsManager"

    const-string v8, "No pending transactions found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v7, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager$1;->this$0:Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    invoke-static {v7, v9}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->access$4(Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;Z)V

    goto/16 :goto_0
.end method
