.class public Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabSetupFinishedListener;,
        Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDebugLog:Z

    .line 76
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSetupDone:Z

    .line 82
    iput-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDisposed:Z

    .line 85
    iput-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSubscriptionsSupported:Z

    .line 89
    iput-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncInProgress:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 167
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 752
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 755
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 765
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 768
    rsub-int v2, p0, -0x3e8

    .line 769
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 775
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 770
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 772
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 773
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 775
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 783
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    return-void
.end method

.method consume(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 659
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 661
    iget-object v4, p1, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 662
    new-instance v4, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    const/16 v5, -0x3f2

    .line 663
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Items of type \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 662
    invoke-direct {v4, v5, v6}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 667
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 670
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t consume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 671
    new-instance v4, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 671
    invoke-direct {v4, v5, v6}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 675
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Consuming sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 676
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 677
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully consumed sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 688
    return-void

    .line 681
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error consuming consuming sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 682
    new-instance v4, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error consuming sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    .param p2, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 727
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 731
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;",
            ">;",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;>;"
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 740
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 741
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 742
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;",
            ">;",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 970
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 971
    const-string v0, "Debug"

    const-string v1, "consumeAsyncInternal using UnityPlayer.currentActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$3;-><init>(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;Ljava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1001
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1002
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSetupDone:Z

    .line 291
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 295
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDisposed:Z

    .line 296
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    .line 297
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 298
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 299
    iput-object v2, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 300
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 181
    iput-boolean p1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDebugLog:Z

    .line 182
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 175
    iput-boolean p1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDebugLog:Z

    .line 176
    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 177
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 829
    const-string v0, ""

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncInProgress:Z

    .line 831
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncInProgress:Z

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 789
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 790
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 791
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 792
    const/4 v1, 0x0

    .line 795
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 794
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 795
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 797
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 799
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 805
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 806
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 807
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 808
    const/4 v1, 0x0

    .line 811
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 810
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 811
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 813
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 815
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 440
    iget v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 519
    :goto_0
    return v8

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 443
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->flagEndAsync()V

    .line 448
    if-nez p3, :cond_2

    .line 449
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 450
    new-instance v6, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 451
    .local v6, "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    .line 452
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 455
    .end local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 456
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 460
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 461
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Data signature: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Expected item type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 466
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 467
    :cond_3
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 469
    new-instance v6, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 470
    .restart local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    .line 471
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 474
    .end local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 476
    .local v2, "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v2    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    .local v3, "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 480
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 481
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 482
    new-instance v6, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Signature verification failed for sku "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 483
    .restart local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    .line 484
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 486
    .end local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    :cond_7
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 496
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 497
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    .line 519
    .end local v3    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 488
    .restart local v2    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    :catch_0
    move-exception v1

    .line 489
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 491
    new-instance v6, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 492
    .restart local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    .line 493
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 500
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    .end local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 502
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 503
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 504
    new-instance v6, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 505
    .restart local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    goto :goto_1

    .line 508
    .end local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 509
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase canceled - Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 510
    new-instance v6, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 511
    .restart local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    goto :goto_1

    .line 514
    .end local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase failed. Result code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 515
    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 514
    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 516
    new-instance v6, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 517
    .restart local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    goto/16 :goto_1

    .line 488
    .end local v6    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    .restart local v3    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    .restart local v2    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    goto/16 :goto_2
.end method

.method public isAsyncInProgress()Z
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mAsyncInProgress:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 334
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 373
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 374
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 377
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 378
    new-instance v11, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/16 v1, -0x3f1

    .line 379
    const-string v2, "Subscriptions are not available."

    .line 378
    invoke-direct {v11, v1, v2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 380
    .local v11, "r":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->flagEndAsync()V

    .line 381
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    .line 423
    .end local v11    # "r":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructing buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 388
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 389
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->flagEndAsync()V

    .line 392
    new-instance v13, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 393
    .local v13, "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 407
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    :catch_0
    move-exception v9

    .line 408
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 410
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->flagEndAsync()V

    .line 412
    new-instance v13, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 413
    .restart local v13    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    goto/16 :goto_0

    .line 397
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 398
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 399
    move/from16 v0, p4

    iput v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mRequestCode:I

    .line 400
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchaseListener:Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 401
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 402
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 403
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 404
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 405
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 402
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 415
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 416
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 418
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->flagEndAsync()V

    .line 420
    new-instance v13, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 421
    .restart local v13    # "result":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 344
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;
        }
    .end annotation

    .prologue
    .line 523
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;
        }
    .end annotation

    .prologue
    .line 541
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 542
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 544
    :try_start_0
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;

    invoke-direct {v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;-><init>()V

    .line 545
    .local v1, "inv":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->queryPurchases(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 546
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 547
    new-instance v3, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 574
    .end local v1    # "inv":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 551
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 552
    if-eqz v2, :cond_1

    .line 553
    new-instance v3, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    .end local v1    # "inv":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 578
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 558
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 559
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->queryPurchases(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 560
    if-eqz v2, :cond_2

    .line 561
    new-instance v3, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 564
    :cond_2
    if-eqz p1, :cond_3

    .line 565
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 566
    if-eqz v2, :cond_3

    .line 567
    new-instance v3, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 572
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 640
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 641
    return-void
.end method

.method public queryInventoryAsync(ZLcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 645
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 609
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 610
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 611
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 612
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 613
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$2;-><init>(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;ZLjava/util/List;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 636
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 637
    return-void
.end method

.method queryPurchases(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 836
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Querying owned items, item type: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 837
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Package name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 838
    const/4 v12, 0x0

    .line 839
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 842
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 846
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 847
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Owned items response: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 848
    if-eqz v8, :cond_1

    .line 849
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getPurchases() failed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 894
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 852
    .restart local v8    # "response":I
    :cond_1
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 853
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 854
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 855
    :cond_2
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 856
    const/16 v8, -0x3ea

    goto :goto_0

    .line 860
    :cond_3
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    .line 859
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 862
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 861
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 864
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 863
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 866
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_4

    .line 890
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 891
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 892
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 894
    if-eqz v12, :cond_7

    const/16 v13, -0x3eb

    :goto_2
    move v8, v13

    goto :goto_0

    .line 867
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 868
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 869
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 870
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 871
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Sku is owned: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 872
    new-instance v5, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    .local v5, "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    invoke-virtual {v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 875
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 876
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 880
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;->addPurchase(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;)V

    .line 866
    .end local v5    # "purchase":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Purchase;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 883
    :cond_6
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 884
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 885
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Signature: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 886
    const/4 v12, 0x1

    goto :goto_3

    .line 894
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;Ljava/util/List;)I
    .locals 23
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 899
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "Querying SKU details."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 900
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v15, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 902
    if-eqz p3, :cond_1

    .line 903
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_2

    .line 910
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_3

    .line 911
    const-string v19, "queryPrices: nothing to do because there are no SKUs."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 912
    const/4 v10, 0x0

    .line 962
    :goto_1
    return v10

    .line 903
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 904
    .local v13, "sku":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 905
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 916
    .end local v13    # "sku":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v8, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    div-int/lit8 v7, v19, 0x14

    .line 919
    .local v7, "n":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    rem-int/lit8 v6, v19, 0x14

    .line 920
    .local v6, "mod":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-lt v5, v7, :cond_6

    .line 927
    if-eqz v6, :cond_4

    .line 928
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v17, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v7, 0x14

    mul-int/lit8 v20, v7, 0x14

    add-int v20, v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_8

    .line 932
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_9

    .line 962
    const/4 v10, 0x0

    goto :goto_1

    .line 921
    :cond_6
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .restart local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v5, 0x14

    mul-int/lit8 v20, v5, 0x14

    add-int/lit8 v20, v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_7

    .line 925
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 922
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 923
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 929
    .end local v12    # "s":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 930
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 935
    .end local v12    # "s":Ljava/lang/String;
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 936
    .local v16, "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 937
    .local v9, "querySkus":Landroid/os/Bundle;
    const-string v20, "ITEM_ID_LIST"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 941
    .local v14, "skuDetails":Landroid/os/Bundle;
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 942
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v10

    .line 943
    .local v10, "response":I
    if-eqz v10, :cond_a

    .line 944
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "getSkuDetails() failed: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 948
    :cond_a
    const-string v19, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 949
    const/16 v10, -0x3ea

    goto/16 :goto_1

    .line 954
    .end local v10    # "response":I
    :cond_b
    const-string v20, "DETAILS_LIST"

    .line 953
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 956
    .local v11, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 957
    .local v18, "thisResponse":Ljava/lang/String;
    new-instance v4, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    .local v4, "d":Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Got sku details: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/Inventory;->addSkuDetails(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/SkuDetails;)V

    goto :goto_5
.end method

.method public startSetup(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 207
    iget-boolean v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSetupDone:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IAB helper is already set up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    const-string v1, "Starting in-app billing setup."

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$1;-><init>(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    if-eqz p1, :cond_1

    .line 276
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;

    const/4 v2, 0x3

    .line 277
    const-string v3, "Billing service unavailable on device."

    .line 276
    invoke-direct {v1, v2, v3}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 275
    invoke-interface {p1, v1}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->checkNotDisposed()V

    .line 309
    iget-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/googleplayiab/util/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
