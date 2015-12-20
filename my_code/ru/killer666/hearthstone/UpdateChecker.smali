.class public Lru/killer666/hearthstone/UpdateChecker;
.super Lru/killer666/hearthstone/WaitableTask;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/killer666/hearthstone/UpdateChecker$CustomInfo;,
        Lru/killer666/hearthstone/UpdateChecker$XposedFile;
    }
.end annotation


# static fields
.field static jenkinsBuild:I = 0x0

.field private static final prefsFile:Ljava/lang/String; = "updater_settings"


# instance fields
.field private final checkInterval:I

.field private final versionUrl:Ljava/lang/String;

.field private final xposedVersionUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput v0, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 32
    const/16 v0, 0xe10

    iput v0, p0, Lru/killer666/hearthstone/UpdateChecker;->checkInterval:I

    .line 33
    const-string v0, "http://hearthstone-update-server.killer666.ru/version.json"

    iput-object v0, p0, Lru/killer666/hearthstone/UpdateChecker;->versionUrl:Ljava/lang/String;

    .line 34
    const-string v0, "http://hearthstone-update-server.killer666.ru/xposed_files.json"

    iput-object v0, p0, Lru/killer666/hearthstone/UpdateChecker;->xposedVersionUrl:Ljava/lang/String;

    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 51
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2b

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_1f
    .catchall {:try_start_f .. :try_end_1e} :catchall_39

    goto :goto_f

    .line 59
    .end local v1    # "line":Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    :try_start_20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_39

    .line 63
    :try_start_23
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_34

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :goto_26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 63
    .restart local v1    # "line":Ljava/lang/String;
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_26

    .line 64
    :catch_2f
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 64
    .end local v1    # "line":Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_39
    move-exception v4

    .line 63
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 66
    :goto_3d
    throw v4

    .line 64
    :catch_3e
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d
.end method

.method private md5hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 39
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 40
    .local v1, "array":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v5, :cond_2d

    aget-byte v0, v1, v4

    .line 42
    .local v0, "anArray":B
    and-int/lit16 v6, v0, 0xff

    or-int/lit16 v6, v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 44
    .end local v0    # "anArray":B
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v4

    .line 47
    .end local v1    # "array":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_31
    return-object v4

    .line 45
    :catch_32
    move-exception v4

    .line 47
    const/4 v4, 0x0

    goto :goto_31
.end method


