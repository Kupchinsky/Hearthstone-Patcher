.class Lcom/turn/ttorrent/client/peer/Rate$RateComparator;
.super Ljava/lang/Object;
.source "Rate.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/peer/Rate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RateComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/turn/ttorrent/client/peer/Rate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x41e6f672d250L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/turn/ttorrent/client/peer/Rate$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/turn/ttorrent/client/peer/Rate$1;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/turn/ttorrent/client/peer/Rate$RateComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/turn/ttorrent/client/peer/Rate;Lcom/turn/ttorrent/client/peer/Rate;)I
    .registers 5
    .param p1, "a"    # Lcom/turn/ttorrent/client/peer/Rate;
    .param p2, "b"    # Lcom/turn/ttorrent/client/peer/Rate;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/Rate;->get()F

    move-result v0

    invoke-virtual {p2}, Lcom/turn/ttorrent/client/peer/Rate;->get()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 122
    const/4 v0, 0x1

    .line 125
    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Lcom/turn/ttorrent/client/peer/Rate;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/turn/ttorrent/client/peer/Rate;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/turn/ttorrent/client/peer/Rate$RateComparator;->compare(Lcom/turn/ttorrent/client/peer/Rate;Lcom/turn/ttorrent/client/peer/Rate;)I

    move-result v0

    return v0
.end method
