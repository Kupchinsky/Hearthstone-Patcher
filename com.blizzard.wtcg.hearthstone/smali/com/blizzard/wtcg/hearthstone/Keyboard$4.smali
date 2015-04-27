.class Lcom/blizzard/wtcg/hearthstone/Keyboard$4;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_SetTextFieldColor(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$a:F

.field private final synthetic val$b:F

.field private final synthetic val$g:F

.field private final synthetic val$r:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;->val$r:F

    iput p2, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;->val$g:F

    iput p3, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;->val$b:F

    iput p4, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;->val$a:F

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 124
    # getter for: Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->access$0()Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    move-result-object v0

    iget v1, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;->val$r:F

    iget v2, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;->val$g:F

    iget v3, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;->val$b:F

    iget v4, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$4;->val$a:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->setTextFieldColor(FFFF)V

    .line 125
    return-void
.end method
