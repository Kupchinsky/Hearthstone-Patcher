.class public final enum Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
.super Ljava/lang/Enum;
.source "PeerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/PeerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum BITFIELD:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum CANCEL:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum CHOKE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum HAVE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum INTERESTED:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum KEEP_ALIVE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum NOT_INTERESTED:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum PIECE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum REQUEST:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

.field public static final enum UNCHOKE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;


# instance fields
.field private id:B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "KEEP_ALIVE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->KEEP_ALIVE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 53
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "CHOKE"

    invoke-direct {v0, v1, v5, v4}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->CHOKE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 54
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "UNCHOKE"

    invoke-direct {v0, v1, v6, v5}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->UNCHOKE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 55
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "INTERESTED"

    invoke-direct {v0, v1, v7, v6}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->INTERESTED:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 56
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "NOT_INTERESTED"

    invoke-direct {v0, v1, v8, v7}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->NOT_INTERESTED:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 57
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "HAVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->HAVE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 58
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "BITFIELD"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->BITFIELD:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 59
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "REQUEST"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->REQUEST:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 60
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "PIECE"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->PIECE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 61
    new-instance v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    const-string v1, "CANCEL"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->CANCEL:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->KEEP_ALIVE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->CHOKE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->UNCHOKE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->INTERESTED:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->NOT_INTERESTED:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->HAVE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->BITFIELD:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->REQUEST:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->PIECE:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->CANCEL:Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->$VALUES:[Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->id:B

    .line 66
    return-void
.end method

.method public static get(B)Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    .registers 6
    .param p0, "c"    # B

    .prologue
    .line 77
    invoke-static {}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->values()[Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    move-result-object v0

    .local v0, "arr$":[Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_14

    aget-object v3, v0, v1

    .line 78
    .local v3, "t":Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    invoke-virtual {v3, p0}, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->equals(B)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 82
    .end local v3    # "t":Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    :goto_10
    return-object v3

    .line 77
    .restart local v3    # "t":Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 82
    .end local v3    # "t":Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    return-object v0
.end method

.method public static values()[Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->$VALUES:[Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    invoke-virtual {v0}, [Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;

    return-object v0
.end method


# virtual methods
.method public equals(B)Z
    .registers 3
    .param p1, "c"    # B

    .prologue
    .line 69
    iget-byte v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->id:B

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getTypeByte()B
    .registers 2

    .prologue
    .line 73
    iget-byte v0, p0, Lcom/turn/ttorrent/common/protocol/PeerMessage$Type;->id:B

    return v0
.end method
