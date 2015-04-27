.class Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;
.super Ljava/lang/Object;
.source "GooglePlayIabPlugin.java"

# interfaces
.implements Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->init(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;)V
    .locals 5
    .param p1, "result"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    .prologue
    .line 120
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "IAB setup finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    const-string v1, "GooglePlayIabPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: Problem setting up IAP: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$1(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$11(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Z)V

    .line 133
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "IAP setup successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "Processing queued events..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_queuedEvents:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$12(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    # getter for: Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_queuedEvents:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->access$12(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 136
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;

    .line 137
    .local v0, "event":Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;
    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_eventType:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->QUERY_INVENTORY:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    if-ne v2, v3, :cond_3

    .line 138
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    invoke-virtual {v2}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->queryInventory()V

    goto :goto_1

    .line 139
    :cond_3
    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_eventType:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->CONSUME_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    if-ne v2, v3, :cond_4

    .line 140
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    iget-object v3, v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_orderId:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_isSuccess:Z

    invoke-virtual {v2, v3, v4}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->consumePurchaseWithOrderId(Ljava/lang/String;Z)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_eventType:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    sget-object v3, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->LAUNCH_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    if-ne v2, v3, :cond_5

    .line 142
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    iget-object v3, v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_productId:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->purchaseProductId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_5
    const-string v2, "GooglePlayIabPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: Unhandled event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_eventType:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
