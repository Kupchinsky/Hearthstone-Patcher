.class Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$2;
.super Landroid/widget/EditText;
.source "HearthstoneKeyboardDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->createSoftInputView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$2;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    .line 272
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 277
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$2;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$2;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    invoke-virtual {v2}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getSoftInputStr()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->reportStrAndHide(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->access$0(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;Ljava/lang/String;Z)V

    .line 279
    :cond_0
    const/16 v1, 0x54

    if-ne p1, v1, :cond_1

    .line 281
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 287
    if-eqz p1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$2;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    # getter for: Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;
    invoke-static {v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->access$1(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 290
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 292
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
