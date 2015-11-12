.class public Lcom/turn/ttorrent/client/peer/SharingPeer$ULRateComparator;
.super Ljava/lang/Object;
.source "SharingPeer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/peer/SharingPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ULRateComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/turn/ttorrent/client/peer/SharingPeer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2348a732e405L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/peer/SharingPeer;)I
    .registers 6
    .param p1, "a"    # Lcom/turn/ttorrent/client/peer/SharingPeer;
    .param p2, "b"    # Lcom/turn/ttorrent/client/peer/SharingPeer;

    .prologue
    .line 780
    sget-object v0, Lcom/turn/ttorrent/client/peer/Rate;->RATE_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p1}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getULRate()Lcom/turn/ttorrent/client/peer/Rate;

    move-result-object v1

    invoke-virtual {p2}, Lcom/turn/ttorrent/client/peer/SharingPeer;->getULRate()Lcom/turn/ttorrent/client/peer/Rate;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 773
    check-cast p1, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/turn/ttorrent/client/peer/SharingPeer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/turn/ttorrent/client/peer/SharingPeer$ULRateComparator;->compare(Lcom/turn/ttorrent/client/peer/SharingPeer;Lcom/turn/ttorrent/client/peer/SharingPeer;)I

    move-result v0

    return v0
.end method
