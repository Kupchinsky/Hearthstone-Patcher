.class public Lcom/turn/ttorrent/client/Piece$CallableHasher;
.super Ljava/lang/Object;
.source "Piece.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/Piece;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallableHasher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/turn/ttorrent/client/Piece;",
        ">;"
    }
.end annotation


# instance fields
.field private final piece:Lcom/turn/ttorrent/client/Piece;


# direct methods
.method public constructor <init>(Lcom/turn/ttorrent/client/Piece;)V
    .registers 2
    .param p1, "piece"    # Lcom/turn/ttorrent/client/Piece;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/turn/ttorrent/client/Piece$CallableHasher;->piece:Lcom/turn/ttorrent/client/Piece;

    .line 305
    return-void
.end method


# virtual methods
.method public call()Lcom/turn/ttorrent/client/Piece;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/turn/ttorrent/client/Piece$CallableHasher;->piece:Lcom/turn/ttorrent/client/Piece;

    invoke-virtual {v0}, Lcom/turn/ttorrent/client/Piece;->validate()Z

    .line 310
    iget-object v0, p0, Lcom/turn/ttorrent/client/Piece$CallableHasher;->piece:Lcom/turn/ttorrent/client/Piece;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/turn/ttorrent/client/Piece$CallableHasher;->call()Lcom/turn/ttorrent/client/Piece;

    move-result-object v0

    return-object v0
.end method
