.class Lru/killer666/hearthstone/CachePathChecker$1;
.super Ljava/lang/Object;
.source "CachePathChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/killer666/hearthstone/CachePathChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 25
    const-string v1, "cache_settings"

    invoke-static {v1}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cache_path"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    const/4 v1, 0x1

    sput-boolean v1, Lru/killer666/hearthstone/CachePathChecker;->restartRequired:Z

    .line 32
    sget-object v1, Lru/killer666/hearthstone/CachePathChecker;->instance:Lru/killer666/hearthstone/CachePathChecker;

    if-eqz v1, :cond_1e

    .line 33
    sget-object v1, Lru/killer666/hearthstone/CachePathChecker;->instance:Lru/killer666/hearthstone/CachePathChecker;

    invoke-virtual {v1}, Lru/killer666/hearthstone/CachePathChecker;->doTask()Z

    .line 34
    :cond_1e
    return-void
.end method
