.class Lru/killer666/hearthstone/VersionChangesHistory$1;
.super Ljava/lang/Object;
.source "VersionChangesHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/VersionChangesHistory;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/VersionChangesHistory;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/VersionChangesHistory;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lru/killer666/hearthstone/VersionChangesHistory$1;->this$0:Lru/killer666/hearthstone/VersionChangesHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 37
    iget-object v0, p0, Lru/killer666/hearthstone/VersionChangesHistory$1;->this$0:Lru/killer666/hearthstone/VersionChangesHistory;

    invoke-virtual {v0}, Lru/killer666/hearthstone/VersionChangesHistory;->endTask()V

    .line 38
    return-void
.end method
