.class Lru/killer666/hearthstone/UpdateChecker$5$2;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/UpdateChecker$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/UpdateChecker$5;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker$5;)V
    .registers 2
    .param p1, "this$1"    # Lru/killer666/hearthstone/UpdateChecker$5;

    .prologue
    .line 322
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$5$2;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$5$2;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v0, v0, Lru/killer666/hearthstone/UpdateChecker$5;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    invoke-virtual {v0}, Lru/killer666/hearthstone/UpdateChecker;->endTask()V

    .line 325
    return-void
.end method
