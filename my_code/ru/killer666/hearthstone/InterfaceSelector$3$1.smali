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

.field private final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/InterfaceSelector$3;Landroid/content/SharedPreferences;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/InterfaceSelector$3$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$3;

    iput-object p2, p0, Lru/killer666/hearthstone/InterfaceSelector$3$1;->val$preferences:Landroid/content/SharedPreferences;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 91
    iget-object v1, p0, Lru/killer666/hearthstone/InterfaceSelector$3$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "selected"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    iget-object v1, p0, Lru/killer666/hearthstone/InterfaceSelector$3$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$3;

    # getter for: Lru/killer666/hearthstone/InterfaceSelector$3;->this$0:Lru/killer666/hearthstone/InterfaceSelector;
    invoke-static {v1}, Lru/killer666/hearthstone/InterfaceSelector$3;->access$0(Lru/killer666/hearthstone/InterfaceSelector$3;)Lru/killer666/hearthstone/InterfaceSelector;

    move-result-object v1

    # invokes: Lru/killer666/hearthstone/InterfaceSelector;->setInterface(I)V
    invoke-static {v1, p2}, Lru/killer666/hearthstone/InterfaceSelector;->access$0(Lru/killer666/hearthstone/InterfaceSelector;I)V

    .line 97
    iget-object v1, p0, Lru/killer666/hearthstone/InterfaceSelector$3$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$3;

    # getter for: Lru/killer666/hearthstone/InterfaceSelector$3;->this$0:Lru/killer666/hearthstone/InterfaceSelector;
    invoke-static {v1}, Lru/killer666/hearthstone/InterfaceSelector$3;->access$0(Lru/killer666/hearthstone/InterfaceSelector$3;)Lru/killer666/hearthstone/InterfaceSelector;

    move-result-object v1

    # invokes: Lru/killer666/hearthstone/InterfaceSelector;->askToNotAsk()V
    invoke-static {v1}, Lru/killer666/hearthstone/InterfaceSelector;->access$1(Lru/killer666/hearthstone/InterfaceSelector;)V

    .line 98
    return-void
.end method
