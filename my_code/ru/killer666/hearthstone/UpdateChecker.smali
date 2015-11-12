.class public Lru/killer666/hearthstone/UpdateChecker;
.super Lru/killer666/hearthstone/WaitableTask;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
    }
.end annotation


# static fields
.field static currentBuild:I = 0x0

.field static httpclient:Lorg/apache/http/client/HttpClient; = null

.field private static final prefsFile:Ljava/lang/String; = "updater_settings"


# instance fields
.field private final checkInterval:I

.field private final versionUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 27
    const/16 v0, 0xe10

    iput v0, p0, Lru/killer666/hearthstone/UpdateChecker;->checkInterval:I

    .line 28
    const-string v0, "http://hearthstone-update-server.killer666.ru/version.json"

    iput-object v0, p0, Lru/killer666/hearthstone/UpdateChecker;->versionUrl:Ljava/lang/String;

    .line 232
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 33
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 34
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 38
    .local v1, "line":Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2c} :catch_2d
    .catchall {:try_start_10 .. :try_end_2c} :catchall_47

    goto :goto_10

    .line 41
    :catch_2d
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_47

    .line 45
    :try_start_31
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_42

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    :goto_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 45
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_34

    .line 46
    :catch_3d
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 46
    :catch_42
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 44
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_47
    move-exception v4

    .line 45
    :try_start_48
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 48
    :goto_4b
    throw v4

    .line 46
    :catch_4c
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b
.end method


# virtual methods
.method doTask()Z
    .registers 27

    .prologue
    .line 55
    const-string v4, "HearthstoneWrapper"

    const-string v5, "Updater is running..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v4, "updater_settings"

    invoke-static {v4}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 59
    .local v17, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "lastcheck"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 61
    .local v18, "lastChecked":J
    const-wide/16 v4, 0xe10

    add-long v4, v4, v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-lez v4, :cond_2f

    .line 62
    const-string v4, "HearthstoneWrapper"

    const-string v5, "Check skipped."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v4, 0x0

    .line 229
    :goto_2e
    return v4

    .line 66
    :cond_2f
    sget-object v11, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 67
    .local v11, "activity":Landroid/app/Activity;
    const/16 v25, 0x0

    .line 70
    .local v25, "versionCode":I
    :try_start_33
    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v25, v0
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_44} :catch_132

    .line 77
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v4, Lru/killer666/hearthstone/UpdateChecker;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 78
    sget-object v4, Lru/killer666/hearthstone/UpdateChecker;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.useragent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hearthstone Android/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 81
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://hearthstone-update-server.killer666.ru/version.json"

    invoke-direct {v15, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    .local v15, "httpget":Lorg/apache/http/client/methods/HttpGet;
    :try_start_7e
    sget-object v4, Lru/killer666/hearthstone/UpdateChecker;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    .line 87
    .local v24, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    .line 88
    .local v16, "instream":Ljava/io/InputStream;
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lru/killer666/hearthstone/UpdateChecker;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v20, "remoteData":Lorg/json/JSONObject;
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_9e} :catch_139

    .line 100
    :try_start_9e
    const-string v4, "code"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 101
    .local v22, "remoteVersionCode":I
    const-string v4, "build"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 102
    .local v21, "remoteVersionBuild":I
    const-string v4, "name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 103
    .local v23, "remoteVersionName":Ljava/lang/String;
    const-string v4, "torrentUrl"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lru/killer666/hearthstone/DownloadSelector;->torrentFileUrl:Ljava/lang/String;
    :try_end_c0
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_c0} :catch_140

    .line 109
    if-eqz v25, :cond_147

    move/from16 v0, v22

    move/from16 v1, v25

    if-gt v0, v1, :cond_d4

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_147

    sget v4, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    move/from16 v0, v21

    if-le v0, v4, :cond_147

    .line 112
    :cond_d4
    const-string v4, "HearthstoneWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found update! (Current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; New: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v12, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    move/from16 v0, v22

    move/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v20

    invoke-direct {v12, v0, v1, v2, v3}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;-><init>(IILjava/lang/String;Lorg/json/JSONObject;)V

    .line 118
    .local v12, "customInfo":Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
    new-instance v4, Lru/killer666/hearthstone/UpdateChecker$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11, v12}, Lru/killer666/hearthstone/UpdateChecker$1;-><init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/Activity;Lru/killer666/hearthstone/UpdateChecker$CustomInfo;)V

    invoke-virtual {v11, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    const/4 v4, 0x1

    goto/16 :goto_2e

    .line 71
    .end local v12    # "customInfo":Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
    .end local v15    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v16    # "instream":Ljava/io/InputStream;
    .end local v20    # "remoteData":Lorg/json/JSONObject;
    .end local v21    # "remoteVersionBuild":I
    .end local v22    # "remoteVersionCode":I
    .end local v23    # "remoteVersionName":Ljava/lang/String;
    .end local v24    # "response":Lorg/apache/http/HttpResponse;
    :catch_132
    move-exception v13

    .line 72
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 73
    const/4 v4, 0x0

    goto/16 :goto_2e

    .line 90
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_139
    move-exception v13

    .line 91
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v4, 0x0

    goto/16 :goto_2e

    .line 104
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v16    # "instream":Ljava/io/InputStream;
    .restart local v20    # "remoteData":Lorg/json/JSONObject;
    .restart local v24    # "response":Lorg/apache/http/HttpResponse;
    :catch_140
    move-exception v13

    .line 105
    .local v13, "e":Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    const/4 v4, 0x0

    goto/16 :goto_2e

    .line 203
    .end local v13    # "e":Lorg/json/JSONException;
    .restart local v21    # "remoteVersionBuild":I
    .restart local v22    # "remoteVersionCode":I
    .restart local v23    # "remoteVersionName":Ljava/lang/String;
    :cond_147
    const-string v4, "HearthstoneWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version is actually! (Current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Remote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Build: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 207
    .local v14, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "lastcheck"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-interface {v14, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    const-string v4, "infoshown"

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1bd

    .line 211
    const-string v4, ""

    const-string v5, "\u0412\u043d\u0438\u043c\u0430\u043d\u0438\u0435! \u0414\u043b\u044f \u0441\u0432\u043e\u0435\u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0433\u043e \u043f\u043e\u043b\u0443\u0447\u0435\u043d\u0438\u044f \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0439 \u043c\u043e\u0434\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u0438 \u0438\u0433\u0440\u044b \u043e\u0431\u0440\u0430\u0449\u0430\u0439\u0442\u0435\u0441\u044c \u0432 \u043b\u0438\u0447\u043a\u0443 \u043d\u0430 4pda.ru/forum \u043a \u0430\u0432\u0442\u043e\u0440\u0443 \u043c\u043e\u0434\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u0438 killer666_."

    const-string v6, "\u041e\u041a"

    new-instance v7, Lru/killer666/hearthstone/UpdateChecker$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lru/killer666/hearthstone/UpdateChecker$2;-><init>(Lru/killer666/hearthstone/UpdateChecker;)V

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 222
    const-string v4, "infoshown"

    const/4 v5, 0x1

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    const/4 v4, 0x1

    goto/16 :goto_2e

    .line 229
    :cond_1bd
    const/4 v4, 0x0

    goto/16 :goto_2e
.end method
