.class Lru/killer666/hearthstone/CachePathChecker$2$1;
.super Ljava/lang/Object;
.source "CachePathChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/CachePathChecker$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/CachePathChecker$2;

.field private final synthetic val$preferencesPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/CachePathChecker$2;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;

    iput-object p2, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->val$preferencesPath:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lru/killer666/hearthstone/CachePathChecker$2$1;)Lru/killer666/hearthstone/CachePathChecker$2;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, "targetPath":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_66

    .line 86
    packed-switch p2, :pswitch_data_9c

    .line 113
    :goto_a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 115
    if-nez v2, :cond_76

    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u0423\u043a\u0430\u0436\u0438\u0442\u0435 \u043f\u0443\u0442\u044c \u0434\u043b\u044f \u0445\u0440\u0430\u043d\u0435\u043d\u0438\u044f \u044f\u0449\u0438\u043a\u043e\u0432:"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 121
    new-instance v1, Landroid/widget/EditText;

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "input":Landroid/widget/EditText;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 123
    iget-object v3, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->val$preferencesPath:Ljava/lang/String;

    if-nez v3, :cond_73

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 124
    const-string v4, "/Android/data/com.blizzard.wtcg.hearthstone/files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    :goto_45
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 127
    const-string v3, "\u041f\u0440\u0438\u043d\u044f\u0442\u044c"

    new-instance v4, Lru/killer666/hearthstone/CachePathChecker$2$1$1;

    invoke-direct {v4, p0, v1}, Lru/killer666/hearthstone/CachePathChecker$2$1$1;-><init>(Lru/killer666/hearthstone/CachePathChecker$2$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 143
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "input":Landroid/widget/EditText;
    :goto_5c
    return-void

    .line 89
    :pswitch_5d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    goto :goto_a

    .line 97
    :cond_66
    packed-switch p2, :pswitch_data_a2

    goto :goto_a

    .line 100
    :pswitch_6a
    const-string v2, "/storage/sdcard0"

    .line 101
    goto :goto_a

    .line 103
    :pswitch_6d
    const-string v2, "/storage/sdcard1"

    .line 104
    goto :goto_a

    .line 106
    :pswitch_70
    const-string v2, "/mnt/usbotg"

    .line 107
    goto :goto_a

    .line 124
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "input":Landroid/widget/EditText;
    :cond_73
    iget-object v3, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->val$preferencesPath:Ljava/lang/String;

    goto :goto_45

    .line 140
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "input":Landroid/widget/EditText;
    :cond_76
    iget-object v3, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;

    # getter for: Lru/killer666/hearthstone/CachePathChecker$2;->this$0:Lru/killer666/hearthstone/CachePathChecker;
    invoke-static {v3}, Lru/killer666/hearthstone/CachePathChecker$2;->access$0(Lru/killer666/hearthstone/CachePathChecker$2;)Lru/killer666/hearthstone/CachePathChecker;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/Android/data/com.blizzard.wtcg.hearthstone/files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lru/killer666/hearthstone/CachePathChecker;->setCachePath(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lru/killer666/hearthstone/CachePathChecker;->access$0(Lru/killer666/hearthstone/CachePathChecker;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;

    # getter for: Lru/killer666/hearthstone/CachePathChecker$2;->this$0:Lru/killer666/hearthstone/CachePathChecker;
    invoke-static {v3}, Lru/killer666/hearthstone/CachePathChecker$2;->access$0(Lru/killer666/hearthstone/CachePathChecker$2;)Lru/killer666/hearthstone/CachePathChecker;

    move-result-object v3

    invoke-virtual {v3}, Lru/killer666/hearthstone/CachePathChecker;->endTask()V

    goto :goto_5c

    .line 86
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_5d
    .end packed-switch

    .line 97
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
    .end packed-switch
.end method
