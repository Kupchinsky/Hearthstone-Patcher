.class Lorg/apache/log4j/or/DefaultRenderer;
.super Ljava/lang/Object;
.source "DefaultRenderer.java"

# interfaces
.implements Lorg/apache/log4j/or/ObjectRenderer;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public doRender(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 39
    :goto_4
    return-object v1

    .line 38
    :catch_5
    move-exception v0

    .line 39
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method
