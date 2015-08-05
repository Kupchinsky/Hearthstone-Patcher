.class Lru/killer666/hearthstone/UpdateChecker$1$2;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/UpdateChecker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/UpdateChecker$1;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1$2;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$1$2;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    # getter for: Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;
    invoke-static {v0}, Lru/killer666/hearthstone/UpdateChecker$1;->access$0(Lru/killer666/hearthstone/UpdateChecker$1;)Lru/killer666/hearthstone/UpdateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lru/killer666/hearthstone/UpdateChecker;->endTask()V

    .line 235
    return-void
.end method
