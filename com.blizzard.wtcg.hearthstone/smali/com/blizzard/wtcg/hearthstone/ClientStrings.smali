.class public Lcom/blizzard/wtcg/hearthstone/ClientStrings;
.super Ljava/lang/Object;
.source "ClientStrings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientStrings"

.field private static s_instance:Lcom/blizzard/wtcg/hearthstone/ClientStrings;


# instance fields
.field private m_stringTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    invoke-direct {v0}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;-><init>()V

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->s_instance:Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->m_stringTable:Ljava/util/Hashtable;

    .line 82
    return-void
.end method

.method public static instance()Lcom/blizzard/wtcg/hearthstone/ClientStrings;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->s_instance:Lcom/blizzard/wtcg/hearthstone/ClientStrings;

    return-object v0
.end method


# virtual methods
.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "stringName"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 46
    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "stringName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1, p1}, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "stringName"    # Ljava/lang/String;
    .param p2, "defaultResult"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->m_stringTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 37
    const-string v1, "ClientStrings"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find localized string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public loadStringsFile(Ljava/lang/String;)V
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 53
    sget-object v8, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "countryCode":Ljava/lang/String;
    sget-object v8, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "languageCode":Ljava/lang/String;
    const-string v8, "assets/bin/Data/Raw/Strings/%s%s/%s.txt"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v11

    aput-object v0, v9, v10

    aput-object p1, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "stringFile":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 57
    .local v2, "fileStream":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string v9, "assets/bin/Data/Raw/Strings/enUS/%s.txt"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 59
    :cond_0
    const-string v8, "ClientStrings"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "loading stream from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-eqz v2, :cond_2

    .line 64
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    .local v4, "reader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 66
    .local v5, "str":Ljava/lang/String;
    const/4 v8, 0x5

    new-array v7, v8, [Ljava/lang/String;

    .line 67
    .local v7, "tokens":[Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 78
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    .end local v7    # "tokens":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 69
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "str":Ljava/lang/String;
    .restart local v7    # "tokens":[Ljava/lang/String;
    :cond_3
    const-string v8, "\t"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 70
    array-length v8, v7

    if-lt v8, v12, :cond_1

    .line 71
    iget-object v8, p0, Lcom/blizzard/wtcg/hearthstone/ClientStrings;->m_stringTable:Ljava/util/Hashtable;

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v8, "ClientStrings"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "reading "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    .end local v7    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_1
.end method
