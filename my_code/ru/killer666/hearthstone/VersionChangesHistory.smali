.class public Lru/killer666/hearthstone/VersionChangesHistory;
.super Lru/killer666/hearthstone/WaitableTask;
.source "VersionChangesHistory.java"


# static fields
.field private static final prefsFile:Ljava/lang/String; = "history_settings"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    return-void
.end method


# virtual methods
.method doTask()Z
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v6, 0x0

    .line 14
    sget-object v7, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 18
    .local v7, "activity":Landroid/app/Activity;
    :try_start_4
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v12, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_13} :catch_4d

    .line 24
    .local v12, "versionCode":I
    const-string v0, "history_settings"

    invoke-static {v0}, Lru/killer666/hearthstone/Wrapper;->getPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 25
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

    .line 27
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v11, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 28
    packed-switch v12, :pswitch_data_88

    .line 44
    :goto_41
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 46
    .local v9, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v6, v13

    .line 52
    .end local v9    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "versionCode":I
    :cond_4c
    :goto_4c
    return v6

    .line 19
    :catch_4d
    move-exception v8

    .line 20
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v6, v13

    .line 21
    goto :goto_4c

    .line 30
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    .restart local v12    # "versionCode":I
    :pswitch_53
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0418\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f \u0432 \u0441\u0431\u043e\u0440\u043a\u0435 "

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

    const-string v2, "):\n\n- \u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u0438\u0441\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0430 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 Failure to initialize! Your hardware does not support this application, sorry! (\u043f\u0440\u043e\u0441\u044c\u0431\u0430 \u043e\u0442\u043f\u0438\u0441\u0430\u0442\u044c\u0441\u044f \u0432 \u0442\u043e\u043f\u0438\u043a\u0435 4pda.ru, \u0435\u0441\u043b\u0438 \u0443 \u0432\u0430\u0441 \u043e\u043d\u0430 \u0431\u044b\u043b\u0430 \u0438 \u0438\u0441\u0447\u0435\u0437\u043b\u0430)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u041e\u041a"

    new-instance v3, Lru/killer666/hearthstone/VersionChangesHistory$1;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/VersionChangesHistory$1;-><init>(Lru/killer666/hearthstone/VersionChangesHistory;)V

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_41

    .line 28
    :pswitch_data_88
    .packed-switch 0x102e37
        :pswitch_53
    .end packed-switch
.end method
