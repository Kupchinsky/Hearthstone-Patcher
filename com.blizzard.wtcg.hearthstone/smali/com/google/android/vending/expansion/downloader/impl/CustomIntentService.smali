.class public abstract Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;
.super Landroid/app/Service;
.source "CustomIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CancellableIntentService"

.field private static final WHAT_MESSAGE:I = -0xa


# instance fields
.field private mName:Ljava/lang/String;

.field private mRedelivery:Z

.field private volatile mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IntentService["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "localHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    .line 58
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;-><init>(Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    .line 64
    .local v0, "localThread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 68
    const-string v1, "CancellableIntentService"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "paramIntent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/16 v2, -0xa

    .line 77
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    invoke-virtual {v1}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, "localMessage":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 80
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iput v2, v0, Landroid/os/Message;->what:I

    .line 82
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mServiceHandler:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    .end local v0    # "localMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "paramIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onStart(Landroid/content/Intent;I)V

    .line 89
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mRedelivery:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setIntentRedelivery(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->mRedelivery:Z

    .line 94
    return-void
.end method

.method protected abstract shouldStop()Z
.end method
