.class public Lcom/blizzard/wtcg/hearthstone/DeviceSettings;
.super Ljava/lang/Object;
.source "DeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;
    }
.end annotation


# static fields
.field public static final s_RegionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;",
            ">;"
        }
    .end annotation
.end field

.field public static s_densityDpi:I

.field public static s_heightPixels:I

.field public static s_isExtraLarge:Z

.field static s_isMusicPlaying:Z

.field public static s_screenLayout:I

.field public static s_widthPixels:I

.field public static s_xdpi:F

.field public static s_ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_isMusicPlaying:Z

    .line 31
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$1;

    invoke-direct {v0}, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$1;-><init>()V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_RegionMap:Ljava/util/HashMap;

    .line 178
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBatteryLevel()F
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    .line 99
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "level"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v1, v3

    .line 101
    .local v1, "level":F
    const-string v3, "scale"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-float v2, v3

    .line 102
    .local v2, "scale":F
    cmpl-float v3, v1, v7

    if-eqz v3, :cond_0

    cmpl-float v3, v2, v7

    if-nez v3, :cond_1

    .line 104
    :cond_0
    const/4 v3, 0x0

    .line 106
    :goto_0
    return v3

    :cond_1
    div-float v3, v1, v2

    goto :goto_0
.end method

.method public static GetBatteryStatus()I
    .locals 9

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "UNPLUGGED":I
    const/4 v0, 0x1

    .line 113
    .local v0, "CHARGING":I
    const/4 v1, 0x2

    .line 115
    .local v1, "FULL":I
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 116
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "status"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 118
    .local v4, "status":I
    packed-switch v4, :pswitch_data_0

    .line 129
    .end local v2    # "UNPLUGGED":I
    :goto_0
    :pswitch_0
    return v2

    .restart local v2    # "UNPLUGGED":I
    :pswitch_1
    move v2, v0

    .line 121
    goto :goto_0

    :pswitch_2
    move v2, v1

    .line 123
    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static GetBnetLocale()Ljava/lang/String;
    .locals 5

    .prologue
    .line 150
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 151
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    :cond_0
    const-string v3, "enUS"

    .line 157
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static GetBnetRegion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 163
    .local v1, "loc":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    const-string v3, "US"

    .line 172
    :goto_0
    return-object v3

    .line 168
    :cond_0
    sget-object v3, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_RegionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;

    .line 169
    .local v2, "region":Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;
    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v2}, Lcom/blizzard/wtcg/hearthstone/DeviceSettings$Region;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 172
    :cond_1
    const-string v3, "US"

    goto :goto_0
.end method

.method public static GetLocaleCountryCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "DeviceSettings.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getting locale country code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v0
.end method

.method public static GetLocaleLanguageCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->GetLocaleCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "languageCode":Ljava/lang/String;
    const-string v1, "DeviceSettings.java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getting locale language code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v0
.end method

.method public static GetScreenSettings()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 185
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 186
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    :goto_0
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_heightPixels:I

    .line 191
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_widthPixels:I

    .line 192
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sput v2, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_xdpi:F

    .line 193
    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sput v2, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_ydpi:F

    .line 194
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_densityDpi:I

    .line 196
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 197
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    sput v2, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_screenLayout:I

    .line 198
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v2

    sput-boolean v2, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_isExtraLarge:Z

    .line 199
    return-void

    .line 188
    .end local v0    # "configuration":Landroid/content/res/Configuration;
    :cond_0
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public static GoHome()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public static IsMusicPlaying()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/blizzard/wtcg/hearthstone/DeviceSettings;->s_isMusicPlaying:Z

    return v0
.end method
