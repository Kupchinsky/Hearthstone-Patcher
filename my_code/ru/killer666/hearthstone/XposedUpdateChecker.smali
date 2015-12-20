.class public Lru/killer666/hearthstone/XposedUpdateChecker;
.super Lru/killer666/hearthstone/WaitableTask;
.source "XposedUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
    }
.end annotation


# static fields
.field public static assetsPath:Ljava/io/File;


# instance fields
.field private final versionUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lru/killer666/hearthstone/XposedUpdateChecker;->assetsPath:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    .line 28
    const-string v0, "http://hearthstone-update-server.killer666.ru/xposed_files.json"

    iput-object v0, p0, Lru/killer666/hearthstone/XposedUpdateChecker;->versionUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lru/killer666/hearthstone/XposedUpdateChecker;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .registers 5
    .param p0, "x0"    # Lru/killer666/hearthstone/XposedUpdateChecker;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lru/killer666/hearthstone/XposedUpdateChecker;->launchRingDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private downloadFailed(Ljava/lang/Exception;)V
    .registers 9
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 59
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0420\u2014\u0420\u00b0\u0420\u0456\u0421\u0402\u0421\u0453\u0420\u00b7\u0420\u0454\u0420\u00b0 \u0421\u201e\u0420\u00b0\u0420\u2116\u0420\u00bb\u0420\u0455\u0420\u0406 \u0420\u0458\u0420\u0455\u0420\u0491\u0420\u00b0 \u0420\u0405\u0420\u00b5 \u0421\u0453\u0420\u0491\u0420\u00b0\u0420\u00bb\u0420\u00b0\u0421\u0403\u0421\u040a!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0420\u045b\u0420\u0459"

    new-instance v3, Lru/killer666/hearthstone/XposedUpdateChecker$1;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/XposedUpdateChecker$1;-><init>(Lru/killer666/hearthstone/XposedUpdateChecker;)V

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 64
    return-void
.end method

.method private launchRingDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 53
    .local v0, "ringProgressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 55
    return-object v0
.end method

