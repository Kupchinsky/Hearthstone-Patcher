.class Lcom/blizzard/wtcg/hearthstone/Keyboard$2;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_DeactivateTextField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "Keyboard"

    const-string v1, "Plugin_DeactivateTextField start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    # getter for: Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->access$0()Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->dismiss()V

    .line 79
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->access$1(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;)V

    .line 81
    const-string v0, "Keyboard"

    const-string v1, "Plugin_DeactivateTextField end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
