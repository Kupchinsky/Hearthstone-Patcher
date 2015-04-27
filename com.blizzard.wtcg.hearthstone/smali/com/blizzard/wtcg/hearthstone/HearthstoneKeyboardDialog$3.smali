.class Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$3;
.super Ljava/lang/Object;
.source "HearthstoneKeyboardDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$3;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 308
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$3;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$3;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    invoke-virtual {v2}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getSoftInputStr()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->reportStrAndHide(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->access$0(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;Ljava/lang/String;Z)V

    .line 311
    const/4 v0, 0x1

    .line 313
    :cond_0
    return v0
.end method
