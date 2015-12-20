.class Lru/killer666/hearthstone/UpdateChecker$XposedFile;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/hearthstone/UpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XposedFile"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 358
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->file:Ljava/io/File;

    .line 359
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->fileName:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .registers 2
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->hash:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->url:Ljava/lang/String;

    .line 375
    return-void
.end method
