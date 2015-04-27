.class Lru/killer666/hearthstone/InterfaceSelector$1$1;
.super Ljava/lang/Object;
.source "InterfaceSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/InterfaceSelector$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/InterfaceSelector$1;

.field private final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/InterfaceSelector$1;Landroid/content/SharedPreferences;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/InterfaceSelector$1$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$1;

    iput-object p2, p0, Lru/killer666/hearthstone/InterfaceSelector$1$1;->val$preferences:Landroid/content/SharedPreferences;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "targetSetting":I
    packed-switch p2, :pswitch_data_2c

    .line 65
    :goto_7
    iget-object v2, p0, Lru/killer666/hearthstone/InterfaceSelector$1$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "selected"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    iget-object v2, p0, Lru/killer666/hearthstone/InterfaceSelector$1$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$1;

    # getter for: Lru/killer666/hearthstone/InterfaceSelector$1;->this$0:Lru/killer666/hearthstone/InterfaceSelector;
    invoke-static {v2}, Lru/killer666/hearthstone/InterfaceSelector$1;->access$0(Lru/killer666/hearthstone/InterfaceSelector$1;)Lru/killer666/hearthstone/InterfaceSelector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lru/killer666/hearthstone/InterfaceSelector;->setInterface(I)V

    .line 71
    iget-object v2, p0, Lru/killer666/hearthstone/InterfaceSelector$1$1;->this$1:Lru/killer666/hearthstone/InterfaceSelector$1;

    # getter for: Lru/killer666/hearthstone/InterfaceSelector$1;->this$0:Lru/killer666/hearthstone/InterfaceSelector;
    invoke-static {v2}, Lru/killer666/hearthstone/InterfaceSelector$1;->access$0(Lru/killer666/hearthstone/InterfaceSelector$1;)Lru/killer666/hearthstone/InterfaceSelector;

    move-result-object v2

    invoke-virtual {v2}, Lru/killer666/hearthstone/InterfaceSelector;->endTask()V

    .line 72
    return-void

    .line 56
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :pswitch_28
    const/4 v1, 0x1

    .line 57
    goto :goto_7

    .line 59
    :pswitch_2a
    const/4 v1, 0x2

    .line 60
    goto :goto_7

    .line 53
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_2a
    .end packed-switch
.end method
