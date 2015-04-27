.class public Lcom/blizzard/wtcg/hearthstone/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# static fields
.field private static m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Plugin_ActivateTextField(Ljava/lang/String;Landroid/graphics/Rect;III)Landroid/graphics/Rect;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "autocorrect"    # I
    .param p3, "keyboardType"    # I
    .param p4, "returnKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/Keyboard$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/blizzard/wtcg/hearthstone/Keyboard$1;-><init>(Ljava/lang/String;II)V

    .line 43
    .local v1, "r":Ljava/lang/Runnable;
    const/4 v2, 0x0

    .line 44
    .local v2, "totalTime":I
    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xa

    if-lt v0, v3, :cond_1

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    const-string v3, "Keyboard"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Plugin_ActivateTextField end (slept "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p1}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_SetTextFieldBounds(Landroid/graphics/Rect;)V

    .line 58
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_GetKeyboardBounds()Landroid/graphics/Rect;

    move-result-object v3

    return-object v3

    .line 50
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_GetKeyboardBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_0

    .line 52
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 53
    add-int/lit8 v2, v2, 0x32

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static Plugin_CancelInput()V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/Keyboard$6;

    invoke-direct {v1}, Lcom/blizzard/wtcg/hearthstone/Keyboard$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static Plugin_DeactivateTextField()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/Keyboard$2;

    invoke-direct {v1}, Lcom/blizzard/wtcg/hearthstone/Keyboard$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static Plugin_GetKeyboardBounds()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 63
    sget-object v4, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    if-nez v4, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v0, "keyboardArea":Landroid/graphics/Rect;
    .local v1, "keyboardTop":I
    .local v2, "screenHeight":I
    .local v3, "screenWidth":I
    :goto_0
    return-object v0

    .line 64
    .end local v0    # "keyboardArea":Landroid/graphics/Rect;
    .end local v1    # "keyboardTop":I
    .end local v2    # "screenHeight":I
    .end local v3    # "screenWidth":I
    :cond_0
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 65
    .restart local v3    # "screenWidth":I
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 66
    .restart local v2    # "screenHeight":I
    sget-object v4, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    invoke-virtual {v4}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getKeyboardTop()I

    move-result v1

    .line 67
    .restart local v1    # "keyboardTop":I
    const-string v4, "Keyboard"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "top of keyboard is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .restart local v0    # "keyboardArea":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public static Plugin_GetTextFieldText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 103
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getSoftInputStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static Plugin_IsTextFieldActive()Z
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public static Plugin_SetTextFieldBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 87
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/Keyboard$3;

    invoke-direct {v1, p0}, Lcom/blizzard/wtcg/hearthstone/Keyboard$3;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static Plugin_SetTextFieldColor(FFFF)V
    .locals 2
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    .line 121
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static Plugin_SetTextFieldMaxCharacters(I)V
    .locals 2
    .param p0, "maxCharacters"    # I

    .prologue
    .line 130
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/blizzard/wtcg/hearthstone/Keyboard$5;

    invoke-direct {v1, p0}, Lcom/blizzard/wtcg/hearthstone/Keyboard$5;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static Plugin_SetTextFieldText(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    invoke-virtual {v0, p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->setSoftInputStr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0()Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;)V
    .locals 0

    .prologue
    .line 10
    sput-object p0, Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    return-void
.end method
