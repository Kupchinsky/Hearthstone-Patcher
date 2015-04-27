.class Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"


# static fields
.field static final EXTERNAL:Ljava/lang/String; = "external"

.field static final INTERNAL:Ljava/lang/String; = "internal"

.field private static final TAG:Ljava/lang/String; = "WebLoginInterface"


# instance fields
.field private m_activity:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

.field private m_relStatus:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_sState:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_relStatus:Ljava/util/Hashtable;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_sState:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public SetStateListener(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_activity:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 109
    return-void
.end method

.method public getRelStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_relStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_relStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_relStatus:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_relStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_relStatus:Ljava/util/Hashtable;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_relStatus:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_sState:Ljava/lang/String;

    return-object v0
.end method

.method public relCallback([Ljava/lang/String;)V
    .locals 6
    .param p1, "jsResult"    # [Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 56
    const-string v3, "WebLoginInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WebViewPluginInterface - relCallback(jsResult="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 64
    return-void

    .line 60
    :cond_0
    aget-object v2, p1, v0

    .line 61
    .local v2, "url":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v1, p1, v3

    .line 62
    .local v1, "rel":Ljava/lang/String;
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_relStatus:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public relExternalCallback(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsResult"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 69
    const-string v2, "WebLoginInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WebViewPluginInterface - relExternalallback(jsResult="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "urls":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 76
    return-void

    .line 73
    :cond_0
    const-string v2, "WebLoginInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "external url "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_relStatus:Ljava/util/Hashtable;

    aget-object v3, v1, v0

    const-string v4, "external"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stateCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsResult"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 81
    const-string v0, "WebLoginInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebViewPluginInterface - stateCallback(jsResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_sState:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_activity:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_activity:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginInterface;->m_sState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->StateReceived(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method
