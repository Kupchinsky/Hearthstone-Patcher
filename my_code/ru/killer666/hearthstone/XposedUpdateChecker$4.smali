.class Lru/killer666/hearthstone/XposedUpdateChecker$4;
.super Ljava/lang/Object;
.source "XposedUpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/XposedUpdateChecker;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/XposedUpdateChecker;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$readed:[I


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/XposedUpdateChecker;Landroid/app/ProgressDialog;[I)V
    .registers 4
    .param p1, "this$0"    # Lru/killer666/hearthstone/XposedUpdateChecker;

    .prologue
    .line 212
    iput-object p1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$4;->this$0:Lru/killer666/hearthstone/XposedUpdateChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/XposedUpdateChecker$4;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lru/killer666/hearthstone/XposedUpdateChecker$4;->val$readed:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lru/killer666/hearthstone/XposedUpdateChecker$4;->val$progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$4;->val$readed:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 216
    return-void
.end method
