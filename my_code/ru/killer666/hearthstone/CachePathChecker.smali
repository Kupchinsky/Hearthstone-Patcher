.class public Lru/killer666/hearthstone/CachePathChecker;
.super Lru/killer666/hearthstone/WaitableTask;
.source "CachePathChecker.java"


# static fields
.field public static cachePath:Ljava/io/File; = null

.field static instance:Lru/killer666/hearthstone/CachePathChecker; = null

.field static final prefsFile:Ljava/lang/String; = "cache_settings"

.field static restartRequired:Z

.field public static setPathClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 17
    sput-object v1, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    .line 18
    new-instance v0, Lru/killer666/hearthstone/CachePathChecker$1;

    invoke-direct {v0}, Lru/killer666/hearthstone/CachePathChecker$1;-><init>()V

    sput-object v0, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lru/killer666/hearthstone/CachePathChecker;->restartRequired:Z

    .line 36
    sput-object v1, Lru/killer666/hearthstone/CachePathChecker;->instance:Lru/killer666/hearthstone/CachePathChecker;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 41
    sput-object p0, Lru/killer666/hearthstone/CachePathChecker;->instance:Lru/killer666/hearthstone/CachePathChecker;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lru/killer666/hearthstone/CachePathChecker;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lru/killer666/hearthstone/CachePathChecker;->setCachePath(Ljava/lang/String;)V

    return-void
.end method

.method private setCachePath(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    .line 131
    const-string v0, "cache_settings"

    invoke-static {v0}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 133
    .local v7, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v0, "cache_path"

    invoke-interface {v7, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    sget-boolean v0, Lru/killer666/hearthstone/CachePathChecker;->restartRequired:Z

    if-eqz v0, :cond_2f

    .line 138
    const-string v0, ""

    const-string v1, "\u0422\u0440\u0435\u0431\u0443\u0435\u0442\u0441\u044f \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u043a"

    const-string v2, "\u0414\u0430"

    new-instance v3, Lru/killer666/hearthstone/CachePathChecker$3;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/CachePathChecker$3;-><init>(Lru/killer666/hearthstone/CachePathChecker;)V

    .line 144
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 138
    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 146
    :cond_2f
    return-void
.end method


# virtual methods
.method public doTask()Z
    .registers 5

    .prologue
    .line 47
    const-string v1, "cache_settings"

    invoke-static {v1}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cache_path"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "preferencesPath":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    .line 52
    const/4 v1, 0x0

    .line 124
    :goto_17
    return v1

    .line 55
    :cond_18
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lru/killer666/hearthstone/CachePathChecker$2;

    invoke-direct {v2, p0, v0}, Lru/killer666/hearthstone/CachePathChecker$2;-><init>(Lru/killer666/hearthstone/CachePathChecker;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    const/4 v1, 0x1

    goto :goto_17
.end method
