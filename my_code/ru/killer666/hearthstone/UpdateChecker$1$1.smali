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


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker$1;)V
    .registers 2
    .param p1, "this$1"    # Lru/killer666/hearthstone/UpdateChecker$1;

    .prologue
    .line 123
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

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

    .line 127
    :try_start_1
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iget-object v7, v7, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    invoke-virtual {v7}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteData()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_108

    move-result-object v6

    .line 135
    .local v6, "url":Ljava/lang/String;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 137
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 139
    .local v4, "request":Landroid/app/DownloadManager$Request;
    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object v7

    .line 141
    invoke-virtual {v7, v10}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0420\u045b\u0420\u00b1\u0420\u0405\u0420\u0455\u0420\u0406\u0420\u00bb\u0420\u00b5\u0420\u0405\u0420\u0451\u0420\u00b5 \u0420\u0491\u0420\u0455 \u0420\u0406\u0420\u00b5\u0421\u0402\u0421\u0403\u0420\u0451\u0420\u0451 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iget-object v9, v9, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    .line 143
    invoke-virtual {v9}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iget-object v9, v9, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    .line 144
    invoke-virtual {v9}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \u0421\u0403\u0420\u00b1\u0420\u0455\u0421\u0402\u0420\u0454\u0420\u00b0 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iget-object v9, v9, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    .line 145
    invoke-virtual {v9}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionBuild()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 146
    const-string v7, "Hearthstone Mod Updater"

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 147
    invoke-virtual {v4}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 148
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hearthstone-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iget-object v8, v8, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    invoke-virtual {v8}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iget-object v8, v8, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    .line 151
    invoke-virtual {v8}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-jenkins-build-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iget-object v8, v8, Lru/killer666/hearthstone/UpdateChecker$1;->val$tempStorage:Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    .line 152
    invoke-virtual {v8}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;->getRemoteVersionBuild()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "targetFilename":Ljava/lang/String;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 155
    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v8, "download"

    .line 156
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 157
    .local v2, "manager":Landroid/app/DownloadManager;
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 159
    new-instance v3, Lru/killer666/hearthstone/UpdateChecker$1$1$1;

    invoke-direct {v3, p0, v5}, Lru/killer666/hearthstone/UpdateChecker$1$1$1;-><init>(Lru/killer666/hearthstone/UpdateChecker$1$1;Ljava/lang/String;)V

    .line 175
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    const-string v7, "\u0420\u045b\u0420\u00b6\u0420\u0451\u0420\u0491\u0420\u00b0\u0420\u2116\u0421\u201a\u0420\u00b5 \u0420\u00b7\u0420\u00b0\u0420\u0456\u0421\u0402\u0421\u0453\u0420\u00b7\u0420\u0454\u0420\u0451 \u0420\u0405\u0420\u0455\u0420\u0406\u0420\u0455\u0420\u0456\u0420\u0455 APK..."

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 182
    const-string v7, "Hearthstone"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 186
    .end local v0    # "dlgAlert":Landroid/app/AlertDialog$Builder;
    .end local v2    # "manager":Landroid/app/DownloadManager;
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "request":Landroid/app/DownloadManager$Request;
    .end local v5    # "targetFilename":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :goto_107
    return-void

    .line 128
    :catch_108
    move-exception v1

    .line 129
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "HearthstoneWrapper"

    const-string v8, "Exception thrown during parsing json"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$1$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$1;

    iget-object v7, v7, Lru/killer666/hearthstone/UpdateChecker$1;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    invoke-virtual {v7}, Lru/killer666/hearthstone/UpdateChecker;->endTask()V

    goto :goto_107
.end method
