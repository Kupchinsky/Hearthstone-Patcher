.class public final enum Lcom/turn/ttorrent/client/Client$ClientState;
.super Ljava/lang/Enum;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/client/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/turn/ttorrent/client/Client$ClientState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/turn/ttorrent/client/Client$ClientState;

.field public static final enum DONE:Lcom/turn/ttorrent/client/Client$ClientState;

.field public static final enum ERROR:Lcom/turn/ttorrent/client/Client$ClientState;

.field public static final enum SEEDING:Lcom/turn/ttorrent/client/Client$ClientState;

.field public static final enum SHARING:Lcom/turn/ttorrent/client/Client$ClientState;

.field public static final enum VALIDATING:Lcom/turn/ttorrent/client/Client$ClientState;

.field public static final enum WAITING:Lcom/turn/ttorrent/client/Client$ClientState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/turn/ttorrent/client/Client$ClientState;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v3}, Lcom/turn/ttorrent/client/Client$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->WAITING:Lcom/turn/ttorrent/client/Client$ClientState;

    .line 92
    new-instance v0, Lcom/turn/ttorrent/client/Client$ClientState;

    const-string v1, "VALIDATING"

    invoke-direct {v0, v1, v4}, Lcom/turn/ttorrent/client/Client$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->VALIDATING:Lcom/turn/ttorrent/client/Client$ClientState;

    .line 93
    new-instance v0, Lcom/turn/ttorrent/client/Client$ClientState;

    const-string v1, "SHARING"

    invoke-direct {v0, v1, v5}, Lcom/turn/ttorrent/client/Client$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->SHARING:Lcom/turn/ttorrent/client/Client$ClientState;

    .line 94
    new-instance v0, Lcom/turn/ttorrent/client/Client$ClientState;

    const-string v1, "SEEDING"

    invoke-direct {v0, v1, v6}, Lcom/turn/ttorrent/client/Client$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->SEEDING:Lcom/turn/ttorrent/client/Client$ClientState;

    .line 95
    new-instance v0, Lcom/turn/ttorrent/client/Client$ClientState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lcom/turn/ttorrent/client/Client$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->ERROR:Lcom/turn/ttorrent/client/Client$ClientState;

    .line 96
    new-instance v0, Lcom/turn/ttorrent/client/Client$ClientState;

    const-string v1, "DONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/turn/ttorrent/client/Client$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->DONE:Lcom/turn/ttorrent/client/Client$ClientState;

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/turn/ttorrent/client/Client$ClientState;

    sget-object v1, Lcom/turn/ttorrent/client/Client$ClientState;->WAITING:Lcom/turn/ttorrent/client/Client$ClientState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/turn/ttorrent/client/Client$ClientState;->VALIDATING:Lcom/turn/ttorrent/client/Client$ClientState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/turn/ttorrent/client/Client$ClientState;->SHARING:Lcom/turn/ttorrent/client/Client$ClientState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/turn/ttorrent/client/Client$ClientState;->SEEDING:Lcom/turn/ttorrent/client/Client$ClientState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/turn/ttorrent/client/Client$ClientState;->ERROR:Lcom/turn/ttorrent/client/Client$ClientState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/turn/ttorrent/client/Client$ClientState;->DONE:Lcom/turn/ttorrent/client/Client$ClientState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->$VALUES:[Lcom/turn/ttorrent/client/Client$ClientState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/turn/ttorrent/client/Client$ClientState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/turn/ttorrent/client/Client$ClientState;

    return-object v0
.end method

.method public static values()[Lcom/turn/ttorrent/client/Client$ClientState;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/turn/ttorrent/client/Client$ClientState;->$VALUES:[Lcom/turn/ttorrent/client/Client$ClientState;

    invoke-virtual {v0}, [Lcom/turn/ttorrent/client/Client$ClientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/turn/ttorrent/client/Client$ClientState;

    return-object v0
.end method
