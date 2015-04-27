.class Lcom/blizzard/wtcg/hearthstone/Keyboard$1;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_ActivateTextField(Ljava/lang/String;Landroid/graphics/Rect;III)Landroid/graphics/Rect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$autocorrect:I

.field private final synthetic val$keyboardType:I

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$1;->val$name:Ljava/lang/String;

    iput p2, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$1;->val$keyboardType:I

    iput p3, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$1;->val$autocorrect:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 19
    # getter for: Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->access$0()Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    const-string v0, "Keyboard"

    const-string v1, "Plugin_ActivateTextField start."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v3, ""

    .line 24
    .local v3, "initialText":Ljava/lang/String;
    const/4 v6, 0x0

    .line 25
    .local v6, "multiline":Z
    const/4 v7, 0x0

    .line 26
    .local v7, "secure":Z
    const/4 v8, 0x0

    .line 27
    .local v8, "alert":Z
    const-string v9, ""

    .line 29
    .local v9, "placeholder":Ljava/lang/String;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->DisableFullscreen()V

    .line 31
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$1;->val$name:Ljava/lang/String;

    .line 33
    iget v4, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$1;->val$keyboardType:I

    iget v5, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$1;->val$autocorrect:I

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 31
    :goto_0
    invoke-direct/range {v0 .. v9}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->access$1(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;)V

    .line 38
    .end local v3    # "initialText":Ljava/lang/String;
    .end local v6    # "multiline":Z
    .end local v7    # "secure":Z
    .end local v8    # "alert":Z
    .end local v9    # "placeholder":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->access$0()Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->show()V

    .line 40
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    .line 41
    return-void

    .line 33
    .restart local v3    # "initialText":Ljava/lang/String;
    .restart local v6    # "multiline":Z
    .restart local v7    # "secure":Z
    .restart local v8    # "alert":Z
    .restart local v9    # "placeholder":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 40
    .end local v3    # "initialText":Ljava/lang/String;
    .end local v6    # "multiline":Z
    .end local v7    # "secure":Z
    .end local v8    # "alert":Z
    .end local v9    # "placeholder":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
