.class public Lru/killer666/hearthstone/VersionChangesHistory;
.super Lru/killer666/hearthstone/WaitableTask;
.source "VersionChangesHistory.java"


# static fields
.field private static final prefsFile:Ljava/lang/String; = "history_settings"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    return-void
.end method


# virtual methods
.method doTask()Z
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v6, 0x0

    .line 17
    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 18
    .local v7, "activity":Landroid/app/Activity;
    const/4 v12, 0x0

    .line 22
    .local v12, "versionCode":I
    :try_start_5
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v12, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_14} :catch_7f

    .line 30
    const-string v0, "history_settings"

    invoke-static {v0}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 31
    .local v11, "preferences":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infoshown_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 33
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v11, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 35
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lru/killer666/hearthstone/UpdateChecker;->currentBuild:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):\n\n- \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd \ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ufffd\ufffd"

    new-instance v3, Lru/killer666/hearthstone/VersionChangesHistory$1;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/VersionChangesHistory$1;-><init>(Lru/killer666/hearthstone/VersionChangesHistory;)V

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 48
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 50
    .local v9, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v6, v13

    .line 56
    .end local v9    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    :cond_7e
    :goto_7e
    return v6

    .line 24
    :catch_7f
    move-exception v8

    .line 26
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v6, v13

    .line 27
    goto :goto_7e
.end method
