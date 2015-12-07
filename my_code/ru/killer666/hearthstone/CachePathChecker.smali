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

    .line 20
    sput-object v1, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lru/killer666/hearthstone/CachePathChecker;->restartRequired:Z

    .line 22
    sput-object v1, Lru/killer666/hearthstone/CachePathChecker;->instance:Lru/killer666/hearthstone/CachePathChecker;

    .line 23
    new-instance v0, Lru/killer666/hearthstone/CachePathChecker$1;

    invoke-direct {v0}, Lru/killer666/hearthstone/CachePathChecker$1;-><init>()V

    sput-object v0, Lru/killer666/hearthstone/CachePathChecker;->setPathClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 40
    sput-object p0, Lru/killer666/hearthstone/CachePathChecker;->instance:Lru/killer666/hearthstone/CachePathChecker;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lru/killer666/hearthstone/CachePathChecker;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/CachePathChecker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lru/killer666/hearthstone/CachePathChecker;->setCachePath(Ljava/lang/String;)V

    return-void
.end method

.method private setCachePath(Ljava/lang/String;)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 107
    const-string v0, "HearthstoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to set cache path to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_1a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    .line 111
    sget-object v0, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 113
    new-instance v9, Ljava/io/File;

    sget-object v0, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emptyfile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 116
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 118
    invoke-virtual {p0}, Lru/killer666/hearthstone/CachePathChecker;->endTask()V

    .line 120
    const-string v0, "cache_settings"

    invoke-static {v0}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 122
    .local v8, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v0, "cache_path"

    invoke-interface {v8, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    const-string v0, "HearthstoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache path successfully set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-boolean v0, Lru/killer666/hearthstone/CachePathChecker;->restartRequired:Z

    if-eqz v0, :cond_8d

    .line 128
    const-string v0, ""

    const-string v1, "\u0422\u0440\u0435\u0431\u0443\u0435\u0442\u0441\u044f \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u043a"

    const-string v2, "\u041e\u041a"

    new-instance v3, Lru/killer666/hearthstone/CachePathChecker$3;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/CachePathChecker$3;-><init>(Lru/killer666/hearthstone/CachePathChecker;)V

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_8d} :catch_8e

    .line 148
    .end local v8    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "file":Ljava/io/File;
    :cond_8d
    :goto_8d
    return-void

    .line 134
    :catch_8e
    move-exception v7

    .line 135
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "HearthstoneWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set cache path to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0412\u044b \u0432\u044b\u0431\u0440\u0430\u043b\u0438 \u043f\u0443\u0442\u044c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u041f\u0440\u0438 \u043f\u043e\u043f\u044b\u0442\u043a\u0435 \u0441\u043e\u0437\u0434\u0430\u0442\u044c \u0442\u0430\u043c \u0444\u0430\u0439\u043b \u043c\u044b \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u0438 \u043e\u0448\u0438\u0431\u043a\u0443: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n\n\u0423\u043a\u0430\u0436\u0438\u0442\u0435 \u0434\u0440\u0443\u0433\u043e\u0439 \u043f\u0443\u0442\u044c!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u041e\u041a"

    new-instance v3, Lru/killer666/hearthstone/CachePathChecker$4;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/CachePathChecker$4;-><init>(Lru/killer666/hearthstone/CachePathChecker;)V

    const-string v4, ""

    move-object v5, v11

    move v6, v10

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_8d
.end method


# virtual methods
.method public doTask()Z
    .registers 5

    .prologue
    .line 45
    const-string v1, "cache_settings"

    invoke-static {v1}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "cache_path"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "preferencesPath":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 48
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    .line 49
    const/4 v1, 0x0

    .line 103
    :goto_17
    return v1

    .line 52
    :cond_18
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lru/killer666/hearthstone/CachePathChecker$2;

    invoke-direct {v2, p0, v0}, Lru/killer666/hearthstone/CachePathChecker$2;-><init>(Lru/killer666/hearthstone/CachePathChecker;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    const/4 v1, 0x1

    goto :goto_17
.end method
