.class Lru/killer666/hearthstone/UpdateChecker$5$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/UpdateChecker$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/killer666/hearthstone/UpdateChecker$5;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker$5;)V
    .registers 2
    .param p1, "this$1"    # Lru/killer666/hearthstone/UpdateChecker$5;

    .prologue
    .line 258
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

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

    .line 262
    :try_start_1
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v7, v7, Lru/killer666/hearthstone/UpdateChecker$5;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v7}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteData()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_110

    move-result-object v6

    .line 269
    .local v6, "url":Ljava/lang/String;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 271
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 273
    .local v4, "request":Landroid/app/DownloadManager$Request;
    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object v7

    .line 275
    invoke-virtual {v7, v10}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0420\u045b\u0420\u00b1\u0420\u0405\u0420\u0455\u0420\u0406\u0420\u00bb\u0420\u00b5\u0420\u0405\u0420\u0451\u0420\u00b5 \u0420\u0491\u0420\u0455 \u0420\u0406\u0420\u00b5\u0421\u0402\u0421\u0403\u0420\u0451\u0420\u0451 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v9, v9, Lru/killer666/hearthstone/UpdateChecker$5;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    .line 277
    invoke-virtual {v9}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v9, v9, Lru/killer666/hearthstone/UpdateChecker$5;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    .line 278
    invoke-virtual {v9}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \u0421\u0403\u0420\u00b1\u0420\u0455\u0421\u0402\u0420\u0454\u0420\u00b0 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v9, v9, Lru/killer666/hearthstone/UpdateChecker$5;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    .line 279
    invoke-virtual {v9}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionBuild()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 276
    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 280
    const-string v7, "Hearthstone Mod Updater"

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 281
    invoke-virtual {v4}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 282
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hearthstone-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v8, v8, Lru/killer666/hearthstone/UpdateChecker$5;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    invoke-virtual {v8}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v8, v8, Lru/killer666/hearthstone/UpdateChecker$5;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    .line 285
    invoke-virtual {v8}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-jenkins-build-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v8, v8, Lru/killer666/hearthstone/UpdateChecker$5;->val$customInfo:Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    .line 286
    invoke-virtual {v8}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;->getRemoteVersionBuild()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "targetFilename":Ljava/lang/String;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 289
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v7, v7, Lru/killer666/hearthstone/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    const-string v8, "download"

    .line 290
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 291
    .local v2, "manager":Landroid/app/DownloadManager;
    invoke-virtual {v2, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 293
    new-instance v3, Lru/killer666/hearthstone/UpdateChecker$5$1$1;

    invoke-direct {v3, p0, v5}, Lru/killer666/hearthstone/UpdateChecker$5$1$1;-><init>(Lru/killer666/hearthstone/UpdateChecker$5$1;Ljava/lang/String;)V

    .line 309
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v7, v7, Lru/killer666/hearthstone/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v7, v7, Lru/killer666/hearthstone/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v7, v7, Lru/killer666/hearthstone/UpdateChecker$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 315
    .local v0, "dlgAlert":Landroid/app/AlertDialog$Builder;
    const-string v7, "\u0420\u045b\u0420\u00b6\u0420\u0451\u0420\u0491\u0420\u00b0\u0420\u2116\u0421\u201a\u0420\u00b5 \u0420\u00b7\u0420\u00b0\u0420\u0456\u0421\u0402\u0421\u0453\u0420\u00b7\u0420\u0454\u0420\u0451 \u0420\u0405\u0420\u0455\u0420\u0406\u0420\u0455\u0420\u0456\u0420\u0455 APK..."

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 316
    const-string v7, "Hearthstone"

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 320
    .end local v0    # "dlgAlert":Landroid/app/AlertDialog$Builder;
    .end local v2    # "manager":Landroid/app/DownloadManager;
    .end local v3    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "request":Landroid/app/DownloadManager$Request;
    .end local v5    # "targetFilename":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :goto_10f
    return-void

    .line 263
    :catch_110
    move-exception v1

    .line 264
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 265
    iget-object v7, p0, Lru/killer666/hearthstone/UpdateChecker$5$1;->this$1:Lru/killer666/hearthstone/UpdateChecker$5;

    iget-object v7, v7, Lru/killer666/hearthstone/UpdateChecker$5;->this$0:Lru/killer666/hearthstone/UpdateChecker;

    invoke-virtual {v7}, Lru/killer666/hearthstone/UpdateChecker;->endTask()V

    goto :goto_10f
.end method