# virtual methods
.method doTask()Z
    .registers 45

    .prologue
    .line 82
    const-string v37, "HearthstoneWrapper"

    const-string v38, "Updater is running..."

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 88
    .local v7, "activity":Landroid/app/Activity;
    :try_start_9
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v37

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v33, v0
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_1d} :catch_4f

    .line 94
    .local v33, "versionCode":I
    const-string v37, "updater_settings"

    invoke-static/range {v37 .. v37}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 96
    .local v24, "preferences":Landroid/content/SharedPreferences;
    sget-boolean v37, Lru/killer666/hearthstone/Wrapper;->isXposed:Z

    if-nez v37, :cond_56

    .line 97
    const-string v37, "lastcheck"

    const-wide/16 v38, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 99
    .local v22, "lastChecked":J
    const-wide/16 v38, 0xe10

    add-long v38, v38, v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    const-wide/16 v42, 0x3e8

    div-long v40, v40, v42

    cmp-long v37, v38, v40

    if-lez v37, :cond_56

    .line 100
    const-string v37, "HearthstoneWrapper"

    const-string v38, "Check skipped."

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/16 v37, 0x0

    .line 344
    .end local v22    # "lastChecked":J
    .end local v24    # "preferences":Landroid/content/SharedPreferences;
    .end local v33    # "versionCode":I
    :goto_4e
    return v37

    .line 89
    :catch_4f
    move-exception v11

    .line 90
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 91
    const/16 v37, 0x0

    goto :goto_4e

    .line 106
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v24    # "preferences":Landroid/content/SharedPreferences;
    .restart local v33    # "versionCode":I
    :cond_56
    new-instance v15, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 107
    .local v15, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v15}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v38

    const-string v39, "http.useragent"

    sget-boolean v37, Lru/killer666/hearthstone/Wrapper;->isXposed:Z

    if-eqz v37, :cond_100

    const-string v37, "Hearthstone Android/Xposed"

    :goto_67
    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 110
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    sget-boolean v37, Lru/killer666/hearthstone/Wrapper;->isXposed:Z

    if-eqz v37, :cond_131

    const-string v37, "http://hearthstone-update-server.killer666.ru/xposed_files.json"

    :goto_78
    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 114
    .local v16, "httpget":Lorg/apache/http/client/methods/HttpGet;
    :try_start_7f
    invoke-interface/range {v15 .. v16}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v32

    .line 115
    .local v32, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v19

    .line 116
    .local v19, "instream":Ljava/io/InputStream;
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lru/killer666/hearthstone/UpdateChecker;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .local v28, "remoteData":Lorg/json/JSONObject;
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9f} :catch_135

    .line 123
    sget-boolean v37, Lru/killer666/hearthstone/Wrapper;->isXposed:Z

    if-eqz v37, :cond_282

    .line 124
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v36, "xposedFiles":Ljava/util/List;, "Ljava/util/List<Lru/killer666/hearthstone/UpdateChecker$XposedFile;>;"
    :try_start_a8
    const-string v37, "files"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 129
    .local v8, "array":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_b4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_145

    .line 130
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 131
    .local v13, "file":Lorg/json/JSONObject;
    new-instance v35, Lru/killer666/hearthstone/UpdateChecker$XposedFile;

    invoke-direct/range {v35 .. v35}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;-><init>()V

    .line 133
    .local v35, "xposedFile":Lru/killer666/hearthstone/UpdateChecker$XposedFile;
    const-string v37, "filename"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->setFileName(Ljava/lang/String;)V

    .line 134
    const-string v37, "url"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->setUrl(Ljava/lang/String;)V

    .line 135
    const-string v37, "hash"

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->setHash(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_fd
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_fd} :catch_13d

    .line 129
    add-int/lit8 v17, v17, 0x1

    goto :goto_b4

    .line 107
    .end local v8    # "array":Lorg/json/JSONArray;
    .end local v13    # "file":Lorg/json/JSONObject;
    .end local v16    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v17    # "i":I
    .end local v19    # "instream":Ljava/io/InputStream;
    .end local v28    # "remoteData":Lorg/json/JSONObject;
    .end local v32    # "response":Lorg/apache/http/HttpResponse;
    .end local v35    # "xposedFile":Lru/killer666/hearthstone/UpdateChecker$XposedFile;
    .end local v36    # "xposedFiles":Ljava/util/List;, "Ljava/util/List<Lru/killer666/hearthstone/UpdateChecker$XposedFile;>;"
    :cond_100
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Hearthstone Android/"

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v40, ".jenkins-"

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget v40, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_67

    .line 110
    :cond_131
    const-string v37, "http://hearthstone-update-server.killer666.ru/version.json"

    goto/16 :goto_78

    .line 118
    .restart local v16    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_135
    move-exception v11

    .line 119
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    const/16 v37, 0x0

    goto/16 :goto_4e

    .line 139
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v19    # "instream":Ljava/io/InputStream;
    .restart local v28    # "remoteData":Lorg/json/JSONObject;
    .restart local v32    # "response":Lorg/apache/http/HttpResponse;
    .restart local v36    # "xposedFiles":Ljava/util/List;, "Ljava/util/List<Lru/killer666/hearthstone/UpdateChecker$XposedFile;>;"
    :catch_13d
    move-exception v11

    .line 140
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 141
    const/16 v37, 0x0

    goto/16 :goto_4e

    .line 144
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v8    # "array":Lorg/json/JSONArray;
    .restart local v17    # "i":I
    :cond_145
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 146
    .local v20, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lru/killer666/hearthstone/UpdateChecker$XposedFile;>;"
    :cond_149
    :goto_149
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_1ae

    .line 147
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lru/killer666/hearthstone/UpdateChecker$XposedFile;

    .line 148
    .restart local v35    # "xposedFile":Lru/killer666/hearthstone/UpdateChecker$XposedFile;
    new-instance v37, Ljava/io/File;

    sget-object v38, Lru/killer666/hearthstone/CachePathChecker;->cachePath:Ljava/io/File;

    invoke-virtual/range {v35 .. v35}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->getFileName()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->setFile(Ljava/io/File;)V

    .line 152
    :try_start_167
    new-instance v37, Ljava/io/FileInputStream;

    invoke-virtual/range {v35 .. v35}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->getFile()Ljava/io/File;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lru/killer666/hearthstone/UpdateChecker;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lru/killer666/hearthstone/UpdateChecker;->md5hex(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17f
    .catch Ljava/io/FileNotFoundException; {:try_start_167 .. :try_end_17f} :catch_1ac

    move-result-object v14

    .line 157
    .local v14, "hash":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->getHash()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_149

    .line 158
    const-string v37, "HearthstoneWrapper"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v35 .. v35}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->getFileName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " hashes equals, skipping"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_149

    .line 153
    .end local v14    # "hash":Ljava/lang/String;
    :catch_1ac
    move-exception v11

    .line 154
    .local v11, "e":Ljava/io/FileNotFoundException;
    goto :goto_149

    .line 163
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .end local v35    # "xposedFile":Lru/killer666/hearthstone/UpdateChecker$XposedFile;
    :cond_1ae
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v37

    if-eqz v37, :cond_27e

    .line 164
    new-instance v34, Ljava/lang/Object;

    invoke-direct/range {v34 .. v34}, Ljava/lang/Object;-><init>()V

    .line 165
    .local v34, "waitObject":Ljava/lang/Object;
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v6, v0, [Landroid/app/ProgressDialog;

    .line 167
    .local v6, "_progressDialog":[Landroid/app/ProgressDialog;
    new-instance v37, Lru/killer666/hearthstone/UpdateChecker$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v6, v7, v2}, Lru/killer666/hearthstone/UpdateChecker$1;-><init>(Lru/killer666/hearthstone/UpdateChecker;[Landroid/app/ProgressDialog;Landroid/app/Activity;Ljava/lang/Object;)V

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    :try_start_1cf
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->wait()V
    :try_end_1d2
    .catch Ljava/lang/InterruptedException; {:try_start_1cf .. :try_end_1d2} :catch_371

    .line 180
    :goto_1d2
    const/16 v37, 0x0

    aget-object v25, v6, v37

    .line 182
    .local v25, "progressDialog":Landroid/app/ProgressDialog;
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_1da
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_26e

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lru/killer666/hearthstone/UpdateChecker$XposedFile;

    .line 184
    .restart local v35    # "xposedFile":Lru/killer666/hearthstone/UpdateChecker$XposedFile;
    :try_start_1e6
    new-instance v38, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v35 .. v35}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->getUrl()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v32

    .line 185
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    .line 186
    .local v18, "inputStream":Ljava/io/InputStream;
    new-instance v21, Ljava/io/FileOutputStream;

    invoke-virtual/range {v35 .. v35}, Lru/killer666/hearthstone/UpdateChecker$XposedFile;->getFile()Ljava/io/File;

    move-result-object v38

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 188
    .local v21, "outputStream":Ljava/io/OutputStream;
    new-instance v38, Lru/killer666/hearthstone/UpdateChecker$2;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v32

    move-object/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lru/killer666/hearthstone/UpdateChecker$2;-><init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/ProgressDialog;Lorg/apache/http/HttpResponse;Lru/killer666/hearthstone/UpdateChecker$XposedFile;)V

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 198
    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 199
    .local v27, "readed":[I
    const/16 v38, 0x400

    move/from16 v0, v38

    new-array v9, v0, [B

    .line 201
    .local v9, "bytes":[B
    :goto_22c
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v26

    .local v26, "read":I
    const/16 v38, -0x1

    move/from16 v0, v26

    move/from16 v1, v38

    if-eq v0, v1, :cond_266

    .line 202
    const/16 v38, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v38

    move/from16 v2, v26

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 204
    const/16 v38, 0x0

    aget v39, v27, v38

    add-int v39, v39, v26

    aput v39, v27, v38

    .line 206
    new-instance v38, Lru/killer666/hearthstone/UpdateChecker$3;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lru/killer666/hearthstone/UpdateChecker$3;-><init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/ProgressDialog;[I)V

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_25f} :catch_260

    goto :goto_22c

    .line 216
    .end local v9    # "bytes":[B
    .end local v18    # "inputStream":Ljava/io/InputStream;
    .end local v21    # "outputStream":Ljava/io/OutputStream;
    .end local v26    # "read":I
    .end local v27    # "readed":[I
    :catch_260
    move-exception v11

    .line 217
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1da

    .line 214
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v9    # "bytes":[B
    .restart local v18    # "inputStream":Ljava/io/InputStream;
    .restart local v21    # "outputStream":Ljava/io/OutputStream;
    .restart local v26    # "read":I
    .restart local v27    # "readed":[I
    :cond_266
    :try_start_266
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 215
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_26c
    .catch Ljava/io/IOException; {:try_start_266 .. :try_end_26c} :catch_260

    goto/16 :goto_1da

    .line 221
    .end local v9    # "bytes":[B
    .end local v18    # "inputStream":Ljava/io/InputStream;
    .end local v21    # "outputStream":Ljava/io/OutputStream;
    .end local v26    # "read":I
    .end local v27    # "readed":[I
    .end local v35    # "xposedFile":Lru/killer666/hearthstone/UpdateChecker$XposedFile;
    :cond_26e
    new-instance v37, Lru/killer666/hearthstone/UpdateChecker$4;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lru/killer666/hearthstone/UpdateChecker$4;-><init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/ProgressDialog;)V

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 344
    .end local v6    # "_progressDialog":[Landroid/app/ProgressDialog;
    .end local v8    # "array":Lorg/json/JSONArray;
    .end local v17    # "i":I
    .end local v20    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lru/killer666/hearthstone/UpdateChecker$XposedFile;>;"
    .end local v25    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v34    # "waitObject":Ljava/lang/Object;
    .end local v36    # "xposedFiles":Ljava/util/List;, "Ljava/util/List<Lru/killer666/hearthstone/UpdateChecker$XposedFile;>;"
    :cond_27e
    :goto_27e
    const/16 v37, 0x0

    goto/16 :goto_4e

    .line 234
    :cond_282
    :try_start_282
    const-string v37, "code"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 235
    .local v30, "remoteVersionCode":I
    const-string v37, "build"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v29

    .line 236
    .local v29, "remoteVersionBuild":I
    const-string v37, "name"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_29f
    .catch Lorg/json/JSONException; {:try_start_282 .. :try_end_29f} :catch_311

    move-result-object v31

    .line 242
    .local v31, "remoteVersionName":Ljava/lang/String;
    sget v37, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    move/from16 v0, v29

    move/from16 v1, v37

    if-le v0, v1, :cond_319

    .line 244
    const-string v37, "HearthstoneWrapper"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Found update! (Current: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget v39, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "; New: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v10, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;

    move/from16 v0, v30

    move/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, v28

    invoke-direct {v10, v0, v1, v2, v3}, Lru/killer666/hearthstone/UpdateChecker$CustomInfo;-><init>(IILjava/lang/String;Lorg/json/JSONObject;)V

    .line 250
    .local v10, "customInfo":Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
    new-instance v37, Lru/killer666/hearthstone/UpdateChecker$5;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v10}, Lru/killer666/hearthstone/UpdateChecker$5;-><init>(Lru/killer666/hearthstone/UpdateChecker;Landroid/app/Activity;Lru/killer666/hearthstone/UpdateChecker$CustomInfo;)V

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 333
    const/16 v37, 0x1

    goto/16 :goto_4e

    .line 237
    .end local v10    # "customInfo":Lru/killer666/hearthstone/UpdateChecker$CustomInfo;
    .end local v29    # "remoteVersionBuild":I
    .end local v30    # "remoteVersionCode":I
    .end local v31    # "remoteVersionName":Ljava/lang/String;
    :catch_311
    move-exception v11

    .line 238
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 239
    const/16 v37, 0x0

    goto/16 :goto_4e

    .line 335
    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v29    # "remoteVersionBuild":I
    .restart local v30    # "remoteVersionCode":I
    .restart local v31    # "remoteVersionName":Ljava/lang/String;
    :cond_319
    const-string v37, "HearthstoneWrapper"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Version is actually! (Current: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", Remote: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", Build: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 339
    .local v12, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v37, "lastcheck"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    const-wide/16 v40, 0x3e8

    div-long v38, v38, v40

    move-object/from16 v0, v37

    move-wide/from16 v1, v38

    invoke-interface {v12, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 340
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_27e

    .line 177
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v29    # "remoteVersionBuild":I
    .end local v30    # "remoteVersionCode":I
    .end local v31    # "remoteVersionName":Ljava/lang/String;
    .restart local v6    # "_progressDialog":[Landroid/app/ProgressDialog;
    .restart local v8    # "array":Lorg/json/JSONArray;
    .restart local v17    # "i":I
    .restart local v20    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lru/killer666/hearthstone/UpdateChecker$XposedFile;>;"
    .restart local v34    # "waitObject":Ljava/lang/Object;
    .restart local v36    # "xposedFiles":Ljava/util/List;, "Ljava/util/List<Lru/killer666/hearthstone/UpdateChecker$XposedFile;>;"
    :catch_371
    move-exception v37

    goto/16 :goto_1d2
.end method

.method launchRingDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 76
    .local v0, "ringProgressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    return-object v0
.end method
