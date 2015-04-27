.class Lcom/blizzard/wtcg/hearthstone/Keyboard$6;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_CancelInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 142
    # getter for: Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->access$0()Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->cancelInput()V

    .line 143
    return-void
.end method
