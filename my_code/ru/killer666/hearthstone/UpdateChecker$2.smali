.class Lru/killer666/hearthstone/UpdateChecker$2;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/UpdateChecker;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/UpdateChecker;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$2;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 254
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 255
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$2;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    invoke-virtual {v0}, Lru/killer666/hearthstone/UpdateChecker;->endTask()V

    .line 256
    return-void
.end method
