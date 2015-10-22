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

.field final synthetic val$items:Ljava/util/LinkedHashMap;

.field final synthetic val$items_keys:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/CachePathChecker$2;Ljava/util/LinkedHashMap;[Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 81
    iput-object p1, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;

    iput-object p2, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->val$items:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->val$items_keys:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 84
    iget-object v3, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->val$items:Ljava/util/LinkedHashMap;

    iget-object v4, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->val$items_keys:[Ljava/lang/CharSequence;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, "targetPath":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 88
    if-nez v2, :cond_66

    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd:"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v1, Landroid/widget/EditText;

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, "input":Landroid/widget/EditText;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 96
    iget-object v3, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;

    iget-object v3, v3, Lru/killer666/hearthstone/CachePathChecker$2;->val$preferencesPath:Ljava/lang/String;

    if-nez v3, :cond_61

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/data/com.blizzard.wtcg.hearthstone/files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_49
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 100
    const-string v3, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    new-instance v4, Lru/killer666/hearthstone/CachePathChecker$2$1$1;

    invoke-direct {v4, p0, v1}, Lru/killer666/hearthstone/CachePathChecker$2$1$1;-><init>(Lru/killer666/hearthstone/CachePathChecker$2$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 111
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "input":Landroid/widget/EditText;
    :goto_60
    return-void

    .line 96
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "input":Landroid/widget/EditText;
    :cond_61
    iget-object v3, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;

    iget-object v3, v3, Lru/killer666/hearthstone/CachePathChecker$2;->val$preferencesPath:Ljava/lang/String;

    goto :goto_49

    .line 110
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "input":Landroid/widget/EditText;
    :cond_66
    iget-object v3, p0, Lru/killer666/hearthstone/CachePathChecker$2$1;->this$1:Lru/killer666/hearthstone/CachePathChecker$2;

    iget-object v3, v3, Lru/killer666/hearthstone/CachePathChecker$2;->this$0:Lru/killer666/hearthstone/CachePathChecker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Android/data/com.blizzard.wtcg.hearthstone/files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lru/killer666/hearthstone/CachePathChecker;->setCachePath(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lru/killer666/hearthstone/CachePathChecker;->access$000(Lru/killer666/hearthstone/CachePathChecker;Ljava/lang/String;)V

    goto :goto_60
.end method
