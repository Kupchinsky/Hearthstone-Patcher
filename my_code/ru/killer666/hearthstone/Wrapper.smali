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
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadingScreen_DownloadObbFromGoogle_run()V
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    new-instance v1, Lru/killer666/hearthstone/VersionChangesHistory;

    invoke-direct {v1}, Lru/killer666/hearthstone/VersionChangesHistory;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    new-instance v1, Lru/killer666/hearthstone/InterfaceSelector;

    invoke-direct {v1}, Lru/killer666/hearthstone/InterfaceSelector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    new-instance v1, Lru/killer666/hearthstone/CachePathChecker;

    invoke-direct {v1}, Lru/killer666/hearthstone/CachePathChecker;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    new-instance v1, Lru/killer666/hearthstone/UpdateChecker;

    invoke-direct {v1}, Lru/killer666/hearthstone/UpdateChecker;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {}, Lru/killer666/hearthstone/Wrapper;->runTasks()V

    .line 53
    return-void
.end method

.method static getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static runTasks()V
    .registers 7

    .prologue
    .line 20
    sget-object v4, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/killer666/hearthstone/WaitableTask;

    .line 21
    .local v3, "task":Lru/killer666/hearthstone/WaitableTask;
    const-string v4, "HearthstoneWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v3}, Lru/killer666/hearthstone/WaitableTask;->doTask()Z

    move-result v2

    .line 25
    .local v2, "isRequiredToRunning":Z
    if-nez v2, :cond_46

    .line 26
    const-string v4, "HearthstoneWrapper"

    const-string v5, "Skipped."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 30
    :cond_46
    :goto_46
    invoke-virtual {v3}, Lru/killer666/hearthstone/WaitableTask;->getEnded()Z

    move-result v4

    if-nez v4, :cond_62

    .line 32
    :try_start_4c
    invoke-virtual {v3}, Lru/killer666/hearthstone/WaitableTask;->getWaitObject()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_51} :catch_5d

    .line 33
    :try_start_51
    invoke-virtual {v3}, Lru/killer666/hearthstone/WaitableTask;->getWaitObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 34
    monitor-exit v5

    goto :goto_46

    :catchall_5a
    move-exception v4

    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v4
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5d} :catch_5d

    .line 35
    :catch_5d
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_46

    .line 40
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_62
    const-string v4, "HearthstoneWrapper"

    const-string v5, "Task completed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 43
    .end local v2    # "isRequiredToRunning":Z
    .end local v3    # "task":Lru/killer666/hearthstone/WaitableTask;
    :cond_6a
    sget-object v4, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 44
    return-void
.end method
