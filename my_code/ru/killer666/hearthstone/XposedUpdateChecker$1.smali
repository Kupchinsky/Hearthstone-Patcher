.class Lru/killer666/hearthstone/XposedUpdateChecker$1;
.super Ljava/lang/Object;
.source "XposedUpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/XposedUpdateChecker;->downloadFailed(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/XposedUpdateChecker;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/XposedUpdateChecker;)V
    .registers 2
    .param p1, "this$0"    # Lru/killer666/hearthstone/XposedUpdateChecker;

    .prologue
    .line 59
    iput-object p1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$1;->this$0:Lru/killer666/hearthstone/XposedUpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lru/killer666/hearthstone/XposedUpdateChecker$1;->this$0:Lru/killer666/hearthstone/XposedUpdateChecker;

    invoke-virtual {v0}, Lru/killer666/hearthstone/XposedUpdateChecker;->endTask()V

    .line 62
    return-void
.end method
