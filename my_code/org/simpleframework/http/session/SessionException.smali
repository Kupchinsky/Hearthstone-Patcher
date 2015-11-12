.class public Lorg/simpleframework/http/session/SessionException;
.super Lorg/simpleframework/util/lease/LeaseException;
.source "SessionException.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/util/lease/LeaseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method