.method private md5hex(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 32
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 33
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 35
    .local v1, "array":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v6, v1

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v6, :cond_2d

    aget-byte v0, v1, v5

    .line 38
    .local v0, "anArray":B
    and-int/lit16 v7, v0, 0xff

    or-int/lit16 v7, v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 41
    .end local v0    # "anArray":B
    :cond_2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v5

    .line 46
    .end local v1    # "array":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_31
    return-object v5

    .line 42
    :catch_32
    move-exception v2

    .line 43
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "HearthstoneWrapper"

    const-string v6, "No md5, wow"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const/4 v5, 0x0

    goto :goto_31
.end method


# virtual methods
.method doTask()Z
    .registers 32

    .prologue
    .line 68
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Xposed updater is running"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lru/killer666/hearthstone/UpdateChecker;->getVersionCode()I

    move-result v23

    .line 72
    .local v23, "versionCode":I
    const/16 v27, -0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 73
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Invalid version code"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/16 v27, 0x0

    .line 245
    :goto_1c
    return v27

    .line 77
    :cond_1d
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 78
    .local v10, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v27

    const-string v28, "http.useragent"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Hearthstone Android/Xposed-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v27 .. v29}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 80
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    const-string v27, "http://hearthstone-update-server.killer666.ru/xposed_files.json"

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 84
    .local v11, "httpget":Lorg/apache/http/client/methods/HttpGet;
    :try_start_4b
    invoke-interface {v10, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 85
    .local v22, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 86
    .local v14, "instream":Ljava/io/InputStream;
    new-instance v21, Lorg/json/JSONObject;

    invoke-static {v14}, Lru/killer666/hearthstone/UpdateChecker;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .local v21, "remoteData":Lorg/json/JSONObject;
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_67} :catch_c5

    .line 94
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v26, "xposedAssets":Ljava/util/List;, "Ljava/util/List<Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;>;"
    :try_start_6c
    const-string v27, "files"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 99
    .local v6, "array":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_77
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v12, v0, :cond_e5

    .line 100
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 101
    .local v16, "jsonObject":Lorg/json/JSONObject;
    new-instance v25, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;

    invoke-direct/range {v25 .. v25}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;-><init>()V

    .line 103
    .local v25, "xposedAsset":Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
    const-string v27, "filename"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->setFileName(Ljava/lang/String;)V

    .line 104
    const-string v27, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->setUrl(Ljava/lang/String;)V

    .line 105
    const-string v27, "hash"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->setHash(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_c2} :catch_d5

    .line 99
    add-int/lit8 v12, v12, 0x1

    goto :goto_77

    .line 89
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v14    # "instream":Ljava/io/InputStream;
    .end local v16    # "jsonObject":Lorg/json/JSONObject;
    .end local v21    # "remoteData":Lorg/json/JSONObject;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    .end local v25    # "xposedAsset":Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
    .end local v26    # "xposedAssets":Ljava/util/List;, "Ljava/util/List<Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;>;"
    :catch_c5
    move-exception v8

    .line 90
    .local v8, "e":Ljava/lang/Exception;
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Exception thrown during downloading"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/16 v27, 0x0

    goto/16 :goto_1c

    .line 109
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v14    # "instream":Ljava/io/InputStream;
    .restart local v21    # "remoteData":Lorg/json/JSONObject;
    .restart local v22    # "response":Lorg/apache/http/HttpResponse;
    .restart local v26    # "xposedAssets":Ljava/util/List;, "Ljava/util/List<Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;>;"
    :catch_d5
    move-exception v8

    .line 110
    .local v8, "e":Lorg/json/JSONException;
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Exception thrown during reading json"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/16 v27, 0x0

    goto/16 :goto_1c

    .line 114
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v6    # "array":Lorg/json/JSONArray;
    .restart local v12    # "i":I
    :cond_e5
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 116
    .local v15, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;>;"
    :cond_e9
    :goto_e9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_148

    .line 117
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;

    .line 121
    .restart local v25    # "xposedAsset":Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
    :try_start_f5
    sget-object v27, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->getFileName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lru/killer666/hearthstone/UpdateChecker;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lru/killer666/hearthstone/XposedUpdateChecker;->md5hex(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_10e} :catch_13b

    move-result-object v9

    .line 127
    .local v9, "hash":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->getHash()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e9

    .line 128
    const-string v27, "HearthstoneWrapper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->getFileName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " hashes equals, skipping"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_e9

    .line 122
    .end local v9    # "hash":Ljava/lang/String;
    :catch_13b
    move-exception v8

    .line 123
    .local v8, "e":Ljava/io/IOException;
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Exception thrown during calculating md5 for file"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e9

    .line 133
    .end local v8    # "e":Ljava/io/IOException;
    .end local v25    # "xposedAsset":Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
    :cond_148
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    if-eqz v27, :cond_28e

    .line 134
    new-instance v24, Ljava/lang/Object;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    .line 137
    .local v24, "waitObject":Ljava/lang/Object;
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v5, v0, [Landroid/app/ProgressDialog;

    .line 139
    .local v5, "_progressDialog":[Landroid/app/ProgressDialog;
    sget-object v27, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v28, Lru/killer666/hearthstone/XposedUpdateChecker$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v5, v2}, Lru/killer666/hearthstone/XposedUpdateChecker$2;-><init>(Lru/killer666/hearthstone/XposedUpdateChecker;[Landroid/app/ProgressDialog;Ljava/lang/Object;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    :try_start_169
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->wait()V
    :try_end_16c
    .catch Ljava/lang/InterruptedException; {:try_start_169 .. :try_end_16c} :catch_214

    .line 153
    :goto_16c
    const/16 v27, 0x0

    aget-object v18, v5, v27

    .line 155
    .local v18, "progressDialog":Landroid/app/ProgressDialog;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_174
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_27e

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;

    .line 159
    .restart local v25    # "xposedAsset":Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
    :try_start_180
    new-instance v28, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v25 .. v25}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->getUrl()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_18e} :catch_222

    move-result-object v22

    .line 169
    :try_start_18f
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_196} :catch_237

    move-result-object v13

    .line 179
    .local v13, "inputStream":Ljava/io/InputStream;
    :try_start_197
    new-instance v17, Ljava/io/FileOutputStream;

    new-instance v28, Ljava/io/File;

    sget-object v29, Lru/killer666/hearthstone/XposedUpdateChecker;->assetsPath:Ljava/io/File;

    invoke-virtual/range {v25 .. v25}, Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;->getFileName()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v28 .. v30}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1ab
    .catch Ljava/io/FileNotFoundException; {:try_start_197 .. :try_end_1ab} :catch_24c

    .line 187
    .local v17, "outputStream":Ljava/io/OutputStream;
    sget-object v28, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v29, Lru/killer666/hearthstone/XposedUpdateChecker$3;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lru/killer666/hearthstone/XposedUpdateChecker$3;-><init>(Lru/killer666/hearthstone/XposedUpdateChecker;Landroid/app/ProgressDialog;Lorg/apache/http/HttpResponse;Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;)V

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 204
    .local v20, "readed":[I
    const/16 v28, 0x400

    move/from16 v0, v28

    new-array v7, v0, [B

    .line 207
    .local v7, "bytes":[B
    :goto_1cd
    :try_start_1cd
    invoke-virtual {v13, v7}, Ljava/io/InputStream;->read([B)I

    move-result v19

    .local v19, "read":I
    const/16 v28, -0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_261

    .line 208
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 210
    const/16 v28, 0x0

    aget v29, v20, v28

    add-int v29, v29, v19

    aput v29, v20, v28

    .line 212
    sget-object v28, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v29, Lru/killer666/hearthstone/XposedUpdateChecker$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lru/killer666/hearthstone/XposedUpdateChecker$4;-><init>(Lru/killer666/hearthstone/XposedUpdateChecker;Landroid/app/ProgressDialog;[I)V

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1fe
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1fe} :catch_1ff

    goto :goto_1cd

    .line 219
    .end local v19    # "read":I
    :catch_1ff
    move-exception v8

    .line 220
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Exception thrown during reading input stream/writing output stream"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lru/killer666/hearthstone/XposedUpdateChecker;->downloadFailed(Ljava/lang/Exception;)V

    .line 223
    const/16 v27, 0x1

    goto/16 :goto_1c

    .line 149
    .end local v7    # "bytes":[B
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "outputStream":Ljava/io/OutputStream;
    .end local v18    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v20    # "readed":[I
    .end local v25    # "xposedAsset":Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
    :catch_214
    move-exception v8

    .line 150
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Interrupted"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16c

    .line 160
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v18    # "progressDialog":Landroid/app/ProgressDialog;
    .restart local v25    # "xposedAsset":Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
    :catch_222
    move-exception v8

    .line 161
    .local v8, "e":Ljava/io/IOException;
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Exception thrown during executing http request"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lru/killer666/hearthstone/XposedUpdateChecker;->downloadFailed(Ljava/lang/Exception;)V

    .line 164
    const/16 v27, 0x1

    goto/16 :goto_1c

    .line 170
    .end local v8    # "e":Ljava/io/IOException;
    :catch_237
    move-exception v8

    .line 171
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Exception thrown during getting input stream"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lru/killer666/hearthstone/XposedUpdateChecker;->downloadFailed(Ljava/lang/Exception;)V

    .line 174
    const/16 v27, 0x1

    goto/16 :goto_1c

    .line 180
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    :catch_24c
    move-exception v8

    .line 181
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Exception thrown during getting output stream"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lru/killer666/hearthstone/XposedUpdateChecker;->downloadFailed(Ljava/lang/Exception;)V

    .line 184
    const/16 v27, 0x1

    goto/16 :goto_1c

    .line 227
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "bytes":[B
    .restart local v17    # "outputStream":Ljava/io/OutputStream;
    .restart local v19    # "read":I
    .restart local v20    # "readed":[I
    :cond_261
    :try_start_261
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 228
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_267
    .catch Ljava/io/IOException; {:try_start_261 .. :try_end_267} :catch_269

    goto/16 :goto_174

    .line 229
    :catch_269
    move-exception v8

    .line 230
    .local v8, "e":Ljava/io/IOException;
    const-string v27, "HearthstoneWrapper"

    const-string v28, "Exception thrown during closing streams"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lru/killer666/hearthstone/XposedUpdateChecker;->downloadFailed(Ljava/lang/Exception;)V

    .line 233
    const/16 v27, 0x1

    goto/16 :goto_1c

    .line 237
    .end local v7    # "bytes":[B
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "outputStream":Ljava/io/OutputStream;
    .end local v19    # "read":I
    .end local v20    # "readed":[I
    .end local v25    # "xposedAsset":Lru/killer666/hearthstone/XposedUpdateChecker$XposedAsset;
    :cond_27e
    sget-object v27, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v28, Lru/killer666/hearthstone/XposedUpdateChecker$5;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lru/killer666/hearthstone/XposedUpdateChecker$5;-><init>(Lru/killer666/hearthstone/XposedUpdateChecker;Landroid/app/ProgressDialog;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    .end local v5    # "_progressDialog":[Landroid/app/ProgressDialog;
    .end local v18    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v24    # "waitObject":Ljava/lang/Object;
    :cond_28e
    const/16 v27, 0x0

    goto/16 :goto_1c
.end method
