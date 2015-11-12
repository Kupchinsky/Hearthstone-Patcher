.class Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/hearthstone/UpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomInfo"
.end annotation


# instance fields
.field private remoteData:Lorg/json/JSONObject;

.field private remoteVersionBuild:I

.field private remoteVersionCode:I

.field private remoteVersionName:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "remoteVersionCode"    # I
    .param p2, "remoteVersionBuild"    # I
    .param p3, "remoteVersionName"    # Ljava/lang/String;
    .param p4, "remoteData"    # Lorg/json/JSONObject;

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p1, p0, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->remoteVersionCode:I

    .line 279
    iput p2, p0, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->remoteVersionBuild:I

    .line 280
    iput-object p3, p0, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->remoteVersionName:Ljava/lang/String;

    .line 281
    iput-object p4, p0, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->remoteData:Lorg/json/JSONObject;

    .line 282
    return-void
.end method


# virtual methods
.method getRemoteData()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->remoteData:Lorg/json/JSONObject;

    return-object v0
.end method

.method getRemoteVersionBuild()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->remoteVersionBuild:I

    return v0
.end method

.method getRemoteVersionCode()I
    .registers 2

    .prologue
    .line 286
    iget v0, p0, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->remoteVersionCode:I

    return v0
.end method

.method getRemoteVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->remoteVersionName:Ljava/lang/String;

    return-object v0
.end method
