.class Lru/killer666/hearthstone/InterfaceSelector$3$1;
.super Ljava/lang/Object;
.source "InterfaceSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/InterfaceSelector$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/InterfaceSelector$3;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/InterfaceSelector$3;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lru/killer666/hearthstone/InterfaceSelector$3$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 77
    iget-object v1, p0, Lru/killer666/hearthstone/InterfaceSelector$3$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$3;

    iget-object v1, v1, Lru/killer666/hearthstone/InterfaceSelector$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "selected"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    iget-object v1, p0, Lru/killer666/hearthstone/InterfaceSelector$3$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$3;

    iget-object v1, v1, Lru/killer666/hearthstone/InterfaceSelector$3;->this$0:Lru/killer666/hearthstone/InterfaceSelector;

    # invokes: Lru/killer666/hearthstone/InterfaceSelector;->setInterface(I)V
    invoke-static {v1, p2}, Lru/killer666/hearthstone/InterfaceSelector;->access$000(Lru/killer666/hearthstone/InterfaceSelector;I)V

    .line 83
    iget-object v1, p0, Lru/killer666/hearthstone/InterfaceSelector$3$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$3;

    iget-object v1, v1, Lru/killer666/hearthstone/InterfaceSelector$3;->this$0:Lru/killer666/hearthstone/InterfaceSelector;

    # invokes: Lru/killer666/hearthstone/InterfaceSelector;->askToNotAsk()V
    invoke-static {v1}, Lru/killer666/hearthstone/InterfaceSelector;->access$100(Lru/killer666/hearthstone/InterfaceSelector;)V

    .line 84
    return-void
.end method
