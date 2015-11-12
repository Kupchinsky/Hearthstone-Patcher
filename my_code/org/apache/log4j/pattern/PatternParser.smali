.class public final Lorg/apache/log4j/pattern/PatternParser;
.super Ljava/lang/Object;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;
    }
.end annotation


# static fields
.field private static final CONVERTER_STATE:I = 0x1

.field private static final DOT_STATE:I = 0x3

.field private static final ESCAPE_CHAR:C = '%'

.field private static final FILENAME_PATTERN_RULES:Ljava/util/Map;

.field private static final LITERAL_STATE:I = 0x0

.field private static final MAX_STATE:I = 0x5

.field private static final MIN_STATE:I = 0x4

.field private static final PATTERN_LAYOUT_RULES:Ljava/util/Map;

.field static class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

.field static class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 91
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    .local v1, "rules":Ljava/util/Map;
    const-string v3, "c"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_24d

    const-string v2, "org.apache.log4j.pattern.LoggerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    :goto_15
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v3, "logger"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_251

    const-string v2, "org.apache.log4j.pattern.LoggerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    :goto_26
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v3, "C"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_255

    const-string v2, "org.apache.log4j.pattern.ClassNamePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    :goto_37
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v3, "class"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_259

    const-string v2, "org.apache.log4j.pattern.ClassNamePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    :goto_48
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v3, "d"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_25d

    const-string v2, "org.apache.log4j.pattern.DatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    :goto_59
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v3, "date"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_261

    const-string v2, "org.apache.log4j.pattern.DatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    :goto_6a
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v3, "F"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_265

    const-string v2, "org.apache.log4j.pattern.FileLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    :goto_7b
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v3, "file"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_269

    const-string v2, "org.apache.log4j.pattern.FileLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    :goto_8c
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v3, "l"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_26d

    const-string v2, "org.apache.log4j.pattern.FullLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    :goto_9d
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v3, "L"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_271

    const-string v2, "org.apache.log4j.pattern.LineLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    :goto_ae
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v3, "line"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_275

    const-string v2, "org.apache.log4j.pattern.LineLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    :goto_bf
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v3, "m"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_279

    const-string v2, "org.apache.log4j.pattern.MessagePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    :goto_d0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v3, "message"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_27d

    const-string v2, "org.apache.log4j.pattern.MessagePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    :goto_e1
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v3, "n"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_281

    const-string v2, "org.apache.log4j.pattern.LineSeparatorPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    :goto_f2
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v3, "M"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_285

    const-string v2, "org.apache.log4j.pattern.MethodLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    :goto_103
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v3, "method"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_289

    const-string v2, "org.apache.log4j.pattern.MethodLocationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    :goto_114
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v3, "p"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_28d

    const-string v2, "org.apache.log4j.pattern.LevelPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    :goto_125
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v3, "level"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_291

    const-string v2, "org.apache.log4j.pattern.LevelPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    :goto_136
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v3, "r"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_295

    const-string v2, "org.apache.log4j.pattern.RelativeTimePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    :goto_147
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v3, "relative"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_299

    const-string v2, "org.apache.log4j.pattern.RelativeTimePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    :goto_158
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v3, "t"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_29d

    const-string v2, "org.apache.log4j.pattern.ThreadPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    :goto_169
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v3, "thread"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2a1

    const-string v2, "org.apache.log4j.pattern.ThreadPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    :goto_17a
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "x"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2a5

    const-string v2, "org.apache.log4j.pattern.NDCPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    :goto_18b
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v3, "ndc"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2a9

    const-string v2, "org.apache.log4j.pattern.NDCPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    :goto_19c
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v3, "X"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2ad

    const-string v2, "org.apache.log4j.pattern.PropertiesPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    :goto_1ad
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v3, "properties"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2b1

    const-string v2, "org.apache.log4j.pattern.PropertiesPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    :goto_1be
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "sn"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2b5

    const-string v2, "org.apache.log4j.pattern.SequenceNumberPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    :goto_1cf
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v3, "sequenceNumber"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2b9

    const-string v2, "org.apache.log4j.pattern.SequenceNumberPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    :goto_1e0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v3, "throwable"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2bd

    const-string v2, "org.apache.log4j.pattern.ThrowableInformationPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    :goto_1f1
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v2, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;

    invoke-direct {v2, v1}, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;-><init>(Ljava/util/Map;)V

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->PATTERN_LAYOUT_RULES:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 139
    .local v0, "fnameRules":Ljava/util/Map;
    const-string v3, "d"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2c1

    const-string v2, "org.apache.log4j.pattern.FileDatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    :goto_20f
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v3, "date"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2c5

    const-string v2, "org.apache.log4j.pattern.FileDatePatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    :goto_220
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v3, "i"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2c9

    const-string v2, "org.apache.log4j.pattern.IntegerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    :goto_231
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v3, "index"

    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    if-nez v2, :cond_2cd

    const-string v2, "org.apache.log4j.pattern.IntegerPatternConverter"

    invoke-static {v2}, Lorg/apache/log4j/pattern/PatternParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    :goto_242
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v2, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;

    invoke-direct {v2, v0}, Lorg/apache/log4j/pattern/PatternParser$ReadOnlyMap;-><init>(Ljava/util/Map;)V

    sput-object v2, Lorg/apache/log4j/pattern/PatternParser;->FILENAME_PATTERN_RULES:Ljava/util/Map;

    .line 145
    return-void

    .line 92
    .end local v0    # "fnameRules":Ljava/util/Map;
    :cond_24d
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    goto/16 :goto_15

    .line 93
    :cond_251
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LoggerPatternConverter:Ljava/lang/Class;

    goto/16 :goto_26

    .line 95
    :cond_255
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    goto/16 :goto_37

    .line 96
    :cond_259
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ClassNamePatternConverter:Ljava/lang/Class;

    goto/16 :goto_48

    .line 98
    :cond_25d
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    goto/16 :goto_59

    .line 99
    :cond_261
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$DatePatternConverter:Ljava/lang/Class;

    goto/16 :goto_6a

    .line 101
    :cond_265
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_7b

    .line 102
    :cond_269
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_8c

    .line 104
    :cond_26d
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FullLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_9d

    .line 106
    :cond_271
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_ae

    .line 107
    :cond_275
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_bf

    .line 109
    :cond_279
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    goto/16 :goto_d0

    .line 110
    :cond_27d
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MessagePatternConverter:Ljava/lang/Class;

    goto/16 :goto_e1

    .line 112
    :cond_281
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LineSeparatorPatternConverter:Ljava/lang/Class;

    goto/16 :goto_f2

    .line 114
    :cond_285
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_103

    .line 115
    :cond_289
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$MethodLocationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_114

    .line 117
    :cond_28d
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    goto/16 :goto_125

    .line 118
    :cond_291
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$LevelPatternConverter:Ljava/lang/Class;

    goto/16 :goto_136

    .line 120
    :cond_295
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    goto/16 :goto_147

    .line 121
    :cond_299
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$RelativeTimePatternConverter:Ljava/lang/Class;

    goto/16 :goto_158

    .line 123
    :cond_29d
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    goto/16 :goto_169

    .line 124
    :cond_2a1
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThreadPatternConverter:Ljava/lang/Class;

    goto/16 :goto_17a

    .line 126
    :cond_2a5
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    goto/16 :goto_18b

    .line 127
    :cond_2a9
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$NDCPatternConverter:Ljava/lang/Class;

    goto/16 :goto_19c

    .line 129
    :cond_2ad
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1ad

    .line 130
    :cond_2b1
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$PropertiesPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1be

    .line 132
    :cond_2b5
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1cf

    .line 133
    :cond_2b9
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$SequenceNumberPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1e0

    .line 135
    :cond_2bd
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$ThrowableInformationPatternConverter:Ljava/lang/Class;

    goto/16 :goto_1f1

    .line 139
    .restart local v0    # "fnameRules":Ljava/util/Map;
    :cond_2c1
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    goto/16 :goto_20f

    .line 140
    :cond_2c5
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$FileDatePatternConverter:Ljava/lang/Class;

    goto/16 :goto_220

    .line 141
    :cond_2c9
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    goto/16 :goto_231

    .line 142
    :cond_2cd
    sget-object v2, Lorg/apache/log4j/pattern/PatternParser;->class$org$apache$log4j$pattern$IntegerPatternConverter:Ljava/lang/Class;

    goto/16 :goto_242
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 92
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

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createConverter(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/pattern/PatternConverter;
    .registers 20
    .param p0, "converterId"    # Ljava/lang/String;
    .param p1, "currentLiteral"    # Ljava/lang/StringBuffer;
    .param p2, "converterRegistry"    # Ljava/util/Map;
    .param p3, "rules"    # Ljava/util/Map;
    .param p4, "options"    # Ljava/util/List;

    .prologue
    .line 424
    move-object v2, p0

    .line 425
    .local v2, "converterName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 427
    .local v3, "converterObj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, "i":I
    move-object v11, v3

    .end local v3    # "converterObj":Ljava/lang/Object;
    :goto_7
    if-lez v7, :cond_26

    if-nez v11, :cond_26

    .line 429
    const/4 v12, 0x0

    invoke-virtual {v2, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 431
    if-eqz p2, :cond_150

    .line 432
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 435
    :goto_18
    if-nez v3, :cond_22

    if-eqz p3, :cond_22

    .line 436
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 428
    :cond_22
    add-int/lit8 v7, v7, -0x1

    move-object v11, v3

    goto :goto_7

    .line 440
    :cond_26
    if-nez v11, :cond_46

    .line 441
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Unrecognized format specifier ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 443
    const/4 v8, 0x0

    .line 512
    :goto_45
    return-object v8

    .line 446
    :cond_46
    const/4 v1, 0x0

    .line 448
    .local v1, "converterClass":Ljava/lang/Class;
    instance-of v12, v11, Ljava/lang/Class;

    if-eqz v12, :cond_98

    move-object v1, v11

    .line 449
    check-cast v1, Ljava/lang/Class;

    .line 470
    :goto_4e
    :try_start_4e
    const-string v11, "newInstance"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-string v14, "[Ljava.lang.String;"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 476
    .local v6, "factory":Ljava/lang/reflect/Method;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    .line 477
    .local v9, "optionsArray":[Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 479
    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v6, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 482
    .local v8, "newObj":Ljava/lang/Object;
    instance-of v11, v8, Lorg/apache/log4j/pattern/PatternConverter;

    if-eqz v11, :cond_e1

    .line 483
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 488
    check-cast v8, Lorg/apache/log4j/pattern/PatternConverter;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_97} :catch_104

    goto :goto_45

    .line 451
    .end local v6    # "factory":Ljava/lang/reflect/Method;
    .end local v8    # "newObj":Ljava/lang/Object;
    .end local v9    # "optionsArray":[Ljava/lang/String;
    :cond_98
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_c2

    .line 453
    :try_start_9c
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9c .. :try_end_a1} :catch_a3

    move-result-object v1

    goto :goto_4e

    .line 454
    :catch_a3
    move-exception v4

    .line 455
    .local v4, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Class for conversion pattern %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    const/4 v8, 0x0

    goto :goto_45

    .line 462
    .end local v4    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_c2
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Bad map entry for conversion pattern %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 465
    const/4 v8, 0x0

    goto/16 :goto_45

    .line 490
    .restart local v6    # "factory":Ljava/lang/reflect/Method;
    .restart local v8    # "newObj":Ljava/lang/Object;
    .restart local v9    # "optionsArray":[Ljava/lang/String;
    :cond_e1
    :try_start_e1
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " does not extend PatternConverter."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_101} :catch_104

    .line 512
    .end local v6    # "factory":Ljava/lang/reflect/Method;
    .end local v8    # "newObj":Ljava/lang/Object;
    .end local v9    # "optionsArray":[Ljava/lang/String;
    :goto_101
    const/4 v8, 0x0

    goto/16 :goto_45

    .line 494
    :catch_104
    move-exception v4

    .line 495
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Error creating converter for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    :try_start_11b
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/log4j/pattern/PatternConverter;

    .line 501
    .local v10, "pc":Lorg/apache/log4j/pattern/PatternConverter;
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_135} :catch_138

    move-object v8, v10

    .line 506
    goto/16 :goto_45

    .line 507
    .end local v10    # "pc":Lorg/apache/log4j/pattern/PatternConverter;
    :catch_138
    move-exception v5

    .line 508
    .local v5, "ex2":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Error creating converter for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_101

    .end local v1    # "converterClass":Ljava/lang/Class;
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "ex2":Ljava/lang/Exception;
    :cond_150
    move-object v3, v11

    goto/16 :goto_18
