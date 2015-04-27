.class Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin$1;
.super Ljava/lang/Object;
.source "AmazonIapPlugin.java"

# interfaces
.implements Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin$1;->this$0:Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_productIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReceipt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 46
    return-object p1
.end method
