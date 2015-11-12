.class public Lru/killer666/hearthstone/test/LoadingScreen;
.super Ljava/lang/Object;
.source "LoadingScreen.java"


# instance fields
.field m_loadingFailed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/killer666/hearthstone/test/LoadingScreen;->m_loadingFailed:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0, p0}, Lru/killer666/hearthstone/test/LoadingScreen;->thisaccess(Lru/killer666/hearthstone/test/LoadingScreen;)V

    .line 15
    sget-boolean v0, Lru/killer666/hearthstone/DownloadSelector;->isP2P:Z

    if-eqz v0, :cond_d

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/killer666/hearthstone/test/LoadingScreen;->m_loadingFailed:Z

    .line 17
    invoke-static {}, Lru/killer666/hearthstone/DownloadSelector;->startP2P()V

    .line 20
    :cond_d
    return-void
.end method

.method public thisaccess(Lru/killer666/hearthstone/test/LoadingScreen;)V
    .registers 2
    .param p1, "_this"    # Lru/killer666/hearthstone/test/LoadingScreen;

    .prologue
    .line 10
    invoke-virtual {p1}, Lru/killer666/hearthstone/test/LoadingScreen;->run()V

    .line 11
    return-void
.end method
