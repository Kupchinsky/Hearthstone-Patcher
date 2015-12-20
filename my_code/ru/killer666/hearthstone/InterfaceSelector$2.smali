.class Lru/killer666/hearthstone/InterfaceSelector$2;
.super Ljava/lang/Object;
.source "InterfaceSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/InterfaceSelector;->askToNotAsk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/InterfaceSelector;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/InterfaceSelector;)V
    .registers 2
    .param p1, "this$0"    # Lru/killer666/hearthstone/InterfaceSelector;

    .prologue
    .line 35
    iput-object p1, p0, Lru/killer666/hearthstone/InterfaceSelector$2;->this$0:Lru/killer666/hearthstone/InterfaceSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lru/killer666/hearthstone/InterfaceSelector$2;->this$0:Lru/killer666/hearthstone/InterfaceSelector;

    invoke-virtual {v0}, Lru/killer666/hearthstone/InterfaceSelector;->endTask()V

    .line 38
    return-void
.end method
