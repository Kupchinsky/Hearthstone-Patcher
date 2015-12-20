.class Lru/killer666/hearthstone/XposedUpdateChecker$5;
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


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/XposedUpdateChecker;Landroid/app/ProgressDialog;)V
    .registers 3
    .param p1, "this$0"    # Lru/killer666/hearthstone/XposedUpdateChecker;

    .prologue
    .line 237
    iput-object p1, p0, Lru/killer666/hearthstone/XposedUpdateChecker$5;->this$0:Lru/killer666/hearthstone/XposedUpdateChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/XposedUpdateChecker$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lru/killer666/hearthstone/XposedUpdateChecker$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 241
    return-void
.end method
