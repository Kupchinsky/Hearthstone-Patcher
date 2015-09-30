.class public Lru/killer666/hearthstone/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HearthstoneWrapper"

.field private static final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lru/killer666/hearthstone/WaitableTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadingScreen_DownloadObbFromGoogle_run()V
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    new-instance v1, Lru/killer666/hearthstone/InterfaceSelector;

    invoke-direct {v1}, Lru/killer666/hearthstone/InterfaceSelector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    new-instance v1, Lru/killer666/hearthstone/CachePathChecker;

    invoke-direct {v1}, Lru/killer666/hearthstone/CachePathChecker;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    new-instance v1, Lru/killer666/hearthstone/UpdateChecker;

    invoke-direct {v1}, Lru/killer666/hearthstone/UpdateChecker;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lru/killer666/hearthstone/Wrapper;->runTasks()V

    .line 65
    return-void
.end method

.method static getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static runTasks()V
    .registers 7

    .prologue
    .line 24
    sget-object v3, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v1, "isRequiredToRunning":Z
    .local v2, "task":Lru/killer666/hearthstone/WaitableTask;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 54
    sget-object v3, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 55
    return-void

    .line 24
    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "task":Lru/killer666/hearthstone/WaitableTask;
    check-cast v2, Lru/killer666/hearthstone/WaitableTask;

    .line 26
    .restart local v2    # "task":Lru/killer666/hearthstone/WaitableTask;
    const-string v3, "HearthstoneWrapper"

    .end local v1    # "isRequiredToRunning":Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Running task "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v2}, Lru/killer666/hearthstone/WaitableTask;->doTask()Z

    move-result v1

    .line 30
    .restart local v1    # "isRequiredToRunning":Z
    if-nez v1, :cond_55

    .line 32
    const-string v3, "HearthstoneWrapper"

    const-string v5, "Skipped."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 40
    :cond_48
    :try_start_48
    invoke-virtual {v2}, Lru/killer666/hearthstone/WaitableTask;->getWaitObject()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4d} :catch_66

    .line 42
    :try_start_4d
    invoke-virtual {v2}, Lru/killer666/hearthstone/WaitableTask;->getWaitObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 40
    monitor-exit v5
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_63

    .line 36
    :cond_55
    :goto_55
    invoke-virtual {v2}, Lru/killer666/hearthstone/WaitableTask;->getEnded()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 51
    const-string v3, "HearthstoneWrapper"

    const-string v5, "Task completed."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 40
    :catchall_63
    move-exception v3

    :try_start_64
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v3
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_66} :catch_66

    .line 45
    :catch_66
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_55
.end method
