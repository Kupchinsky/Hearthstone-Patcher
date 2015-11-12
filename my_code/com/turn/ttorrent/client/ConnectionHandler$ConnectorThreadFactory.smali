.class Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorThreadFactory;
.super Ljava/lang/Object;
.source "ConnectionHandler.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/ConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectorThreadFactory"
.end annotation


# instance fields
.field private number:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorThreadFactory;->number:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/client/ConnectionHandler$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/turn/ttorrent/client/ConnectionHandler$1;

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 452
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 453
    .local v0, "t":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt-connect-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorThreadFactory;->number:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/turn/ttorrent/client/ConnectionHandler$ConnectorThreadFactory;->number:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 454
    return-object v0
.end method
