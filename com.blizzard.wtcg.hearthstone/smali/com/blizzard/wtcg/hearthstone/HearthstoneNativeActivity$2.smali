.class Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$2;
.super Ljava/lang/Object;
.source "HearthstoneNativeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$2;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity$2;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;

    # getter for: Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->m_loadingScreen:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;
    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;->access$0(Lcom/blizzard/wtcg/hearthstone/HearthstoneNativeActivity;)Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->Start()V

    .line 75
    return-void
.end method
