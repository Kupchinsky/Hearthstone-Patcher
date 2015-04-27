.class Lcom/blizzard/wtcg/hearthstone/Keyboard$3;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_SetTextFieldBounds(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$bounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$3;->val$bounds:Landroid/graphics/Rect;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    const-string v0, "Keyboard"

    const-string v1, "Plugin_SetTextFieldBounds start."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "Keyboard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting text field bounds to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$3;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    # getter for: Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->access$0()Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$3;->val$bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->setTextFieldBounds(Landroid/graphics/Rect;)V

    .line 95
    const-string v0, "Keyboard"

    const-string v1, "Plugin_SetTextFieldBounds end."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
