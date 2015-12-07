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
.field static jenkinsBuild:I = 0x0

.field private static final prefsFile:Ljava/lang/String; = "updater_settings"


# instance fields
.field private final checkInterval:I

.field private final versionUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 27
    const/16 v0, 0xe10

    iput v0, p0, Lru/killer666/hearthstone/UpdateChecker;->checkInterval:I

    .line 28
    const-string v0, "http://hearthstone-update-server.killer666.ru/version.json"

    iput-object v0, p0, Lru/killer666/hearthstone/UpdateChecker;->versionUrl:Ljava/lang/String;

    .line 210
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 31
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_1f
    .catchall {:try_start_f .. :try_end_1e} :catchall_39

    goto :goto_f

    .line 39
    .end local v1    # "line":Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    :try_start_20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_39

    .line 43
    :try_start_23
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_34

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    :goto_26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 43
    .restart local v1    # "line":Ljava/lang/String;
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_26

    .line 44
    :catch_2f
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 44
    .end local v1    # "line":Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 42
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_39
    move-exception v4

    .line 43
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 46
    :goto_3d
    throw v4

    .line 44
    :catch_3e
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d
.end method


# virtual methods
.method doTask()Z
    .registers 27

    .prologue
    .line 53
    const-string v20, "HearthstoneWrapper"

    const-string v21, "Updater is running..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v20, "updater_settings"

    invoke-static/range {v20 .. v20}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 57
    .local v11, "preferences":Landroid/content/SharedPreferences;
    const-string v20, "lastcheck"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 59
    .local v12, "lastChecked":J
    const-wide/16 v20, 0xe10

    add-long v20, v20, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    cmp-long v20, v20, v22

    if-lez v20, :cond_33

    .line 60
    const-string v20, "HearthstoneWrapper"

    const-string v21, "Check skipped."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/16 v20, 0x0

    .line 207
    :goto_32
    return v20

    .line 64
    :cond_33
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 68
    .local v4, "activity":Landroid/app/Activity;
    :try_start_35
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_49} :catch_120

    .line 75
    .local v19, "versionCode":I
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 76
    .local v8, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v20

    const-string v21, "http.useragent"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Hearthstone Android/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".jenkins-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 79
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    const-string v20, "http://hearthstone-update-server.killer666.ru/version.json"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 83
    .local v9, "httpget":Lorg/apache/http/client/methods/HttpGet;
    :try_start_83
    invoke-interface {v8, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 85
    .local v18, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 86
    .local v10, "instream":Ljava/io/InputStream;
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lru/killer666/hearthstone/UpdateChecker;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v14, "remoteData":Lorg/json/JSONObject;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9f} :catch_128

    .line 98
    :try_start_9f
    const-string v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 99
    .local v16, "remoteVersionCode":I
    const-string v20, "build"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 100
    .local v15, "remoteVersionBuild":I
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_9f .. :try_end_b6} :catch_130

    move-result-object v17

    .line 106
    .local v17, "remoteVersionName":Ljava/lang/String;
    sget v20, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    move/from16 v0, v20

    if-le v15, v0, :cond_138

    .line 108
    const-string v20, "HearthstoneWrapper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Found update! (Current: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "; New: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v5, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v15, v1, v14}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;-><init>(IILjava/lang/String;Lorg/json/JSONObject;)V

    .line 114
    .local v5, "customInfo":Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
    new-instance v20, Lru/killer666/hearthstone/UpdateChecker$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5}, Lru/killer666/hearthstone/UpdateChecker$1;-><init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/Activity;Lru/killer666/hearthstone/UpdateChecker$CustomInfo;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    const/16 v20, 0x1

    goto/16 :goto_32

    .line 69
    .end local v5    # "customInfo":Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
    .end local v8    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v9    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "instream":Ljava/io/InputStream;
    .end local v14    # "remoteData":Lorg/json/JSONObject;
    .end local v15    # "remoteVersionBuild":I
    .end local v16    # "remoteVersionCode":I
    .end local v17    # "remoteVersionName":Ljava/lang/String;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "versionCode":I
    :catch_120
    move-exception v6

    .line 70
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 71
    const/16 v20, 0x0

    goto/16 :goto_32

    .line 88
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v19    # "versionCode":I
    :catch_128
    move-exception v6

    .line 89
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const/16 v20, 0x0

    goto/16 :goto_32

    .line 101
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "instream":Ljava/io/InputStream;
    .restart local v14    # "remoteData":Lorg/json/JSONObject;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    :catch_130
    move-exception v6

    .line 102
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 103
    const/16 v20, 0x0

    goto/16 :goto_32

    .line 199
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v15    # "remoteVersionBuild":I
    .restart local v16    # "remoteVersionCode":I
    .restart local v17    # "remoteVersionName":Ljava/lang/String;
    :cond_138
    const-string v20, "HearthstoneWrapper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Version is actually! (Current: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Remote: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Build: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 203
    .local v7, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v20, "lastcheck"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    const/16 v20, 0x0

    goto/16 :goto_32
.end method
