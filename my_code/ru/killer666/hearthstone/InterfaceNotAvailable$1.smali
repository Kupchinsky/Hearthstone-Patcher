.class Lru/killer666/hearthstone/InterfaceNotAvailable$1;
.super Ljava/lang/Object;
.source "InterfaceNotAvailable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/InterfaceNotAvailable;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/InterfaceNotAvailable;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/InterfaceNotAvailable;)V
    .registers 2
    .param p1, "this$0"    # Lru/killer666/hearthstone/InterfaceNotAvailable;

    .prologue
    .line 9
    iput-object p1, p0, Lru/killer666/hearthstone/InterfaceNotAvailable$1;->this$0:Lru/killer666/hearthstone/InterfaceNotAvailable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 11
    iget-object v0, p0, Lru/killer666/hearthstone/InterfaceNotAvailable$1;->this$0:Lru/killer666/hearthstone/InterfaceNotAvailable;

    invoke-virtual {v0}, Lru/killer666/hearthstone/InterfaceNotAvailable;->endTask()V

    .line 12
    return-void
.end method