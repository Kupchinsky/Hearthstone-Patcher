.class public Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;
.super Ljava/lang/Object;
.source "IapHelperPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IapHelperPlugin"

.field private static s_instance:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;


# instance fields
.field private m_androidId:Ljava/lang/String;

.field private m_battleNetUserId:Ljava/lang/String;

.field private m_context:Landroid/content/Context;

.field private m_iapPlugin:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_context:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_battleNetUserId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_androidId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_iapPlugin:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    .line 37
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_context:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_androidId:Ljava/lang/String;

    .line 39
    const-string v0, "IapHelperPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m_androidId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_androidId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;
    .locals 3

    .prologue
    .line 29
    sget-object v1, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    if-nez v1, :cond_0

    .line 30
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 31
    .local v0, "currentActivity":Landroid/app/Activity;
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    .line 33
    :cond_0
    sget-object v1, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->s_instance:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;

    return-object v1
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getBattleNetUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_battleNetUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    const-string v0, "IapHelperPlugin"

    const-string v1, "ERROR: Battle Net User Id not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_battleNetUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getIapPlugin()Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_iapPlugin:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "IapHelperPlugin"

    const-string v1, "ERROR: Iap Interface not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_iapPlugin:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    return-object v0
.end method

.method public setBattleNetUserId(JI)V
    .locals 5
    .param p1, "gameAccountId"    # J
    .param p3, "gameRegion"    # I

    .prologue
    .line 43
    const-string v1, "IapHelperPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setBattleNetUserId("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_battleNetUserId:Ljava/lang/String;

    .line 51
    const-string v1, "IapHelperPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "m_battleNetUserId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_battleNetUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public setIapPlugin(Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;)V
    .locals 0
    .param p1, "iapPlugin"    # Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;->m_iapPlugin:Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;

    .line 68
    return-void
.end method
