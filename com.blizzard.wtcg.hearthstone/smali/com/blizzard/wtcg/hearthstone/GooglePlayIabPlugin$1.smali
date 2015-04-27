.class Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;
.super Ljava/lang/Object;
.source "GooglePlayIabPlugin.java"

# interfaces
.implements Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;)V
    .locals 12
    .param p1, "result"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    .param p2, "inv"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    .prologue
    .line 541
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "Query inventory finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$0(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: Instance not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$1(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    invoke-static {v0, p2}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$2(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;)V

    .line 554
    invoke-virtual {p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: Failed to query inventory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    :cond_2
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "Query inventory successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$3(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$3(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$4(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$5(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    move-result-object v1

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$3(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;

    move-result-object v10

    .line 568
    .local v10, "skuDetails":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;
    const-string v7, ""

    .line 569
    .local v7, "currencyCode":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 570
    invoke-virtual {v10}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v7

    .line 573
    :cond_3
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Price currency code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$4(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnReceivedProductInfo"

    invoke-static {v0, v1, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .end local v7    # "currencyCode":Ljava/lang/String;
    .end local v10    # "skuDetails":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;
    :cond_4
    const/4 v8, 0x0

    .line 587
    .local v8, "existingPurchasesFound":Z
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$3(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 618
    if-eqz v8, :cond_6

    .line 619
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->submitNextPendingTransaction()V

    .line 623
    :cond_6
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$8(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 624
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$8(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 629
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$9(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Ljava/util/ArrayList;)V

    .line 632
    :cond_7
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # invokes: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->continueConsumingPurchases()V
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$10(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V

    goto/16 :goto_0

    .line 587
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 588
    .local v3, "productId":Ljava/lang/String;
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$5(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;

    move-result-object v9

    .line 589
    .local v9, "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    if-eqz v9, :cond_5

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # invokes: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->verifyDeveloperPayload(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)Z
    invoke-static {v1, v9}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$6(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 590
    const-string v1, "GooglePlayIabPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Purchase found: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v1

    invoke-virtual {v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->addTransactionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    .line 596
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "m_pendingPurchases is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 600
    :cond_9
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 601
    :try_start_0
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 602
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_a
    monitor-exit v1

    .line 605
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 624
    .end local v3    # "productId":Ljava/lang/String;
    .end local v9    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;

    .line 625
    .restart local v9    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    invoke-virtual {v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 626
    .restart local v3    # "productId":Ljava/lang/String;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$4(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    invoke-virtual {v4, v3}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->priceForProductId(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    invoke-virtual {v6, v3}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->currencyCodeForProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->addTransactionId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto/16 :goto_2
.end method
