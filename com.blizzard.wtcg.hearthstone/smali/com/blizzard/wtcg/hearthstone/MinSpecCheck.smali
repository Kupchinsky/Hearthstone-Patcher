.class public Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;
.super Ljava/lang/Object;
.source "MinSpecCheck.java"


# static fields
.field static s_dontShowMeAgainBool:Ljava/lang/String;

.field static s_supportUrl:Ljava/lang/String;


# instance fields
.field final _this:Landroid/app/Activity;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field public m_minCPUFreq:I

.field public m_minRAM:J

.field public m_recommendedCPUCores:I

.field public m_recommendedCPUFreq:I

.field public m_recommendedRAM:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "https://nydus.battle.net/WTCG/{0}/client/support/system-requirements?targetRegion={1}"

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->s_supportUrl:Ljava/lang/String;

    .line 40
    const-string v0, "IgnoreMinSpecWarning"

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->s_dontShowMeAgainBool:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 2
    .param p1, "unityPlayer"    # Lcom/unity3d/player/UnityPlayer;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->m_recommendedCPUFreq:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->m_recommendedCPUCores:I

    .line 31
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->m_recommendedRAM:J

    .line 33
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->m_minCPUFreq:I

    .line 34
    const-wide/16 v0, 0x200

    iput-wide v0, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->m_minRAM:J

    .line 44
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 45
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->_this:Landroid/app/Activity;

    .line 46
    return-void
.end method

.method public static getCPUNumCores()I
    .locals 4

    .prologue
    .line 173
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$1CpuFilter;

    invoke-direct {v3}, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 177
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 178
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static getMaxCPUFreqMHz()I
    .locals 6

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 144
    .local v2, "maxFreq":I
    const/16 v4, 0x100

    :try_start_0
    new-array v0, v4, [B

    .line 145
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v3, "reader":Ljava/io/RandomAccessFile;
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 147
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 149
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "frequency":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 155
    .end local v0    # "buffer":[B
    .end local v1    # "frequency":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    :goto_0
    div-int/lit16 v4, v2, 0x3e8

    return v4

    .line 152
    :catch_0
    move-exception v4

    goto :goto_0

    .line 151
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static getTotalRAMMB()I
    .locals 12

    .prologue
    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "reader":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 188
    .local v1, "load":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 191
    .local v6, "totRam":D
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v9, "/proc/meminfo"

    const-string v10, "r"

    invoke-direct {v5, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .local v5, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v9, "(\\d+)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 196
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 197
    .local v2, "m":Ljava/util/regex/Matcher;
    const-string v8, ""

    .line 198
    .local v8, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_0

    .line 202
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 204
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-object v4, v5

    .line 211
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :goto_1
    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v10, v6, v10

    double-to-int v9, v10

    return v9

    .line 199
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_0

    .line 205
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "ex":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 205
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method


# virtual methods
.method public showMinSpecWarning(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 1
    .param p1, "paramOnClickListener1"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "paramOnClickListener2"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0

.end method
