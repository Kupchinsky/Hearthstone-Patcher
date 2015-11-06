.class Lru/killer666/hearthstone/InterfaceSelector;
.super Lru/killer666/hearthstone/WaitableTask;
.source "InterfaceSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/killer666/hearthstone/InterfaceSelector$SelectedInterface;
    }
.end annotation


# static fields
.field private static final prefsFile:Ljava/lang/String; = "iface_settings"

.field public static final selectedIface:Lru/killer666/hearthstone/InterfaceSelector$SelectedInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lru/killer666/hearthstone/InterfaceSelector$SelectedInterface;

    invoke-direct {v0}, Lru/killer666/hearthstone/InterfaceSelector$SelectedInterface;-><init>()V

    sput-object v0, Lru/killer666/hearthstone/InterfaceSelector;->selectedIface:Lru/killer666/hearthstone/InterfaceSelector$SelectedInterface;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lru/killer666/hearthstone/InterfaceSelector;I)V
    .registers 2
    .param p0, "x0"    # Lru/killer666/hearthstone/InterfaceSelector;
    .param p1, "x1"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lru/killer666/hearthstone/InterfaceSelector;->setInterface(I)V

    return-void
.end method

.method static synthetic access$100(Lru/killer666/hearthstone/InterfaceSelector;)V
    .registers 1
    .param p0, "x0"    # Lru/killer666/hearthstone/InterfaceSelector;

    .prologue
    .line 10
    invoke-direct {p0}, Lru/killer666/hearthstone/InterfaceSelector;->askToNotAsk()V

    return-void
.end method

.method private askToNotAsk()V
    .registers 4

    .prologue
    .line 23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u044c \u0438\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441 \u0434\u043b\u044f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lru/killer666/hearthstone/InterfaceSelector;->selectedIface:Lru/killer666/hearthstone/InterfaceSelector$SelectedInterface;

    iget-boolean v1, v1, Lru/killer666/hearthstone/InterfaceSelector$SelectedInterface;->isTablet:Z

    if-eqz v1, :cond_50

    const-string v1, "\u043f\u043b\u0430\u043d\u0448\u0435\u0442\u043e\u0432"

    :goto_1a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0438 \u0431\u043e\u043b\u044c\u0448\u0435 \u043d\u0435 \u0441\u043f\u0440\u0430\u0448\u0438\u0432\u0430\u0442\u044c?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 27
    const-string v1, "Hearthstone"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 28
    const-string v1, "\u0414\u0430"

    new-instance v2, Lru/killer666/hearthstone/InterfaceSelector$1;

    invoke-direct {v2, p0}, Lru/killer666/hearthstone/InterfaceSelector$1;-><init>(Lru/killer666/hearthstone/InterfaceSelector;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    const-string v1, "\u041d\u0435\u0442"

    new-instance v2, Lru/killer666/hearthstone/InterfaceSelector$2;

    invoke-direct {v2, p0}, Lru/killer666/hearthstone/InterfaceSelector$2;-><init>(Lru/killer666/hearthstone/InterfaceSelector;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 51
    return-void

    .line 25
    :cond_50
    const-string v1, "\u0442\u0435\u043b\u0435\u0444\u043e\u043d\u043e\u0432"

    goto :goto_1a
.end method

.method private setInterface(I)V
    .registers 4
    .param p1, "newInterface"    # I

    .prologue
    .line 17
    sget-object v1, Lru/killer666/hearthstone/InterfaceSelector;->selectedIface:Lru/killer666/hearthstone/InterfaceSelector$SelectedInterface;

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v1, Lru/killer666/hearthstone/InterfaceSelector$SelectedInterface;->isTablet:Z

    .line 18
    return-void

    .line 17
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method doTask()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 56
    const-string v4, "HearthstoneWrapper"

    const-string v5, "Okay, let\'s start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v4, "iface_settings"

    invoke-static {v4}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 61
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "notaskagain"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "prefNotAskAgain":Z
    const-string v4, "selected"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, "prefIface":I
    if-eqz v1, :cond_44

    if-eq v0, v6, :cond_44

    const/4 v4, 0x2

    if-eq v0, v4, :cond_44

    .line 68
    const-string v4, "HearthstoneWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force use "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interface."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0, v0}, Lru/killer666/hearthstone/InterfaceSelector;->setInterface(I)V

    .line 104
    :goto_43
    return v3

    .line 73
    :cond_44
    const-string v3, "HearthstoneWrapper"

    const-string v4, "Showing dialog..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v4, Lru/killer666/hearthstone/InterfaceSelector$3;

    invoke-direct {v4, p0, v2}, Lru/killer666/hearthstone/InterfaceSelector$3;-><init>(Lru/killer666/hearthstone/InterfaceSelector;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    const/4 v3, 0x1

    goto :goto_43
.end method
