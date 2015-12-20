.class public Lru/killer666/hearthstone/UpdateChecker;
.super Lru/killer666/hearthstone/WaitableTask;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/killer666/hearthstone/UpdateChecker$TempStorage;
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
    .line 25
    const/4 v0, 0x1

    sput v0, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 26
    const/16 v0, 0xe10

    iput v0, p0, Lru/killer666/hearthstone/UpdateChecker;->checkInterval:I

    .line 27
    const-string v0, "http://hearthstone-update-server.killer666.ru/version.json"

    iput-object v0, p0, Lru/killer666/hearthstone/UpdateChecker;->versionUrl:Ljava/lang/String;

    return-void
.end method

.method static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 30
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2f

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_1f
    .catchall {:try_start_f .. :try_end_1e} :catchall_45

    goto :goto_f

    .line 38
    .end local v1    # "line":Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    :try_start_20
    const-string v4, "HearthstoneWrapper"

    const-string v5, "Exception thrown during reading stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_45

    .line 42
    :try_start_27
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_3c

    .line 48
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 42
    .restart local v1    # "line":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_2a

    .line 43
    :catch_33
    move-exception v0

    .line 44
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "HearthstoneWrapper"

    const-string v5, "Exception thrown during closing input stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 43
    .end local v1    # "line":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .line 44
    const-string v4, "HearthstoneWrapper"

    const-string v5, "Exception thrown during closing input stream"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 41
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_45
    move-exception v4

    .line 42
    :try_start_46
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 45
    :goto_49
    throw v4

    .line 43
    :catch_4a
    move-exception v0

    .line 44
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "HearthstoneWrapper"

    const-string v6, "Exception thrown during closing input stream"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method

.method static getVersionCode()I
    .registers 4

    .prologue
    .line 53
    :try_start_0
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 56
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_13
    return v1

    .line 54
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_14
    move-exception v0

    .line 55
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "HearthstoneWrapper"

    const-string v2, "Exception thrown during getting version code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, -0x1

    goto :goto_13
.end method


# virtual methods
.method doTask()Z
    .registers 23

    .prologue
    .line 62
    const-string v15, "HearthstoneWrapper"

    const-string v16, "Updater is running"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lru/killer666/hearthstone/UpdateChecker;->getVersionCode()I

    move-result v14

    .line 66
    .local v14, "versionCode":I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_17

    .line 67
    const-string v15, "HearthstoneWrapper"

    const-string v16, "Invalid version code"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v15, 0x0

    .line 209
    :goto_16
    return v15

    .line 71
    :cond_17
    const-string v15, "updater_settings"

    invoke-static {v15}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 73
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const-string v15, "lastcheck"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v7, v15, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-wide/16 v18, 0xe10

    add-long v16, v16, v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    cmp-long v15, v16, v18

    if-lez v15, :cond_40

    .line 74
    const-string v15, "HearthstoneWrapper"

    const-string v16, "Check skipped"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v15, 0x0

    goto :goto_16

    .line 78
    :cond_40
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 79
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v15

    const-string v16, "http.useragent"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Hearthstone Android/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".jenkins-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 81
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    const-string v15, "http://hearthstone-update-server.killer666.ru/version.json"

    invoke-direct {v5, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    .local v5, "httpget":Lorg/apache/http/client/methods/HttpGet;
    :try_start_76
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 86
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 87
    .local v6, "instream":Ljava/io/InputStream;
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v6}, Lru/killer666/hearthstone/UpdateChecker;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .local v8, "remoteData":Lorg/json/JSONObject;
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8e} :catch_fe

    .line 99
    :try_start_8e
    const-string v15, "code"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 100
    .local v10, "remoteVersionCode":I
    const-string v15, "build"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 101
    .local v9, "remoteVersionBuild":I
    const-string v15, "name"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_9f} :catch_10b

    move-result-object v11

    .line 107
    .local v11, "remoteVersionName":Ljava/lang/String;
    sget v15, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    if-le v9, v15, :cond_118

    .line 109
    const-string v15, "HearthstoneWrapper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Found update! (Current: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "; New: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v13, Lru/killer666/hearthstone/UpdateChecker$TempStorage;

    invoke-direct {v13, v10, v9, v11, v8}, Lru/killer666/hearthstone/UpdateChecker$TempStorage;-><init>(IILjava/lang/String;Lorg/json/JSONObject;)V

    .line 115
    .local v13, "tempStorage":Lru/killer666/hearthstone/UpdateChecker$TempStorage;
    sget-object v15, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v16, Lru/killer666/hearthstone/UpdateChecker$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lru/killer666/hearthstone/UpdateChecker$1;-><init>(Lru/killer666/hearthstone/UpdateChecker;Lru/killer666/hearthstone/UpdateChecker$TempStorage;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    const/4 v15, 0x1

    goto/16 :goto_16

    .line 89
    .end local v6    # "instream":Ljava/io/InputStream;
    .end local v8    # "remoteData":Lorg/json/JSONObject;
    .end local v9    # "remoteVersionBuild":I
    .end local v10    # "remoteVersionCode":I
    .end local v11    # "remoteVersionName":Ljava/lang/String;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "tempStorage":Lru/killer666/hearthstone/UpdateChecker$TempStorage;
    :catch_fe
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "HearthstoneWrapper"

    const-string v16, "Exception thrown during downloading"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/4 v15, 0x0

    goto/16 :goto_16

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "instream":Ljava/io/InputStream;
    .restart local v8    # "remoteData":Lorg/json/JSONObject;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    :catch_10b
    move-exception v2

    .line 103
    .local v2, "e":Lorg/json/JSONException;
    const-string v15, "HearthstoneWrapper"

    const-string v16, "Exception thrown during parsing json data"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v15, 0x0

    goto/16 :goto_16

    .line 201
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v9    # "remoteVersionBuild":I
    .restart local v10    # "remoteVersionCode":I
    .restart local v11    # "remoteVersionName":Ljava/lang/String;
    :cond_118
    const-string v15, "HearthstoneWrapper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Version is actually! (Current: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Remote: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Build: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 205
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v15, "lastcheck"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-interface {v3, v15, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    const/4 v15, 0x0

    goto/16 :goto_16
.end method
