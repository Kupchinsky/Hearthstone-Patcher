.class Lcom/blizzard/wtcg/hearthstone/Keyboard$5;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/Keyboard;->Plugin_SetTextFieldMaxCharacters(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$maxCharacters:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$5;->val$maxCharacters:I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    # getter for: Lcom/blizzard/wtcg/hearthstone/Keyboard;->m_softInputDialog:Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/Keyboard;->access$0()Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;

    move-result-object v0

    iget v1, p0, Lcom/blizzard/wtcg/hearthstone/Keyboard$5;->val$maxCharacters:I

    invoke-virtual {v0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->setTextFieldMaxCharacters(I)V

    .line 134
    return-void
.end method
