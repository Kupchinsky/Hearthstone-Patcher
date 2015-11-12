.class public Lorg/simpleframework/util/lease/LeaseException;
.super Lorg/simpleframework/util/FormatException;
.source "LeaseException.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/util/FormatException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method
