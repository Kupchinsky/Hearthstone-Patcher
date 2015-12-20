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

.field final synthetic val$preferencesPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/CachePathChecker;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lru/killer666/hearthstone/CachePathChecker;

    .prologue
    .line 52
    iput-object p1, p0, Lru/killer666/hearthstone/CachePathChecker$2;->this$0:Lru/killer666/hearthstone/CachePathChecker;

    iput-object p2, p0, Lru/killer666/hearthstone/CachePathChecker$2;->val$preferencesPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 54
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .local v1, "items":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/CharSequence;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD-\u0420\u0454\u0420\u00b0\u0421\u0402\u0421\u201a\u0420\u00b0 \u0420\u0457\u0420\u0455 \u0421\u0453\u0420\u0458\u0420\u0455\u0420\u00bb\u0421\u2021\u0420\u00b0\u0420\u0405\u0420\u0451\u0421\u040b \u0420\u0491\u0420\u00bb\u0421\u040f KitKat/Lollipop+ ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "...)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v3, "SECONDARY_STORAGE"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 60
    const-string v3, "SD-\u0420\u0454\u0420\u00b0\u0421\u0402\u0421\u201a\u0420\u00b0 (Secondary)"

    const-string v4, "SECONDARY_STORAGE"

    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_4f
    const-string v3, "SD-\u0420\u0454\u0420\u00b0\u0421\u0402\u0421\u201a\u0420\u00b0 0 (/storage/sdcard0/...)"

    const-string v4, "/storage/sdcard0"

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v3, "SD-\u0420\u0454\u0420\u00b0\u0421\u0402\u0421\u201a\u0420\u00b0 1 (/storage/sdcard1/...)"

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v3, "\u0420\u201d\u0421\u0402\u0421\u0453\u0420\u0456\u0420\u0455\u0420\u2116 \u0420\u0457\u0421\u0453\u0421\u201a\u0421\u040a (\u0421\u0453\u0420\u0454\u0420\u00b0\u0420\u00b7\u0420\u00b0\u0421\u201a\u0421\u040a \u0420\u0406\u0421\u0402\u0421\u0453\u0421\u2021\u0420\u0405\u0421\u0453\u0421\u040b)"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 67
    .local v2, "items_keys":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u0420\u0408\u0420\u0454\u0420\u00b0\u0420\u00b6\u0420\u0451\u0421\u201a\u0420\u00b5 \u0420\u0457\u0421\u0453\u0421\u201a\u0421\u040a \u0420\u0491\u0420\u00bb\u0421\u040f \u0421\u2026\u0421\u0402\u0420\u00b0\u0420\u0405\u0420\u00b5\u0420\u0405\u0420\u0451\u0421\u040f \u0421\u040f\u0421\u2030\u0420\u0451\u0420\u0454\u0420\u0455\u0420\u0406:"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 71
    const/4 v3, -0x1

    new-instance v4, Lru/killer666/hearthstone/CachePathChecker$2$1;

    invoke-direct {v4, p0, v1, v2}, Lru/killer666/hearthstone/CachePathChecker$2$1;-><init>(Lru/killer666/hearthstone/CachePathChecker$2;Ljava/util/LinkedHashMap;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 100
    return-void
.end method
