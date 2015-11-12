.class public final Lorg/slf4j/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final API_COMPATIBILITY_LIST:[Ljava/lang/String;

.field static final CODES_PREFIX:Ljava/lang/String; = "http://www.slf4j.org/codes.html"

.field static final FAILED_INITILIZATION:I = 0x2

.field static INITIALIZATION_STATE:I = 0x0

.field static final MULTIPLE_BINDINGS_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#multiple_bindings"

.field static NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory; = null

.field static final NOP_FALLBACK_INITILIZATION:I = 0x4

.field static final NO_STATICLOGGERBINDER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#StaticLoggerBinder"

.field static final NULL_LF_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#null_LF"

.field static final ONGOING_INITILIZATION:I = 0x1

.field private static STATIC_LOGGER_BINDER_PATH:Ljava/lang/String; = null

.field static final SUBSTITUTE_LOGGER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#substituteLogger"

.field static final SUCCESSFUL_INITILIZATION:I = 0x3

.field static TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory; = null

.field static final UNINITIALIZED:I = 0x0

.field static final UNSUCCESSFUL_INIT_MSG:Ljava/lang/String; = "org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

.field static final UNSUCCESSFUL_INIT_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#unsuccessfulInit"

.field static final VERSION_MISMATCH:Ljava/lang/String; = "http://www.slf4j.org/codes.html#version_mismatch"

.field static class$org$slf4j$LoggerFactory:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 73
    sput v2, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 74
    new-instance v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 75
    new-instance v0, Lorg/slf4j/helpers/NOPLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1.6"

    aput-object v1, v0, v2

    sput-object v0, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 209
    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    sput-object v0, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private static final bind()V
    .registers 6

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 129
    const/4 v4, 0x3

    sput v4, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 130
    invoke-static {}, Lorg/slf4j/LoggerFactory;->emitSubstituteLoggerWarning()V
    :try_end_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_9} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_4f

    .line 157
    .local v1, "msg":Ljava/lang/String;
    .local v2, "ncde":Ljava/lang/NoClassDefFoundError;
    :goto_9
    return-void

    .line 131
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "ncde":Ljava/lang/NoClassDefFoundError;
    :catch_a
    move-exception v2

    .line 132
    .restart local v2    # "ncde":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 133
    .restart local v1    # "msg":Ljava/lang/String;
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 134
    const/4 v4, 0x4

    sput v4, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 135
    const-string v4, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 137
    const-string v4, "Defaulting to no-operation (NOP) logger implementation"

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 138
    const-string v4, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    goto :goto_9

    .line 141
    :cond_28
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 142
    throw v2

    .line 144
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "ncde":Ljava/lang/NoClassDefFoundError;
    :catch_2c
    move-exception v3

    .line 145
    .local v3, "nsme":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "msg":Ljava/lang/String;
    if-eqz v1, :cond_4e

    const-string v4, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4e

    .line 147
    const/4 v4, 0x2

    sput v4, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 148
    const-string v4, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 149
    const-string v4, "Your binding is version 1.5.5 or earlier."

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 150
    const-string v4, "Upgrade your binding to version 1.6.x. or 2.0.x"

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 152
    :cond_4e
    throw v3

    .line 153
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "nsme":Ljava/lang/NoSuchMethodError;
    :catch_4f
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 155
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected initialization failure"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final emitSubstituteLoggerWarning()V
    .registers 4

    .prologue
    .line 165
    sget-object v3, Lorg/slf4j/LoggerFactory;->TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getLoggerNameList()Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "loggerNameList":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 178
    :cond_c
    return-void

    .line 169
    :cond_d
    const-string v3, "The following loggers will not work because they were created"

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 171
    const-string v3, "during the default configuration phase of the underlying logging system."

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 173
    const-string v3, "See also http://www.slf4j.org/codes.html#substituteLogger"

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 175
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, "loggerName":Ljava/lang/String;
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method static failedBinding(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 160
    const/4 v0, 0x2

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 161
    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    invoke-static {v0, p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method

.method public static getILoggerFactory()Lorg/slf4j/ILoggerFactory;
    .registers 2

    .prologue
    .line 277
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    if-nez v0, :cond_a

    .line 278
    const/4 v0, 0x1

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 279
    invoke-static {}, Lorg/slf4j/LoggerFactory;->performInitialization()V

    .line 282
    :cond_a
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    packed-switch v0, :pswitch_data_2e

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_17
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    .line 292
    :goto_1f
    return-object v0

    .line 286
    :pswitch_20
    sget-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    goto :goto_1f

    .line 288
    :pswitch_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_2b
    sget-object v0, Lorg/slf4j/LoggerFactory;->TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    goto :goto_1f

    .line 282
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_23
        :pswitch_17
        :pswitch_20
    .end packed-switch
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .registers 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 265
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    .line 253
    .local v0, "iLoggerFactory":Lorg/slf4j/ILoggerFactory;
    invoke-interface {v0, p0}, Lorg/slf4j/ILoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    return-object v1
.end method

.method private static messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z
    .registers 5
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 116
    if-nez p0, :cond_6

    .line 122
    :cond_5
    :goto_5
    return v0

    .line 118
    :cond_6
    const-string v2, "org/slf4j/impl/StaticLoggerBinder"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_10

    move v0, v1

    .line 119
    goto :goto_5

    .line 120
    :cond_10
    const-string v2, "org.slf4j.impl.StaticLoggerBinder"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 121
    goto :goto_5
.end method

.method private static final performInitialization()V
    .registers 2

    .prologue
    .line 107
    invoke-static {}, Lorg/slf4j/LoggerFactory;->singleImplementationSanityCheck()V

    .line 108
    invoke-static {}, Lorg/slf4j/LoggerFactory;->bind()V

    .line 109
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 110
    invoke-static {}, Lorg/slf4j/LoggerFactory;->versionSanityCheck()V

    .line 113
    :cond_e
    return-void
.end method

.method static reset()V
    .registers 1

    .prologue
    .line 102
    const/4 v0, 0x0

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 103
    new-instance v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 104
    return-void
.end method

.method private static singleImplementationSanityCheck()V
    .registers 8

    .prologue
    .line 213
    :try_start_0
    sget-object v6, Lorg/slf4j/LoggerFactory;->class$org$slf4j$LoggerFactory:Ljava/lang/Class;

    if-nez v6, :cond_34

    const-string v6, "org.slf4j.LoggerFactory"

    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/slf4j/LoggerFactory;->class$org$slf4j$LoggerFactory:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 216
    .local v3, "loggerFactoryClassLoader":Ljava/lang/ClassLoader;
    if-nez v3, :cond_37

    .line 217
    sget-object v6, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    .line 224
    .local v5, "paths":Ljava/util/Enumeration;
    :goto_18
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 225
    .local v0, "implementationSet":Ljava/util/Set;
    :goto_1d
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 226
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    .line 227
    .local v4, "path":Ljava/net/URL;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_1d

    .line 238
    .end local v0    # "implementationSet":Ljava/util/Set;
    .end local v4    # "path":Ljava/net/URL;
    .end local v5    # "paths":Ljava/util/Enumeration;
    :catch_2d
    move-exception v1

    .line 239
    .local v1, "ioe":Ljava/io/IOException;
    const-string v6, "Error getting resources from path"

    invoke-static {v6, v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_33
    :goto_33
    return-void

    .line 213
    .end local v3    # "loggerFactoryClassLoader":Ljava/lang/ClassLoader;
    :cond_34
    :try_start_34
    sget-object v6, Lorg/slf4j/LoggerFactory;->class$org$slf4j$LoggerFactory:Ljava/lang/Class;

    goto :goto_c

    .line 219
    .restart local v3    # "loggerFactoryClassLoader":Ljava/lang/ClassLoader;
    :cond_37
    sget-object v6, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    .restart local v5    # "paths":Ljava/util/Enumeration;
    goto :goto_18

    .line 229
    .restart local v0    # "implementationSet":Ljava/util/Set;
    :cond_3e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_33

    .line 230
    const-string v6, "Class path contains multiple SLF4J bindings."

    invoke-static {v6}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 231
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 232
    .local v2, "iterator":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_77

    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URL;

    .line 234
    .restart local v4    # "path":Ljava/net/URL;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Found binding in ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    goto :goto_4e

    .line 236
    .end local v4    # "path":Ljava/net/URL;
    :cond_77
    const-string v6, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    invoke-static {v6}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_7c} :catch_2d

    goto :goto_33
.end method

.method private static final versionSanityCheck()V
    .registers 6

    .prologue
    .line 182
    :try_start_0
    sget-object v3, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 184
    .local v3, "requested":Ljava/lang/String;
    const/4 v2, 0x0

    .line 185
    .local v2, "match":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    sget-object v4, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_17

    .line 186
    sget-object v4, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 187
    const/4 v2, 0x1

    .line 185
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 190
    :cond_17
    if-nez v2, :cond_48

    .line 191
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "The requested version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " by your slf4j binding is not compatible with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 194
    const-string v4, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_48} :catch_50
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_48} :catch_49

    .line 205
    :cond_48
    :goto_48
    return-void

    .line 201
    :catch_49
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Throwable;
    const-string v4, "Unexpected problem occured during version sanity check"

    invoke-static {v4, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    .line 196
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_50
    move-exception v4

    goto :goto_48
.end method
