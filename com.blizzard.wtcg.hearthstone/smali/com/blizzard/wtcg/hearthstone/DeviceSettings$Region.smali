.class public final enum Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;
.super Ljava/lang/Enum;
.source "DeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blizzard/wtcg/hearthstone/DeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CN:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

.field private static final synthetic ENUM$VALUES:[Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

.field public static final enum EU:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

.field public static final enum KR:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

.field public static final enum US:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    const-string v1, "US"

    invoke-direct {v0, v1, v2}, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->US:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    .line 24
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    const-string v1, "EU"

    invoke-direct {v0, v1, v3}, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->EU:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    .line 25
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    const-string v1, "KR"

    invoke-direct {v0, v1, v4}, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->KR:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    .line 26
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    const-string v1, "CN"

    invoke-direct {v0, v1, v5}, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->CN:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    sget-object v1, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->US:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->EU:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->KR:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    aput-object v1, v0, v4

    sget-object v1, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->CN:Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    aput-object v1, v0, v5

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->ENUM$VALUES:[Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    return-object v0
.end method

.method public static values()[Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->ENUM$VALUES:[Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    array-length v1, v0

    new-array v2, v1, [Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
