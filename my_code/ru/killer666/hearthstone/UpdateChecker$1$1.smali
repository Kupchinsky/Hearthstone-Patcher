.class Lru/killer666/hearthstone/UpdateChecker$1$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/UpdateChecker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/UpdateChecker$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker$1;Lru/killer666/hearthstone/UpdateChecker$CustomInfo;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iput-object p2, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    iput-object p3, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$activity:Landroid/app/Activity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v10, 0x0

    .line 167
    :try_start_1
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v7}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteData()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_f4

    move-result-object v6

    .line 176
    .local v6, "url":Ljava/lang/String;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 178
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 181
    .local v4, "request":Landroid/app/DownloadManager$Request;
    const/4 v7, 0x3

    .line 180
    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object v7

    .line 182
    invoke-virtual {v7, v10}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v7

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u041e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 \u0434\u043e \u0432\u0435\u0440\u0441\u0438\u0438 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v9}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 185
    iget-object v9, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v9}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \u0441\u0431\u043e\u0440\u043a\u0430 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 186
    iget-object v9, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v9}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionBuild()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 183
    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 187
    const-string v7, "Hearthstone Mod Updater"

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 188
    invoke-virtual {v4}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 189
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Hearthstone-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v8}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 192
    iget-object v8, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v8}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-build-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 193
    iget-object v8, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v8}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionBuild()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 191
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "targetFilename":Ljava/lang/String;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 196
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$activity:Landroid/app/Activity;

    .line 197
    const-string v8, "download"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 196
    check-cast v2, Landroid/app/DownloadManager;

    .line 198
    .local v2, "manager":Landroid/app/DownloadManager;
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 200
    new-instance v3, Lru/killer666/hearthstone/UpdateChecker$1$1$1;

    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, p0, v5, v7}, Lru/killer666/hearthstone/UpdateChecker$1$1$1;-><init>(Lru/killer666/hearthstone/UpdateChecker$1$1;Ljava/lang/String;Landroid/app/Activity;)V

    .line 218
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$activity:Landroid/app/Activity;

    new-instance v8, Landroid/content/IntentFilter;

    .line 219
    const-string v9, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v7, v3, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$activity:Landroid/app/Activity;

    new-instance v8, Landroid/content/IntentFilter;

    .line 221
    const-string v9, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v7, v3, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    const-string v7, "\u041e\u0436\u0438\u0434\u0430\u0439\u0442\u0435 \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0438 \u043d\u043e\u0432\u043e\u0433\u043e APK..."

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 225
    const-string v7, "Hearthstone"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 229
    .end local v0    # "dlgAlert":Landroid/app/AlertDialog$Builder;
    .end local v2    # "manager":Landroid/app/DownloadManager;
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "request":Landroid/app/DownloadManager$Request;
    .end local v5    # "targetFilename":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :goto_f3
    return-void

    .line 169
    :catch_f4
    move-exception v1

    .line 171
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 172
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    # getter for: Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;
    invoke-static {v7}, Lru/killer666/hearthstone/UpdateChecker$1;->access$0(Lru/killer666/hearthstone/UpdateChecker$1;)Lru/killer666/hearthstone/UpdateChecker;

    move-result-object v7

    invoke-virtual {v7}, Lru/killer666/hearthstone/UpdateChecker;->endTask()V

    goto :goto_f3
.end method
