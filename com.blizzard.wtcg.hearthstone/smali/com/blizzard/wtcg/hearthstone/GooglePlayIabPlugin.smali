.class public Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;
.super Ljava/lang/Object;
.source "GooglePlayIabPlugin.java"

# interfaces
.implements Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;,
        Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;
    }
.end annotation


# static fields
.field private static final RC_REQUEST:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "GooglePlayIabPlugin"

.field private static s_instance:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;


# instance fields
.field private m_activity:Landroid/app/Activity;

.field m_consumeFinishedListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;

.field private m_gameObjectName:Ljava/lang/String;

.field private m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

.field private m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

.field m_inventoryListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;

.field private m_isHelperSetupInProgress:Z

.field private m_isInitialized:Z

.field private m_pendingAdxTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private m_pendingPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private m_productIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_purchaseFinishedListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

.field private m_queuedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private m_toBeConsumedPurchases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    .line 41
    iput-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isHelperSetupInProgress:Z

    .line 48
    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_activity:Landroid/app/Activity;

    .line 50
    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    .line 537
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$1;-><init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventoryListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;

    .line 637
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$2;-><init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_purchaseFinishedListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 688
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$3;-><init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_consumeFinishedListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    return v0
.end method

.method static synthetic access$1(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->continueConsumingPurchases()V

    return-void
.end method

.method static synthetic access$11(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isHelperSetupInProgress:Z

    return-void
.end method

.method static synthetic access$12(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_queuedEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    return-void
.end method

.method static synthetic access$3(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    return-object v0
.end method

.method static synthetic access$6(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)Z
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->verifyDeveloperPayload(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 761
    const-string v1, ""

    .line 762
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 766
    return-object v1

    .line 763
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 764
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 763
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private continueConsumingPurchases()V
    .locals 5

    .prologue
    .line 480
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_toBeConsumedPurchases:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 481
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_toBeConsumedPurchases:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string v3, "GooglePlayIabPlugin"

    const-string v4, "continueConsumingPurchases"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v2, 0x0

    .line 489
    .local v2, "orderId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 490
    .local v1, "isSuccess":Z
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_toBeConsumedPurchases:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 495
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_toBeConsumedPurchases:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {p0, v2, v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->consumePurchaseWithOrderId(Ljava/lang/String;Z)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 491
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "orderId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 492
    .restart local v2    # "orderId":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1
.end method

.method public static getInstance()Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    invoke-direct {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;-><init>()V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    .line 90
    :cond_0
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    return-object v0
.end method

.method private static getObfuscatedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x2

    .line 73
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    aput-byte v1, v0, v3

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, -0xf

    aput-byte v1, v0, v4

    invoke-static {p0, v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->getObfuscatedString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getObfuscatedString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "salt"    # [B

    .prologue
    .line 78
    invoke-static {p0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 79
    .local v1, "stringBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 83
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 81
    :cond_0
    aget-byte v2, v1, v0

    array-length v3, p1

    rem-int v3, v0, v3

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getPublicKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    const-string v0, "594736424b6d1ebf566914716a6c36b62d794f4243561ab7554f3043435667b059473642416014b2555f3a4168456da756361a6d583e1287764d3e577b35368675654a4d4b44348647613344467d0f81525614756c4374c57d7d346f344d3dc626622c504773379d2644507a36740dba44404f2f5063119d794a505852611ba15b57493870402d966c3c0943357d16b7774d1565465070bf585e0a56636e0b952d4307757b5266c659743835755f2d866d215442753166bb7a583342402c2aa74e4f356f6c6331bb276313302d4a3a9f783b4f50303710c7205b4b2b607f2fa046632f61546618b251594832306c66877a4c254a337315c2473e2e3636656f832d564f6946623ac55a662569457d74b2766c2d6a4f4b09c0656c3a6b737d0a9a737d2c6230541da8203e0b6a74411799613c11697b450db7677c0d476f636cbb52461853766e1e85644b1c536b30078b72420b6d6f3e6ba664633136717d0e9f613d06474d631db44d6d1a5466723ab462674a384b6b35a23f391a3172512c9b595f364443561eb3"

    .line 68
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->getObfuscatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 770
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 771
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 772
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 776
    return-object v0

    .line 773
    :cond_0
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 774
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    .line 773
    aput-byte v4, v0, v3

    .line 772
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private verifyDeveloperPayload(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)Z
    .locals 3
    .param p1, "p"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;

    .prologue
    .line 196
    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v1, :cond_0

    .line 197
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "ERROR: Instance not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, 0x0

    .line 226
    :goto_0
    return v1

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "payload":Ljava/lang/String;
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addProductId(Ljava/lang/String;)V
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding product Id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v0, :cond_1

    .line 248
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: Instance not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearProductIds()V
    .locals 2

    .prologue
    .line 230
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "Clearing product Ids"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v0, :cond_0

    .line 233
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: Instance not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public consumePurchaseWithOrderId(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 416
    const-string v1, "GooglePlayIabPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Consuming purchase with order Id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v0, :cond_1

    .line 419
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: Instance not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_1
    return-void

    .line 416
    :cond_0
    const-string v0, "false"

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    if-nez v0, :cond_2

    .line 425
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: m_helper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 430
    :cond_2
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isHelperSetupInProgress:Z

    if-eqz v0, :cond_3

    .line 431
    new-instance v7, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;-><init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;)V

    .line 432
    .local v7, "event":Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->CONSUME_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    iput-object v0, v7, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_eventType:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    .line 433
    iput-object p1, v7, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_orderId:Ljava/lang/String;

    .line 434
    iput-boolean p2, v7, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_isSuccess:Z

    .line 435
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_queuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v7    # "event":Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;
    :cond_3
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    if-nez v0, :cond_4

    .line 439
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: m_pendingPurchases is NULL, Unable to find purchase with order Id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 443
    :cond_4
    const/4 v9, 0x0

    .line 444
    .local v9, "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 444
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    if-nez v9, :cond_7

    .line 454
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: Unable to find purchase with order Id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 445
    :cond_6
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;

    .line 446
    .local v8, "pendingPurchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    invoke-virtual {v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 447
    move-object v9, v8

    .line 448
    goto :goto_2

    .line 444
    .end local v8    # "pendingPurchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 458
    :cond_7
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->isAsyncInProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 459
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "m_helper async in progress, adding purchase to to be consumed list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_toBeConsumedPurchases:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 462
    :cond_9
    if-eqz p2, :cond_b

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->containsTransactionId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 463
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    if-nez v0, :cond_c

    .line 464
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "Inventory not yet set, saving purchase for adx tracking..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    .line 468
    :cond_a
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_consumeFinishedListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, v9, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->consumeAsync(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;)V

    goto/16 :goto_1

    .line 470
    :cond_c
    invoke-virtual {v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "productId":Ljava/lang/String;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->priceForProductId(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v3}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->currencyCodeForProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->addTransactionId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_4
.end method

.method public currencyCodeForProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v2, "GooglePlayIabPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetching currency code for product Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-boolean v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v2, :cond_0

    .line 357
    const-string v2, "GooglePlayIabPlugin"

    const-string v3, "ERROR: Instance not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, ""

    .line 372
    :goto_0
    return-object v0

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    if-nez v2, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 363
    :cond_1
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    invoke-virtual {v2, p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;

    move-result-object v1

    .line 365
    .local v1, "skuDetails":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;
    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "currencyCode":Ljava/lang/String;
    const-string v2, "GooglePlayIabPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Currency code for product Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currenyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    .end local v0    # "currencyCode":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getGameObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

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
    .line 735
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReceipt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 740
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    if-nez v2, :cond_0

    .line 741
    const-string v2, "GooglePlayIabPlugin"

    const-string v3, "ERROR: m_pendingPurchases is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_0
    return-object v1

    .line 745
    :cond_0
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    monitor-enter v2

    .line 746
    :try_start_0
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 747
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 745
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 747
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;

    .line 748
    .local v0, "pendingPurchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 749
    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 178
    const-string v1, "GooglePlayIabPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleActivityResult("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v1, :cond_1

    .line 181
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "ERROR: Instance not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 94
    const-string v1, "GooglePlayIabPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "ERROR: Instance already initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_activity:Landroid/app/Activity;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_queuedEvents:Ljava/util/ArrayList;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_toBeConsumedPurchases:Ljava/util/HashMap;

    .line 109
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "Creating IAB helper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "base64EncodedPublicKey":Ljava/lang/String;
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    .line 114
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    invoke-virtual {v1, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->enableDebugLogging(Z)V

    .line 116
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "Starting IAB helper setup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isHelperSetupInProgress:Z

    .line 118
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    new-instance v2, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;

    invoke-direct {v2, p0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$4;-><init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V

    invoke-virtual {v1, v2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->startSetup(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 151
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->setIapPlugin(Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;)V

    .line 153
    iput-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    goto :goto_0
.end method

.method public localizedPriceForProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string v2, "GooglePlayIabPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetching localized price for product Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-boolean v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v2, :cond_0

    .line 324
    const-string v2, "GooglePlayIabPlugin"

    const-string v3, "ERROR: Instance not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v0, ""

    .line 350
    :goto_0
    return-object v0

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    if-nez v2, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    invoke-virtual {v2, p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;

    move-result-object v1

    .line 332
    .local v1, "skuDetails":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;
    if-eqz v1, :cond_2

    .line 333
    invoke-virtual {v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "localizedPrice":Ljava/lang/String;
    goto :goto_0

    .line 350
    .end local v0    # "localizedPrice":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public priceForProductId(Ljava/lang/String;)D
    .locals 8
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 298
    const-string v4, "GooglePlayIabPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fetching price for product Id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-boolean v4, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v4, :cond_1

    .line 301
    const-string v4, "GooglePlayIabPlugin"

    const-string v5, "ERROR: Instance not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    :goto_0
    return-wide v0

    .line 305
    :cond_1
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    if-eqz v4, :cond_0

    .line 307
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    invoke-virtual {v4, p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;

    move-result-object v2

    .line 309
    .local v2, "skuDetails":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;
    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;->getPriceAmountMicros()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "strPrice":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double v0, v4, v6

    .line 313
    .local v0, "price":D
    const-string v4, "GooglePlayIabPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Price for product Id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", price: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public purchaseProductId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 376
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching purchase flow for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v0, :cond_0

    .line 379
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: Instance not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string v5, ""

    .line 388
    .local v5, "payload":Ljava/lang/String;
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    if-nez v0, :cond_1

    .line 389
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: Halting purchase flow: IAB helper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_1
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isHelperSetupInProgress:Z

    if-nez v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->isAsyncInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "ERROR: m_helper async in progress when attempting to launchPurchaseFlow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_activity:Landroid/app/Activity;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_purchaseFinishedListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_3
    new-instance v6, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;-><init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;)V

    .line 409
    .local v6, "event":Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->LAUNCH_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    iput-object v0, v6, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_eventType:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    .line 410
    iput-object p1, v6, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_productId:Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_queuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryInventory()V
    .locals 5

    .prologue
    .line 264
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "Querying inventory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    if-nez v1, :cond_0

    .line 267
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "ERROR: Instance not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    if-nez v1, :cond_1

    .line 272
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "ERROR: m_helper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 277
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "ERROR: m_gameObjectName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_2
    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isHelperSetupInProgress:Z

    if-nez v1, :cond_4

    .line 282
    const-string v1, "GooglePlayIabPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "m_products: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    invoke-virtual {v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->isAsyncInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    const-string v1, "GooglePlayIabPlugin"

    const-string v2, "ERROR: m_helper async in progress when attempting to queryInventory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_3
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventoryListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0

    .line 291
    :cond_4
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;-><init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;)V

    .line 292
    .local v0, "event":Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;
    sget-object v1, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->QUERY_INVENTORY:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    iput-object v1, v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_eventType:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    .line 293
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_queuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryInventory(Ljava/lang/String;)V
    .locals 3
    .param p1, "gameObjectName"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v0, "GooglePlayIabPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Querying inventory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->queryInventory()V

    .line 261
    return-void
.end method

.method public requestingPendingPurchase(Ljava/lang/String;)V
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 502
    const-string v2, "GooglePlayIabPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requesting pending purchase with product Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    if-nez v2, :cond_1

    .line 505
    const-string v2, "GooglePlayIabPlugin"

    const-string v3, "m_pendingPurchases is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const/4 v1, 0x0

    .line 510
    .local v1, "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    monitor-enter v3

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 510
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    if-nez v1, :cond_4

    .line 520
    const-string v2, "GooglePlayIabPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find purchase with product Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

    const-string v3, "NoThirdPartyReceipt"

    invoke-static {v2, v3, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;

    .line 512
    .local v0, "pendingPurchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 513
    move-object v1, v0

    .line 514
    goto :goto_1

    .line 510
    .end local v0    # "pendingPurchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 529
    :cond_4
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->submitTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 157
    const-string v0, "GooglePlayIabPlugin"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->dispose()V

    .line 161
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_helper:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;

    .line 163
    iput-boolean v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isHelperSetupInProgress:Z

    .line 166
    :cond_0
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_queuedEvents:Ljava/util/ArrayList;

    .line 167
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_productIds:Ljava/util/ArrayList;

    .line 168
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_inventory:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    .line 169
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingPurchases:Ljava/util/List;

    .line 170
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_gameObjectName:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_activity:Landroid/app/Activity;

    .line 172
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    .line 174
    iput-boolean v3, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;->m_isInitialized:Z

    .line 175
    return-void
.end method
