.class Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;
.super Ljava/lang/Object;
.source "GooglePlayIabPlugin.java"

# interfaces
.implements Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;


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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    .param p2, "result"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    .prologue
    .line 692
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Consumption finished with purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$0(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: Instance not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$1(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: Consuming: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_2
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->removeTransactionId(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 709
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: m_pendingPurchases is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    :cond_3
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 714
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "Consumption flow complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # invokes: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->continueConsumingPurchases()V
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$10(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
