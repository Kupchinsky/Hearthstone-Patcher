.class final enum Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;
.super Ljava/lang/Enum;
.source "GooglePlayIabPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONSUME_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

.field private static final synthetic ENUM$VALUES:[Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

.field public static final enum LAUNCH_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

.field public static final enum QUERY_INVENTORY:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    const-string v1, "QUERY_INVENTORY"

    invoke-direct {v0, v1, v2}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->QUERY_INVENTORY:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    .line 23
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    const-string v1, "CONSUME_PURCHASE"

    invoke-direct {v0, v1, v3}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->CONSUME_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    .line 24
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    const-string v1, "LAUNCH_PURCHASE"

    invoke-direct {v0, v1, v4}, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->LAUNCH_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    sget-object v1, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->QUERY_INVENTORY:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->CONSUME_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->LAUNCH_PURCHASE:Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->ENUM$VALUES:[Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    return-object v0
.end method

.method public static values()[Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;->ENUM$VALUES:[Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/blizzard/wtcg/hearthstone/GooglePlayIabPlugin$EventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
