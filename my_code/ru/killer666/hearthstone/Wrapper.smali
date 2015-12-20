.class public Lru/killer666/hearthstone/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HearthstoneWrapper"

.field public static isHasAssembly:Z

.field public static isXposed:Z

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

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lru/killer666/hearthstone/Wrapper;->isXposed:Z

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lru/killer666/hearthstone/Wrapper;->isHasAssembly:Z

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
    .line 49
    sget-object v1, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    sget-boolean v0, Lru/killer666/hearthstone/Wrapper;->isHasAssembly:Z

    if-eqz v0, :cond_26

    new-instance v0, Lru/killer666/hearthstone/InterfaceSelector;

    invoke-direct {v0}, Lru/killer666/hearthstone/InterfaceSelector;-><init>()V

    :goto_b
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    new-instance v1, Lru/killer666/hearthstone/CachePathChecker;

    invoke-direct {v1}, Lru/killer666/hearthstone/CachePathChecker;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    new-instance v1, Lru/killer666/hearthstone/UpdateChecker;

    invoke-direct {v1}, Lru/killer666/hearthstone/UpdateChecker;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {}, Lru/killer666/hearthstone/Wrapper;->runTasks()V

    .line 54
    return-void

    .line 49
    :cond_26
    new-instance v0, Lru/killer666/hearthstone/InterfaceNotAvailable;

    invoke-direct {v0}, Lru/killer666/hearthstone/InterfaceNotAvailable;-><init>()V

    goto :goto_b
.end method

.method static getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static runTasks()V
    .registers 7

    .prologue
    .line 22
    sget-object v3, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v1, "isRequiredToWait":Z
    .local v2, "task":Lru/killer666/hearthstone/WaitableTask;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "task":Lru/killer666/hearthstone/WaitableTask;
    check-cast v2, Lru/killer666/hearthstone/WaitableTask;

    .line 23
    .restart local v2    # "task":Lru/killer666/hearthstone/WaitableTask;
    const-string v3, "HearthstoneWrapper"

    .end local v1    # "isRequiredToWait":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Running task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

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

    .line 25
    invoke-virtual {v2}, Lru/killer666/hearthstone/WaitableTask;->doTask()Z

    move-result v1

    .line 27
    .restart local v1    # "isRequiredToWait":Z
    if-nez v1, :cond_46

    .line 28
    const-string v3, "HearthstoneWrapper"

    const-string v5, "Skipped."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 32
    :cond_46
    :goto_46
    invoke-virtual {v2}, Lru/killer666/hearthstone/WaitableTask;->getEnded()Z

    move-result v3

    if-nez v3, :cond_62

    .line 34
    :try_start_4c
    invoke-virtual {v2}, Lru/killer666/hearthstone/WaitableTask;->getWaitObject()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_51} :catch_5d

    .line 35
    :try_start_51
    invoke-virtual {v2}, Lru/killer666/hearthstone/WaitableTask;->getWaitObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 36
    monitor-exit v5

    goto :goto_46

    :catchall_5a
    move-exception v3

    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v3
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5d} :catch_5d

    .line 37
    :catch_5d
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_46

    .line 42
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_62
    const-string v3, "HearthstoneWrapper"

    const-string v5, "Task completed."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 45
    :cond_6a
    sget-object v3, Lru/killer666/hearthstone/Wrapper;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 46
    return-void
.end method
