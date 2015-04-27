.class public Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
.super Ljava/lang/Object;
.source "PendingTransaction.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public m_isSubmitted:Z

.field public m_lastUpdate:Ljava/util/Date;

.field public m_productId:Ljava/lang/String;

.field public m_transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_productId:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_isSubmitted:Z

    .line 16
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_productId:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 21
    instance-of v1, p1, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;

    if-nez v1, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 24
    check-cast v0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;

    .line 25
    .local v0, "other":Lcom/blizzard/wtcg/hearthstone/PendingTransaction;
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/PendingTransaction;->m_transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
