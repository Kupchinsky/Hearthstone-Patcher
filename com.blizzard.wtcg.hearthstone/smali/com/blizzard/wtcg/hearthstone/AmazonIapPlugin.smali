.class public Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;
.super Ljava/lang/Object;
.source "AmazonIapPlugin.java"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$ProductDataResponse$RequestStatus:[I = null

.field private static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$ProductType:[I = null

.field private static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$PurchaseResponse$RequestStatus:[I = null

.field private static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus:[I = null

.field private static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$UserDataResponse$RequestStatus:[I = null

.field private static final TAG:Ljava/lang/String; = "AmazonIapPlugin"

.field private static s_instance:Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;


# instance fields
.field private m_amazonMarketplace:Ljava/lang/String;

.field private m_amazonMarketplaceCurrency:Ljava/util/Currency;

.field private m_amazonUserId:Ljava/lang/String;

.field private m_context:Landroid/content/Context;

.field public m_gameObjectName:Ljava/lang/String;

.field private m_iapHelperInterface:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

.field private m_pendingAdxTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/device/iap/model/Receipt;",
            ">;"
        }
    .end annotation
.end field

.field private m_pendingReceipts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/device/iap/model/Receipt;",
            ">;"
        }
    .end annotation
.end field

.field public m_productIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_products:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/iap/model/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$ProductDataResponse$RequestStatus()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$ProductDataResponse$RequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->values()[Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->FAILED:Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->NOT_SUPPORTED:Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$ProductDataResponse$RequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$ProductType()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$ProductType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/device/iap/model/ProductType;->values()[Lcom/amazon/device/iap/model/ProductType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/device/iap/model/ProductType;->CONSUMABLE:Lcom/amazon/device/iap/model/ProductType;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/device/iap/model/ProductType;->ENTITLED:Lcom/amazon/device/iap/model/ProductType;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/device/iap/model/ProductType;->SUBSCRIPTION:Lcom/amazon/device/iap/model/ProductType;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$ProductType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$PurchaseResponse$RequestStatus()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$PurchaseResponse$RequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->values()[Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ALREADY_PURCHASED:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->FAILED:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->INVALID_SKU:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->NOT_SUPPORTED:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$PurchaseResponse$RequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->values()[Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->FAILED:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->NOT_SUPPORTED:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$amazon$device$iap$model$UserDataResponse$RequestStatus()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$UserDataResponse$RequestStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->values()[Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->FAILED:Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->NOT_SUPPORTED:Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$UserDataResponse$RequestStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin$1;

    invoke-direct {v0, p0}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin$1;-><init>(Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;)V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_iapHelperInterface:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    .line 51
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonUserId:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplace:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    .line 56
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    .line 57
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplaceCurrency:Ljava/util/Currency;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;

    invoke-direct {v0}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;-><init>()V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;

    .line 64
    :cond_0
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;

    return-object v0
.end method

.method private grantConsumablePurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 0
    .param p1, "receipt"    # Lcom/amazon/device/iap/model/Receipt;
    .param p2, "userData"    # Lcom/amazon/device/iap/model/UserData;

    .prologue
    .line 317
    return-void
.end method

.method private revokeConsumablePurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 3
    .param p1, "receipt"    # Lcom/amazon/device/iap/model/Receipt;
    .param p2, "userData"    # Lcom/amazon/device/iap/model/UserData;

    .prologue
    .line 250
    const-string v0, "AmazonIapPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Revoke Consumable Purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method private unlocalizePrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "localizedPrice"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 653
    const-string v5, "[^\\d.,]"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "modifiedPriceString":Ljava/lang/String;
    const-string v5, "AmazonIapPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "localizedPrice = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 658
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 659
    .local v0, "commaIndex":I
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 661
    .local v3, "periodIndex":I
    if-ge v0, v3, :cond_3

    .line 663
    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 670
    .end local v0    # "commaIndex":I
    .end local v3    # "periodIndex":I
    :cond_0
    :goto_0
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 671
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 672
    .restart local v0    # "commaIndex":I
    const/4 v1, 0x0

    .line 673
    .local v1, "count":I
    :goto_1
    if-ne v0, v8, :cond_4

    .line 679
    if-le v1, v9, :cond_5

    .line 681
    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 696
    .end local v0    # "commaIndex":I
    .end local v1    # "count":I
    :cond_1
    :goto_2
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 697
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 698
    .restart local v3    # "periodIndex":I
    const/4 v1, 0x0

    .line 699
    .restart local v1    # "count":I
    :goto_3
    if-ne v3, v8, :cond_7

    .line 706
    if-le v1, v9, :cond_8

    .line 708
    const-string v5, "\\."

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .end local v1    # "count":I
    .end local v3    # "periodIndex":I
    :cond_2
    :goto_4
    const-string v5, "AmazonIapPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "modifiedPriceString = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-object v2

    .line 666
    .restart local v0    # "commaIndex":I
    .restart local v3    # "periodIndex":I
    :cond_3
    const-string v5, "\\."

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 674
    .end local v3    # "periodIndex":I
    .restart local v1    # "count":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 675
    add-int/lit8 v1, v1, 0x1

    .line 676
    const-string v5, ","

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 683
    :cond_5
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 684
    add-int/lit8 v0, v0, 0x1

    .line 685
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "subString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_6

    .line 688
    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 689
    goto :goto_2

    .line 691
    :cond_6
    const-string v5, ","

    const-string v6, "."

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 701
    .end local v0    # "commaIndex":I
    .end local v4    # "subString":Ljava/lang/String;
    .restart local v3    # "periodIndex":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 702
    add-int/lit8 v1, v1, 0x1

    .line 703
    const-string v5, "."

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_3

    .line 710
    :cond_8
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 711
    add-int/lit8 v3, v3, 0x1

    .line 712
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 713
    .restart local v4    # "subString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_2

    .line 715
    const-string v5, "\\."

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private verifyReceiptFromYourService(Ljava/lang/String;Lcom/amazon/device/iap/model/UserData;)Z
    .locals 1
    .param p1, "receiptId"    # Ljava/lang/String;
    .param p2, "userData"    # Lcom/amazon/device/iap/model/UserData;

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addProductId(Ljava/lang/String;)V
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    const-string v0, "AmazonIapPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding product Id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearProductIds()V
    .locals 2

    .prologue
    .line 590
    const-string v0, "AmazonIapPlugin"

    const-string v1, "Clearing product Ids"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 593
    return-void
.end method

.method public consumePurchaseWithOrderId(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 788
    const-string v1, "AmazonIapPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Consuming purchase with order Id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    :cond_0
    const-string v0, "AmazonIapPlugin"

    const-string v1, "ERROR: Attempting to consume purchase when order Id is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :goto_1
    return-void

    .line 788
    :cond_1
    const-string v0, "false"

    goto :goto_0

    .line 795
    :cond_2
    const/4 v8, 0x0

    .line 797
    .local v8, "receipt":Lcom/amazon/device/iap/model/Receipt;
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    if-nez v0, :cond_3

    .line 798
    const-string v0, "AmazonIapPlugin"

    const-string v1, "m_pendingReceipts is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    :cond_3
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    monitor-enter v1

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 810
    :goto_2
    if-eqz v8, :cond_5

    .line 811
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 802
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    if-eqz v8, :cond_a

    .line 816
    if-eqz p2, :cond_7

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->containsTransactionId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 817
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 818
    const-string v0, "AmazonIapPlugin"

    const-string v1, "Products not yet set, saving receipt for adx tracking..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    .line 822
    :cond_6
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_7
    :goto_3
    sget-object v0, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {p1, v0}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    .line 836
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->removeTransactionId(Ljava/lang/String;)V

    .line 838
    const-string v0, "AmazonIapPlugin"

    const-string v1, "Consumption flow complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 803
    :cond_8
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/device/iap/model/Receipt;

    .line 804
    .local v7, "pendingReceipt":Lcom/amazon/device/iap/model/Receipt;
    invoke-virtual {v7}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 805
    move-object v8, v7

    .line 806
    goto :goto_2

    .line 802
    .end local v7    # "pendingReceipt":Lcom/amazon/device/iap/model/Receipt;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 824
    :cond_9
    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, "productId":Ljava/lang/String;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->priceForProductId(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v3}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->currencyCodeForProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->addTransactionId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_3

    .line 829
    .end local v3    # "productId":Ljava/lang/String;
    :cond_a
    const-string v0, "AmazonIapPlugin"

    const-string v1, "Unable to track transaction via adx because receipt is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public currencyCodeForProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 755
    const-string v2, "AmazonIapPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetching currency code for product Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 758
    const-string v2, "AmazonIapPlugin"

    const-string v3, "ERROR: m_products is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v0, ""

    .line 777
    :goto_0
    return-object v0

    .line 762
    :cond_0
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 763
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/iap/model/Product;

    .line 764
    .local v1, "product":Lcom/amazon/device/iap/model/Product;
    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 767
    const-string v0, ""

    .line 768
    .local v0, "currencyCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplaceCurrency:Ljava/util/Currency;

    if-eqz v2, :cond_1

    .line 769
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplaceCurrency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    :goto_1
    const-string v2, "AmazonIapPlugin"

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

    .line 771
    :cond_1
    const-string v2, "AmazonIapPlugin"

    const-string v3, "m_amazonMarketplaceCurrency is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 777
    .end local v0    # "currencyCode":Ljava/lang/String;
    .end local v1    # "product":Lcom/amazon/device/iap/model/Product;
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getProductData(Ljava/lang/String;)V
    .locals 5
    .param p1, "gameObjectName"    # Ljava/lang/String;

    .prologue
    .line 606
    const-string v2, "AmazonIapPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrieved gameObjectName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    .line 610
    const-string v2, "AmazonIapPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling getProductData for SKUs: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_productIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 613
    .local v1, "productSKUs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_productIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 618
    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    .line 619
    return-void

    .line 613
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 614
    .local v0, "productId":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getThirdPartyUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 874
    const-string v0, "AmazonIapPlugin"

    const-string v1, "Get third party user id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 877
    const-string v0, "AmazonIapPlugin"

    const-string v1, "ERROR: m_amazonUserId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v0, ""

    .line 881
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleConsumablePurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 4
    .param p1, "receipt"    # Lcom/amazon/device/iap/model/Receipt;
    .param p2, "userData"    # Lcom/amazon/device/iap/model/UserData;

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->revokeConsumablePurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    .line 191
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->verifyReceiptFromYourService(Ljava/lang/String;Lcom/amazon/device/iap/model/UserData;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    const-string v1, "AmazonIapPlugin"

    const-string v2, "ERROR: Purchase cannot be verified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "AmazonIapPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: Purchase cannot be completed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->grantConsumablePurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public handleReceipt(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V
    .locals 2
    .param p1, "receipt"    # Lcom/amazon/device/iap/model/Receipt;
    .param p2, "userData"    # Lcom/amazon/device/iap/model/UserData;

    .prologue
    .line 200
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$ProductType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    :pswitch_0
    return-void

    .line 203
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->handleConsumablePurchase(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v0, "AmazonIapPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_context:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_productIds:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    .line 75
    const-string v0, "AmazonIapPlugin"

    const-string v1, "Registering Purchase Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 78
    const-string v0, "AmazonIapPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sandbox Mode is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/amazon/device/iap/PurchasingService;->IS_SANDBOX_MODE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "AmazonIapPlugin"

    const-string v1, "Call getUserData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    .line 82
    const-string v0, "AmazonIapPlugin"

    const-string v1, "Call getPurchaseUpdates()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 85
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->getInstance()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_iapHelperInterface:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->setIapPlugin(Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;)V

    .line 86
    return-void
.end method

.method public localizedPriceForProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 726
    const-string v1, "AmazonIapPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fetching localized price for product Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 729
    const-string v1, "AmazonIapPlugin"

    const-string v2, "ERROR: m_products is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v1, ""

    .line 751
    :goto_0
    return-object v1

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/model/Product;

    .line 735
    .local v0, "product":Lcom/amazon/device/iap/model/Product;
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 747
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 751
    .end local v0    # "product":Lcom/amazon/device/iap/model/Product;
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 14
    .param p1, "response"    # Lcom/amazon/device/iap/model/ProductDataResponse;

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v11

    .line 413
    .local v11, "status":Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;
    const-string v0, "AmazonIapPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProductDataResponse: RequestStatus ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$ProductDataResponse$RequestStatus()[I

    move-result-object v0

    invoke-virtual {v11}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 417
    :pswitch_0
    const-string v0, "AmazonIapPlugin"

    const-string v1, "onProductDataResponse: successful.  The item data map in this response includes the valid SKUs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v12

    .line 419
    .local v12, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "AmazonIapPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProductDataResponse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unavailable skus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    .line 423
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 424
    const/4 v9, 0x0

    .line 425
    .local v9, "product":Lcom/amazon/device/iap/model/Product;
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 426
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "product":Lcom/amazon/device/iap/model/Product;
    check-cast v9, Lcom/amazon/device/iap/model/Product;

    .line 431
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    .restart local v9    # "product":Lcom/amazon/device/iap/model/Product;
    :cond_1
    const-string v7, ""

    .line 432
    .local v7, "currencyCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplaceCurrency:Ljava/util/Currency;

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplaceCurrency:Ljava/util/Currency;

    invoke-virtual {v0}, Ljava/util/Currency;->toString()Ljava/lang/String;

    move-result-object v7

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    const-string v1, "OnReceivedProductInfo"

    invoke-static {v0, v1, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v7    # "currencyCode":Ljava/lang/String;
    .end local v9    # "product":Lcom/amazon/device/iap/model/Product;
    :cond_2
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    goto :goto_0

    .line 435
    .restart local v7    # "currencyCode":Ljava/lang/String;
    .restart local v9    # "product":Lcom/amazon/device/iap/model/Product;
    :cond_3
    const-string v0, "AmazonIapPlugin"

    const-string v1, "m_amazonMarketplaceCurrency is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 442
    .end local v7    # "currencyCode":Ljava/lang/String;
    .end local v9    # "product":Lcom/amazon/device/iap/model/Product;
    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/device/iap/model/Receipt;

    .line 443
    .local v10, "receipt":Lcom/amazon/device/iap/model/Receipt;
    invoke-virtual {v10}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "productId":Ljava/lang/String;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->priceForProductId(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, v3}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->currencyCodeForProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/AdxTransactionsManager;->addTransactionId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    goto :goto_2

    .line 452
    .end local v3    # "productId":Ljava/lang/String;
    .end local v10    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    .end local v12    # "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_1
    const-string v0, "AmazonIapPlugin"

    const-string v1, "onProductDataResponse: failed, should retry request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .prologue
    .line 530
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "requestId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v2

    .line 533
    .local v2, "status":Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;
    const-string v4, "AmazonIapPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPurchaseResponse: requestId ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 534
    const-string v6, ") userId ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 535
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 536
    const-string v6, ") purchaseRequestStatus ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 537
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 538
    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$PurchaseResponse$RequestStatus()[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 580
    :goto_0
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 581
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    const-string v5, "OnPaymentTransactionStateFailed"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    :goto_1
    return-void

    .line 542
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v0

    .line 543
    .local v0, "receipt":Lcom/amazon/device/iap/model/Receipt;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v4, "AmazonIapPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPurchaseResponse: receipt json:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->toJSON()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->addTransactionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    if-nez v4, :cond_1

    .line 549
    const-string v4, "AmazonIapPlugin"

    const-string v5, "m_pendingReceipts is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 553
    :cond_1
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    monitor-enter v5

    .line 554
    :try_start_0
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->submitTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 553
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 564
    .end local v0    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    :pswitch_1
    const-string v4, "AmazonIapPlugin"

    const-string v5, "onPurchaseResponse: already purchased, should never get here for a consumable."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    :pswitch_2
    const-string v4, "AmazonIapPlugin"

    .line 571
    const-string v5, "onPurchaseResponse: invalid SKU!  onProductDataResponse should have disabled buy button already."

    .line 570
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 575
    :pswitch_3
    const-string v4, "AmazonIapPlugin"

    const-string v5, "onPurchaseResponse: failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    .prologue
    .line 468
    const-string v3, "AmazonIapPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPurchaseUpdatesResponse: requestId ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 469
    const-string v5, ") purchaseUpdatesResponseStatus ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 470
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 471
    const-string v5, ") userId ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 472
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 473
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 468
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v2

    .line 475
    .local v2, "status":Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 477
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "existingPurchasesFound":Z
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 502
    if-eqz v0, :cond_1

    .line 503
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->submitNextPendingTransaction()V

    .line 506
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    goto :goto_0

    .line 480
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/iap/model/Receipt;

    .line 481
    .local v1, "receipt":Lcom/amazon/device/iap/model/Receipt;
    const-string v4, "AmazonIapPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Purchase found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->addTransactionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    if-nez v4, :cond_3

    .line 486
    const-string v4, "AmazonIapPlugin"

    const-string v5, "m_pendingReceipts is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 490
    :cond_3
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    monitor-enter v4

    .line 491
    :try_start_0
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 492
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_4
    monitor-exit v4

    .line 499
    const/4 v0, 0x1

    goto :goto_1

    .line 490
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 512
    .end local v0    # "existingPurchasesFound":Z
    .end local v1    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    :pswitch_1
    const-string v3, "AmazonIapPlugin"

    const-string v4, "onProductDataResponse: failed, should retry request"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/amazon/device/iap/model/UserDataResponse;

    .prologue
    const/4 v4, 0x0

    .line 384
    const-string v1, "AmazonIapPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onGetUserDataResponse: requestId ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 385
    const-string v3, ") userIdRequestStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 386
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 387
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    move-result-object v0

    .line 390
    .local v0, "status":Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->$SWITCH_TABLE$com$amazon$device$iap$model$UserDataResponse$RequestStatus()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 405
    :goto_0
    return-void

    .line 392
    :pswitch_0
    const-string v1, "AmazonIapPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUserDataResponse: get user id ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 393
    const-string v3, ", marketplace ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 394
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 395
    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_1
    const-string v1, "AmazonIapPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUserDataResponse failed, status code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0, v4, v4}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public priceForProductId(Ljava/lang/String;)D
    .locals 8
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 622
    const-string v5, "AmazonIapPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Fetching price for product Id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    if-nez v5, :cond_1

    .line 625
    const-string v5, "AmazonIapPlugin"

    const-string v6, "ERROR: m_products is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    :goto_0
    return-wide v2

    .line 629
    :cond_1
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplaceCurrency:Ljava/util/Currency;

    if-nez v5, :cond_2

    .line 630
    const-string v5, "AmazonIapPlugin"

    const-string v6, "m_amazonMarketplaceCurrency is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    :cond_2
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 635
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/iap/model/Product;

    .line 636
    .local v4, "product":Lcom/amazon/device/iap/model/Product;
    invoke-virtual {v4}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 640
    invoke-virtual {v4}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "priceString":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->unlocalizePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "modifiedPriceString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 644
    .local v2, "priceDoubleValue":D
    const-string v5, "AmazonIapPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Price double value = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public purchaseFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v0, "AmazonIapPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public purchaseProductId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 781
    const-string v1, "AmazonIapPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launching purchase flow for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "requestId":Ljava/lang/String;
    const-string v1, "AmazonIapPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Purchase request Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void
.end method

.method public requestingPendingPurchase(Ljava/lang/String;)V
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 843
    const-string v2, "AmazonIapPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requesting pending purchase with product Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    if-nez v2, :cond_1

    .line 846
    const-string v2, "AmazonIapPlugin"

    const-string v3, "m_pendingReceipts is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    const/4 v1, 0x0

    .line 851
    .local v1, "receipt":Lcom/amazon/device/iap/model/Receipt;
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    monitor-enter v3

    .line 852
    :try_start_0
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 851
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    if-nez v1, :cond_4

    .line 861
    const-string v2, "AmazonIapPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find purchase with product Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 865
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    const-string v3, "NoThirdPartyReceipt"

    invoke-static {v2, v3, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/model/Receipt;

    .line 853
    .local v0, "pendingReceipt":Lcom/amazon/device/iap/model/Receipt;
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 854
    move-object v1, v0

    .line 855
    goto :goto_1

    .line 851
    .end local v0    # "pendingReceipt":Lcom/amazon/device/iap/model/Receipt;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 870
    :cond_4
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->getInstance()Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/blizzard/wtcg/hearthstone/PendingTransactionsManager;->submitTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    const-string v0, "AmazonIapPlugin"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_productIds:Ljava/util/ArrayList;

    .line 94
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_products:Ljava/util/Map;

    .line 95
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingReceipts:Ljava/util/List;

    .line 96
    invoke-virtual {p0, v2, v2}, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_gameObjectName:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_context:Landroid/content/Context;

    .line 99
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_pendingAdxTransactions:Ljava/util/ArrayList;

    .line 100
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplaceCurrency:Ljava/util/Currency;

    .line 101
    return-void
.end method

.method public setAmazonUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "newAmazonUserId"    # Ljava/lang/String;
    .param p2, "newAmazonMarketplace"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 112
    if-nez p1, :cond_1

    .line 115
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonUserId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 116
    iput-object v3, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonUserId:Ljava/lang/String;

    .line 117
    iput-object v3, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplace:Ljava/lang/String;

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonUserId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    :cond_2
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonUserId:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplace:Ljava/lang/String;

    .line 128
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 129
    .local v1, "defaultLocale":Ljava/util/Locale;
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplace:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v0, "amazonMarketplaceLocale":Ljava/util/Locale;
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/AmazonIapPlugin;->m_amazonMarketplaceCurrency:Ljava/util/Currency;

    goto :goto_0
.end method
