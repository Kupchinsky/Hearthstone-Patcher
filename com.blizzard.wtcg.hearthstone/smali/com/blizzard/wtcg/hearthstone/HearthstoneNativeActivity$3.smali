.class Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$3;
.super Ljava/lang/Thread;
.source "HearthstoneNativeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$3;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 128
    :goto_1
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->Show()V

    .line 129
    return-void

    .line 126
    :cond_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_1
.end method
