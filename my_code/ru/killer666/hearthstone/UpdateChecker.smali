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
.field private static currentBuild:I = 0x2

.field private static final prefsFile:Ljava/lang/String; = "updater_settings"


# instance fields
.field private final checkInterval:I

.field private final versionUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput v0, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 38
    const/16 v0, 0xe10

    iput v0, p0, Lru/killer666/hearthstone/UpdateChecker;->checkInterval:I

    .line 39
    const-string v0, "http://hearthstone-update-server.killer666.ru/version.json"

    iput-object v0, p0, Lru/killer666/hearthstone/UpdateChecker;->versionUrl:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 44
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 45
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 50
    .local v1, "line":Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_35
    .catchall {:try_start_10 .. :try_end_13} :catchall_42

    move-result-object v1

    if-nez v1, :cond_1e

    .line 63
    :try_start_16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_4c

    .line 71
    :goto_19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 52
    :cond_1e
    :try_start_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_34} :catch_35
    .catchall {:try_start_1e .. :try_end_34} :catchall_42

    goto :goto_10

    .line 55
    :catch_35
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    :try_start_36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_42

    .line 63
    :try_start_39
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_19

    .line 65
    :catch_3d
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_42
    move-exception v4

    .line 63
    :try_start_43
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 69
    :goto_46
    throw v4

    .line 65
    :catch_47
    move-exception v0

    .line 67
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4c
    move-exception v0

    .line 67
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method


# virtual methods
.method doTask()Z
    .registers 29

    .prologue
    .line 76
    const-string v21, "HearthstoneWrapper"

    const-string v22, "Updater is running..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v21, "updater_settings"

    invoke-static/range {v21 .. v21}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 80
    .local v11, "preferences":Landroid/content/SharedPreferences;
    const-string v21, "lastcheck"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 82
    .local v12, "lastChecked":J
    const-wide/16 v22, 0xe10

    add-long v22, v22, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    cmp-long v21, v22, v24

    if-lez v21, :cond_33

    .line 84
    const-string v21, "HearthstoneWrapper"

    const-string v22, "Check skipped."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/16 v21, 0x0

    .line 255
    :goto_32
    return v21

    .line 88
    :cond_33
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 89
    .local v4, "activity":Landroid/app/Activity;
    const/16 v20, 0x0

    .line 93
    .local v20, "versionCode":I
    :try_start_37
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_4b} :catch_135

    .line 102
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 103
    .local v8, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v21

    const-string v22, "http.useragent"

    .line 104
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Hearthstone Android/"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 103
    invoke-interface/range {v21 .. v23}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 106
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    const-string v21, "http://hearthstone-update-server.killer666.ru/version.json"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 107
    .local v9, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const/4 v14, 0x0

    .line 111
    .local v14, "remoteData":Lorg/json/JSONObject;
    :try_start_82
    invoke-interface {v8, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 113
    .local v19, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 114
    .local v10, "instream":Ljava/io/InputStream;
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lru/killer666/hearthstone/UpdateChecker;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9b} :catch_13d

    .line 115
    .end local v14    # "remoteData":Lorg/json/JSONObject;
    .local v15, "remoteData":Lorg/json/JSONObject;
    :try_start_9b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_1a3

    .line 123
    const/16 v17, 0x0

    .line 124
    .local v17, "remoteVersionCode":I
    const/16 v16, 0x0

    .line 125
    .local v16, "remoteVersionBuild":I
    const/16 v18, 0x0

    .line 129
    .local v18, "remoteVersionName":Ljava/lang/String;
    :try_start_a4
    const-string v21, "code"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 130
    const-string v21, "build"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 131
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_a4 .. :try_end_bb} :catch_145

    move-result-object v18

    .line 139
    if-eqz v20, :cond_14d

    .line 140
    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_d2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_14d

    sget v21, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_14d

    .line 143
    :cond_d2
    const-string v21, "HearthstoneWrapper"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Found update! (Current: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; New: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 144
    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 143
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v5, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v5, v0, v1, v2, v15}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;-><init>(IILjava/lang/String;Lorg/json/JSONObject;)V

    .line 149
    .local v5, "customInfo":Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
    new-instance v21, Lru/killer666/hearthstone/UpdateChecker$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5}, Lru/killer666/hearthstone/UpdateChecker$1;-><init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/Activity;Lru/killer666/hearthstone/UpdateChecker$CustomInfo;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    const/16 v21, 0x1

    goto/16 :goto_32

    .line 95
    .end local v5    # "customInfo":Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
    .end local v8    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v9    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "instream":Ljava/io/InputStream;
    .end local v15    # "remoteData":Lorg/json/JSONObject;
    .end local v16    # "remoteVersionBuild":I
    .end local v17    # "remoteVersionCode":I
    .end local v18    # "remoteVersionName":Ljava/lang/String;
    .end local v19    # "response":Lorg/apache/http/HttpResponse;
    :catch_135
    move-exception v6

    .line 97
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 98
    const/16 v21, 0x0

    goto/16 :goto_32

    .line 117
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "remoteData":Lorg/json/JSONObject;
    :catch_13d
    move-exception v6

    .line 119
    .local v6, "e":Ljava/lang/Exception;
    :goto_13e
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    const/16 v21, 0x0

    goto/16 :goto_32

    .line 133
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v14    # "remoteData":Lorg/json/JSONObject;
    .restart local v10    # "instream":Ljava/io/InputStream;
    .restart local v15    # "remoteData":Lorg/json/JSONObject;
    .restart local v16    # "remoteVersionBuild":I
    .restart local v17    # "remoteVersionCode":I
    .restart local v18    # "remoteVersionName":Ljava/lang/String;
    .restart local v19    # "response":Lorg/apache/http/HttpResponse;
    :catch_145
    move-exception v6

    .line 135
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 136
    const/16 v21, 0x0

    goto/16 :goto_32

    .line 247
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_14d
    const-string v21, "HearthstoneWrapper"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Version is actually! (Current: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", Remote: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", Build: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 248
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 247
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 251
    .local v7, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v21, "lastcheck"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    const/16 v21, 0x0

    goto/16 :goto_32

    .line 117
    .end local v7    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "remoteVersionBuild":I
    .end local v17    # "remoteVersionCode":I
    .end local v18    # "remoteVersionName":Ljava/lang/String;
    :catch_1a3
    move-exception v6

    move-object v14, v15

    .end local v15    # "remoteData":Lorg/json/JSONObject;
    .restart local v14    # "remoteData":Lorg/json/JSONObject;
    goto :goto_13e
.end method
