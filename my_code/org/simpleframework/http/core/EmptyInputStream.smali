.class Lorg/simpleframework/http/core/EmptyInputStream;
.super Ljava/io/InputStream;
.source "EmptyInputStream.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, -0x1

    return v0
.end method
