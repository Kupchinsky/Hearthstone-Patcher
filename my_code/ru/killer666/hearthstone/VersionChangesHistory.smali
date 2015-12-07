.class public Lru/killer666/hearthstone/VersionChangesHistory;
.super Lru/killer666/hearthstone/WaitableTask;
.source "VersionChangesHistory.java"


# static fields
.field private static final prefsFile:Ljava/lang/String; = "history_settings"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    return-void
.end method


# virtual methods
.method doTask()Z
    .registers 16

    .prologue
    .line 18
    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 22
    .local v7, "activity":Landroid/app/Activity;
    :try_start_2
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v14, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_11} :catch_a1

    .line 28
    .local v14, "versionCode":I
    const-string v0, "history_settings"

    invoke-static {v0}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 29
    .local v12, "preferences":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infoshown_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 31
    .local v11, "key":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v12, v11, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0418\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f \u0432 \u0441\u0431\u043e\u0440\u043a\u0435 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lru/killer666/hearthstone/UpdateChecker;->jenkinsBuild:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 33
    .local v10, "firstPart":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v13, "secondParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_94

    .line 42
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-static {v13, v2}, Lcom/sun/deploy/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u041e\u041a"

    new-instance v3, Lru/killer666/hearthstone/VersionChangesHistory$1;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/VersionChangesHistory$1;-><init>(Lru/killer666/hearthstone/VersionChangesHistory;)V

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 54
    :cond_94
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 56
    .local v9, "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x1

    invoke-interface {v9, v11, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    const/4 v0, 0x1

    .line 62
    .end local v9    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "firstPart":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    .end local v13    # "secondParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "versionCode":I
    :goto_a0
    return v0

    .line 23
    :catch_a1
    move-exception v8

    .line 24
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 25
    const/4 v0, 0x1

    goto :goto_a0

    .line 62
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    .restart local v14    # "versionCode":I
    :cond_a7
    const/4 v0, 0x0

    goto :goto_a0
.end method
