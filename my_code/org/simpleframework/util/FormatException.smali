.class public Lorg/simpleframework/util/FormatException;
.super Ljava/lang/Exception;
.source "FormatException.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/Object;

    .prologue
    .line 40
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "template"    # Ljava/lang/String;
    .param p3, "list"    # [Ljava/lang/Object;

    .prologue
    .line 53
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method
