.class Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
.super Ljava/lang/Object;
.source "XposedUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/hearthstone/XposedUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XposedAsset"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->fileName:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .registers 2
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->hash:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->url:Ljava/lang/String;

    .line 267
    return-void
.end method
