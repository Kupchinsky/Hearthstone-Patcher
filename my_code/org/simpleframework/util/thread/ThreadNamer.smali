.class Lorg/simpleframework/util/thread/ThreadNamer;
.super Ljava/lang/Object;
.source "ThreadNamer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;
    }
.end annotation


# static fields
.field private static final SEQUENCER:Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;

    invoke-direct {v0}, Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;-><init>()V

    sput-object v0, Lorg/simpleframework/util/thread/ThreadNamer;->SEQUENCER:Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;

    .line 43
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v1, Lorg/simpleframework/util/thread/ThreadNamer;->SEQUENCER:Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;

    invoke-virtual {v1, p0}, Lorg/simpleframework/util/thread/ThreadNamer$Sequencer;->next(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "count":I
    if-nez p0, :cond_a

    .line 59
    const/4 v1, 0x0

    .line 61
    :goto_9
    return-object v1

    :cond_a
    const-string v1, "%s-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method
