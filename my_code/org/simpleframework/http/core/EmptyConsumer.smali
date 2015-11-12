.class Lorg/simpleframework/http/core/EmptyConsumer;
.super Lorg/simpleframework/http/core/BodyConsumer;
.source "EmptyConsumer.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/simpleframework/http/core/BodyConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lorg/simpleframework/transport/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Lorg/simpleframework/transport/Cursor;

    .prologue
    .line 41
    return-void
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method
