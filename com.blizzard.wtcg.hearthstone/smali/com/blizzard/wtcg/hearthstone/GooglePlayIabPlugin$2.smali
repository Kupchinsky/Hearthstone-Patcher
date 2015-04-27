.class Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;
.super Ljava/lang/Object;
.source "GooglePlayIabPlugin.java"

# interfaces
.implements Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;


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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V
    .locals 4
    .param p1, "result"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    .param p2, "info"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;

    .prologue
    .line 641
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase finished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$0(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: Instance not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$1(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: Purchasing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$4(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$4(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnPaymentTransactionStateFailed"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # invokes: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->verifyDeveloperPayload(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)Z
    invoke-static {v0, p2}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$6(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 663
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: Purchasing: Authenticity verification failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :cond_3
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "Purchase successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->addTransactionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 673
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: m_pendingPurchases is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$4(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->submitTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # invokes: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->continueConsumingPurchases()V
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$10(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V

    goto/16 :goto_0

    .line 677
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
