.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$1;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$1;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$1;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iget-object v1, v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->tokenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$1;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    invoke-static {p2}, Lcom/blizzard/bma/service/ITokenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/blizzard/bma/service/ITokenService;

    move-result-object v2

    iput-object v2, v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;

    .line 747
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    const-string v0, "WebLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m_tokenService = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$1;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iget-object v2, v2, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void

    .line 747
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$1;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    iget-object v1, v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->tokenLock:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$1;->this$0:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_tokenService:Lcom/blizzard/bma/service/ITokenService;

    .line 757
    monitor-exit v1

    .line 761
    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
