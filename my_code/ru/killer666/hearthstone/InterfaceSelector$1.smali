.class Lru/killer666/hearthstone/InterfaceSelector$1;
.super Ljava/lang/Object;
.source "InterfaceSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/InterfaceSelector;->askToNotAsk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/InterfaceSelector;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/InterfaceSelector;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lru/killer666/hearthstone/InterfaceSelector$1;->this$0:Lru/killer666/hearthstone/InterfaceSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 26
    const-string v2, "iface_settings"

    invoke-static {v2}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 27
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "notaskagain"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    iget-object v2, p0, Lru/killer666/hearthstone/InterfaceSelector$1;->this$0:Lru/killer666/hearthstone/InterfaceSelector;

    invoke-virtual {v2}, Lru/killer666/hearthstone/InterfaceSelector;->endTask()V

    .line 33
    return-void
.end method
