.class Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;
.super Ljava/lang/Object;
.source "GooglePlayIabPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuedEvent"
.end annotation


# instance fields
.field public m_eventType:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

.field public m_isSuccess:Z

.field public m_orderId:Ljava/lang/String;

.field public m_productId:Ljava/lang/String;

.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;


# direct methods
.method private constructor <init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->this$0:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_orderId:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_isSuccess:Z

    .line 31
    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;->m_productId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$QueuedEvent;-><init>(Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;)V

    return-void
.end method