.end method

.method private static extractConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .registers 7
    .param p0, "lastChar"    # C
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "convBuf"    # Ljava/lang/StringBuffer;
    .param p4, "currentLiteral"    # Ljava/lang/StringBuffer;

    .prologue
    .line 187
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 194
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(C)Z

    move-result v1

    if-nez v1, :cond_c

    move v0, p2

    .line 210
    .end local p2    # "i":I
    .local v0, "i":I
    :goto_b
    return v0

    .line 198
    .end local v0    # "i":I
    .restart local p2    # "i":I
    :cond_c
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_30

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_30
    move v0, p2

    .line 210
    .end local p2    # "i":I
    .restart local v0    # "i":I
    goto :goto_b
.end method

.method private static extractOptions(Ljava/lang/String;ILjava/util/List;)I
    .registers 7
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "i"    # I
    .param p2, "options"    # Ljava/util/List;

    .prologue
    .line 221
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_17

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_17

    .line 222
    const/16 v2, 0x7d

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 224
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    .line 233
    .end local v0    # "end":I
    :cond_17
    return p1

    .line 228
    .restart local v0    # "end":I
    :cond_18
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "r":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 p1, v0, 0x1

    .line 231
    goto :goto_0
.end method

.method private static finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I
    .registers 16
    .param p0, "c"    # C
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "currentLiteral"    # Ljava/lang/StringBuffer;
    .param p4, "formattingInfo"    # Lorg/apache/log4j/pattern/FormattingInfo;
    .param p5, "converterRegistry"    # Ljava/util/Map;
    .param p6, "rules"    # Ljava/util/Map;
    .param p7, "patternConverters"    # Ljava/util/List;
    .param p8, "formattingInfos"    # Ljava/util/List;

    .prologue
    .line 534
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 535
    .local v0, "convBuf":Ljava/lang/StringBuffer;
    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/log4j/pattern/PatternParser;->extractConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result p2

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "converterId":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v3, "options":Ljava/util/List;
    invoke-static {p1, p2, v3}, Lorg/apache/log4j/pattern/PatternParser;->extractOptions(Ljava/lang/String;ILjava/util/List;)I

    move-result p2

    .line 542
    invoke-static {v1, p3, p5, p6, v3}, Lorg/apache/log4j/pattern/PatternParser;->createConverter(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lorg/apache/log4j/pattern/PatternConverter;

    move-result-object v4

    .line 546
    .local v4, "pc":Lorg/apache/log4j/pattern/PatternConverter;
    if-nez v4, :cond_66

    .line 549
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_56

    .line 550
    :cond_24
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "Empty conversion specifier starting at position "

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 558
    .local v2, "msg":Ljava/lang/StringBuffer;
    :goto_2b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string v5, " in conversion pattern."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 563
    new-instance v5, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v5

    invoke-interface {p8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    .end local v2    # "msg":Ljava/lang/StringBuffer;
    :cond_51
    :goto_51
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 579
    return p2

    .line 553
    :cond_56
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v5, "Unrecognized conversion specifier ["

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v2    # "msg":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    const-string v5, "] starting at position "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 567
    .end local v2    # "msg":Ljava/lang/StringBuffer;
    :cond_66
    invoke-interface {p7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-interface {p8, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_51

    .line 571
    new-instance v5, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v5

    invoke-interface {p8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51
.end method

.method public static getFileNamePatternRules()Ljava/util/Map;
    .registers 1

    .prologue
    .line 166
    sget-object v0, Lorg/apache/log4j/pattern/PatternParser;->FILENAME_PATTERN_RULES:Ljava/util/Map;

    return-object v0
.end method

.method public static getPatternLayoutRules()Ljava/util/Map;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lorg/apache/log4j/pattern/PatternParser;->PATTERN_LAYOUT_RULES:Ljava/util/Map;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .registers 18
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "patternConverters"    # Ljava/util/List;
    .param p2, "formattingInfos"    # Ljava/util/List;
    .param p3, "converterRegistry"    # Ljava/util/Map;
    .param p4, "rules"    # Ljava/util/Map;

    .prologue
    .line 247
    if-nez p0, :cond_a

    .line 248
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v5, "pattern"

    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_a
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 253
    .local v3, "currentLiteral":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 254
    .local v11, "patternLength":I
    const/4 v12, 0x0

    .line 256
    .local v12, "state":I
    const/4 v2, 0x0

    .line 257
    .local v2, "i":I
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .local v4, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move v10, v2

    .line 259
    .end local v2    # "i":I
    .local v10, "i":I
    :goto_1c
    if-ge v10, v11, :cond_175

    .line 260
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 262
    .local v0, "c":C
    packed-switch v12, :pswitch_data_190

    :goto_27
    :pswitch_27
    move v10, v2

    .line 397
    .end local v2    # "i":I
    .restart local v10    # "i":I
    goto :goto_1c

    .line 266
    .end local v10    # "i":I
    .restart local v2    # "i":I
    :pswitch_29
    if-ne v2, v11, :cond_30

    .line 267
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v10, v2

    .line 269
    .end local v2    # "i":I
    .restart local v10    # "i":I
    goto :goto_1c

    .line 272
    .end local v10    # "i":I
    .restart local v2    # "i":I
    :cond_30
    const/16 v1, 0x25

    if-ne v0, v1, :cond_67

    .line 274
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_1a0

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_54

    .line 284
    new-instance v1, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_54
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 290
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    const/4 v12, 0x1

    .line 292
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    goto :goto_27

    .line 276
    :pswitch_61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 279
    goto :goto_27

    .line 295
    :cond_67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_27

    .line 301
    :pswitch_6b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 303
    packed-switch v0, :pswitch_data_1a6

    .line 319
    const/16 v1, 0x30

    if-lt v0, v1, :cond_9d

    const/16 v1, 0x39

    if-gt v0, v1, :cond_9d

    .line 320
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    add-int/lit8 v5, v0, -0x30

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v6

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .line 324
    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .local v9, "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    const/4 v12, 0x4

    move-object v4, v9

    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto :goto_27

    .line 305
    :pswitch_8b
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    const/4 v1, 0x1

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v5

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v6

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move-object v4, v9

    .line 310
    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto :goto_27

    .line 313
    :pswitch_9b
    const/4 v12, 0x3

    .line 315
    goto :goto_27

    :cond_9d
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, p1

    move-object v8, p2

    .line 326
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    .line 331
    const/4 v12, 0x0

    .line 332
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_27

    .line 340
    :pswitch_b3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    const/16 v1, 0x30

    if-lt v0, v1, :cond_d7

    const/16 v1, 0x39

    if-gt v0, v1, :cond_d7

    .line 343
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v0, -0x30

    add-int/2addr v5, v6

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v6

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move-object v4, v9

    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto/16 :goto_27

    .line 348
    :cond_d7
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_de

    .line 349
    const/4 v12, 0x3

    goto/16 :goto_27

    :cond_de
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, p1

    move-object v8, p2

    .line 351
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    .line 354
    const/4 v12, 0x0

    .line 355
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_27

    .line 362
    :pswitch_f4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    const/16 v1, 0x30

    if-lt v0, v1, :cond_112

    const/16 v1, 0x39

    if-gt v0, v1, :cond_112

    .line 365
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v5

    add-int/lit8 v6, v0, -0x30

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .line 369
    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    const/4 v12, 0x5

    move-object v4, v9

    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto/16 :goto_27

    .line 371
    :cond_112
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error occured in position "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, ".\n Was expecting digit, instead got char \""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "\"."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 375
    const/4 v12, 0x0

    .line 378
    goto/16 :goto_27

    .line 381
    :pswitch_13b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    const/16 v1, 0x30

    if-lt v0, v1, :cond_15f

    const/16 v1, 0x39

    if-gt v0, v1, :cond_15f

    .line 384
    new-instance v9, Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->isLeftAligned()Z

    move-result v1

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMinLength()I

    move-result v5

    invoke-virtual {v4}, Lorg/apache/log4j/pattern/FormattingInfo;->getMaxLength()I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int/2addr v6, v7

    invoke-direct {v9, v1, v5, v6}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    .end local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    move-object v4, v9

    .end local v9    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    .restart local v4    # "formattingInfo":Lorg/apache/log4j/pattern/FormattingInfo;
    goto/16 :goto_27

    :cond_15f
    move-object v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, p1

    move-object v8, p2

    .line 389
    invoke-static/range {v0 .. v8}, Lorg/apache/log4j/pattern/PatternParser;->finalizeConverter(CLjava/lang/String;ILjava/lang/StringBuffer;Lorg/apache/log4j/pattern/FormattingInfo;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    .line 392
    const/4 v12, 0x0

    .line 393
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v4

    .line 394
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_27

    .line 402
    .end local v0    # "c":C
    .end local v2    # "i":I
    .restart local v10    # "i":I
    :cond_175
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_18e

    .line 403
    new-instance v1, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_18e
    return-void

    .line 262
    nop

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_29
        :pswitch_6b
        :pswitch_27
        :pswitch_f4
        :pswitch_b3
        :pswitch_13b
    .end packed-switch

    .line 274
    :pswitch_data_1a0
    .packed-switch 0x25
        :pswitch_61
    .end packed-switch

    .line 303
    :pswitch_data_1a6
    .packed-switch 0x2d
        :pswitch_8b
        :pswitch_9b
    .end packed-switch
.end method
