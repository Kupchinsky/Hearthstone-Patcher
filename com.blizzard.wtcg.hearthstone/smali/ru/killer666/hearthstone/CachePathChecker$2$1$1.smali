.class Lru/killer666/hearthstone/CachePathChecker$2$1$1;
.super Ljava/lang/Object;
.source "CachePathChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/CachePathChecker$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/killer666/hearthstone/CachePathChecker$2$1;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/CachePathChecker$2$1;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/CachePathChecker$2$1$1;->this$2:Lru/killer666/hearthstone/CachePathChecker$2$1;

    iput-object p2, p0, Lru/killer666/hearthstone/CachePathChecker$2$1$1;->val$input:Landroid/widget/EditText;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lru/killer666/hearthstone/CachePathChecker$2$1$1;->this$2:Lru/killer666/hearthstone/CachePathChecker$2$1;

    # getter for: Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;
    invoke-static {v0}, Lru/killer666/hearthstone/CachePathChecker$2$1;->access$0(Lru/killer666/hearthstone/CachePathChecker$2$1;)Lru/killer666/hearthstone/CachePathChecker$2;

    move-result-object v0

    # getter for: Lru/killer666/hearthstone/CachePathChecker$2;->this$0:Lru/killer666/hearthstone/CachePathChecker;
    invoke-static {v0}, Lru/killer666/hearthstone/CachePathChecker$2;->access$0(Lru/killer666/hearthstone/CachePathChecker$2;)Lru/killer666/hearthstone/CachePathChecker;

    move-result-object v0

    iget-object v1, p0, Lru/killer666/hearthstone/CachePathChecker$2$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lru/killer666/hearthstone/CachePathChecker;->setCachePath(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lru/killer666/hearthstone/CachePathChecker;->access$0(Lru/killer666/hearthstone/CachePathChecker;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lru/killer666/hearthstone/CachePathChecker$2$1$1;->this$2:Lru/killer666/hearthstone/CachePathChecker$2$1;

    # getter for: Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;
    invoke-static {v0}, Lru/killer666/hearthstone/CachePathChecker$2$1;->access$0(Lru/killer666/hearthstone/CachePathChecker$2$1;)Lru/killer666/hearthstone/CachePathChecker$2;

    move-result-object v0

    # getter for: Lru/killer666/hearthstone/CachePathChecker$2;->this$0:Lru/killer666/hearthstone/CachePathChecker;
    invoke-static {v0}, Lru/killer666/hearthstone/CachePathChecker$2;->access$0(Lru/killer666/hearthstone/CachePathChecker$2;)Lru/killer666/hearthstone/CachePathChecker;

    move-result-object v0

    invoke-virtual {v0}, Lru/killer666/hearthstone/CachePathChecker;->endTask()V

    .line 107
    return-void
.end method
