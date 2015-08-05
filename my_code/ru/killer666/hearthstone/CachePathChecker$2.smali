.class Lru/killer666/hearthstone/CachePathChecker$2;
.super Ljava/lang/Object;
.source "CachePathChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/CachePathChecker;->doTask()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/killer666/hearthstone/CachePathChecker;

.field private final synthetic val$preferencesPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/CachePathChecker;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/CachePathChecker$2;->this$0:Lru/killer666/hearthstone/CachePathChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/CachePathChecker$2;->val$preferencesPath:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lru/killer666/hearthstone/CachePathChecker$2;)Lru/killer666/hearthstone/CachePathChecker;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lru/killer666/hearthstone/CachePathChecker$2;->this$0:Lru/killer666/hearthstone/CachePathChecker;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 63
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 65
    .local v1, "items":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SD-\u043a\u0430\u0440\u0442\u0430 (KitKat/Lollipop) ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "...)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v2, "SD-\u043a\u0430\u0440\u0442\u0430 0 (/storage/sdcard0/...)"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v2, "SD-\u043a\u0430\u0440\u0442\u0430 1 (/storage/sdcard1/...)"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v2, "\u0412\u043d\u0435\u0448\u043d\u0435\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e (/mnt/usbotg/...)"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v2, "\u0414\u0440\u0443\u0433\u043e\u0439 \u043f\u0443\u0442\u044c (\u0443\u043a\u0430\u0437\u0430\u0442\u044c \u0432\u0440\u0443\u0447\u043d\u0443\u044e)"

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u0423\u043a\u0430\u0436\u0438\u0442\u0435 \u043f\u0443\u0442\u044c \u0434\u043b\u044f \u0445\u0440\u0430\u043d\u0435\u043d\u0438\u044f \u044f\u0449\u0438\u043a\u043e\u0432:"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    .line 76
    new-instance v4, Lru/killer666/hearthstone/CachePathChecker$2$1;

    iget-object v5, p0, Lru/killer666/hearthstone/CachePathChecker$2;->val$preferencesPath:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lru/killer666/hearthstone/CachePathChecker$2$1;-><init>(Lru/killer666/hearthstone/CachePathChecker$2;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 129
    return-void
.end method
