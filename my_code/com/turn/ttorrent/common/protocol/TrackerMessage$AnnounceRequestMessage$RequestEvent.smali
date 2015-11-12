.class public final enum Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
.super Ljava/lang/Enum;
.source "TrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

.field public static final enum COMPLETED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

.field public static final enum NONE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

.field public static final enum STARTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

.field public static final enum STOPPED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->NONE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 176
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v3, v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->COMPLETED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 177
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STARTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 178
    new-instance v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5, v5}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STOPPED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    .line 174
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->NONE:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->COMPLETED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STARTED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->STOPPED:Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    aput-object v1, v0, v5

    sput-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->$VALUES:[Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput p3, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->id:I

    .line 183
    return-void
.end method

.method public static getById(I)Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .registers 6
    .param p0, "id"    # I

    .prologue
    .line 203
    invoke-static {}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->values()[Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    move-result-object v0

    .local v0, "arr$":[Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_14

    aget-object v3, v0, v1

    .line 204
    .local v3, "type":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    invoke-virtual {v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->getId()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 208
    .end local v3    # "type":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    :goto_10
    return-object v3

    .line 203
    .restart local v3    # "type":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 208
    .end local v3    # "type":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    :cond_14
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public static getByName(Ljava/lang/String;)Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->values()[Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    move-result-object v0

    .local v0, "arr$":[Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 195
    .local v3, "type":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    invoke-virtual {v3}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 199
    .end local v3    # "type":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    :goto_14
    return-object v3

    .line 194
    .restart local v3    # "type":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 199
    .end local v3    # "type":Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    :cond_18
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    const-class v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    return-object v0
.end method

.method public static values()[Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;
    .registers 1

    .prologue
    .line 174
    sget-object v0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->$VALUES:[Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    invoke-virtual {v0}, [Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/turn/ttorrent/common/protocol/TrackerMessage$AnnounceRequestMessage$RequestEvent;->id:I

    return v0
.end method
