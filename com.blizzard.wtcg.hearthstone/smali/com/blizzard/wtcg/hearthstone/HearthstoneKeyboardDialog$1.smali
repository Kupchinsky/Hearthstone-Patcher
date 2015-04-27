.class Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$1;
.super Ljava/lang/Object;
.source "HearthstoneKeyboardDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZZZLjava/lang/String;)V
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
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$1;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 112
    if-eqz p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$1;->this$0:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 116
    :cond_0
    return-void
.end method
