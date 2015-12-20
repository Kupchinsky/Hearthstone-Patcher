.class Lru/killer666/hearthstone/UpdateChecker$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$_progressDialog:[Landroid/app/ProgressDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$waitObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker;[Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 5
    .param p1, "this$0"    # Lru/killer666/hearthstone/UpdateChecker;

    .prologue
    .line 167
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$_progressDialog:[Landroid/app/ProgressDialog;

    iput-object p3, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$waitObject:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 170
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$_progressDialog:[Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    iget-object v2, p0, Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    iget-object v3, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$activity:Landroid/app/Activity;

    const-string v4, "\u0420\u2014\u0420\u00b0\u0420\u0456\u0421\u0402\u0421\u0453\u0420\u00b7\u0420\u0454\u0420\u00b0 \u0421\u201e\u0420\u00b0\u0420\u2116\u0420\u00bb\u0420\u0455\u0420\u0406 \u0420\u0458\u0420\u0455\u0420\u0491\u0420\u00b0..."

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lru/killer666/hearthstone/UpdateChecker;->launchRingDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v2

    aput-object v2, v0, v1

    .line 171
    iget-object v0, p0, Lru/killer666/hearthstone/UpdateChecker$1;->val$waitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 172
    return-void
.end method
