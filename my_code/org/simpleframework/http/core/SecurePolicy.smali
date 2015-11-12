.class Lorg/simpleframework/http/core/SecurePolicy;
.super Ljava/lang/Object;
.source "SecurePolicy.java"

# interfaces
.implements Lorg/simpleframework/http/core/Policy;


# static fields
.field private static final NAME:Ljava/lang/String; = "JSESSIONID"


# instance fields
.field private cookie:Lorg/simpleframework/http/Cookie;

.field private header:Lorg/simpleframework/http/core/Header;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Header;)V
    .registers 2
    .param p1, "header"    # Lorg/simpleframework/http/core/Header;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/simpleframework/http/core/SecurePolicy;->header:Lorg/simpleframework/http/core/Header;

    .line 60
    return-void
.end method

.method private getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 98
    .local v0, "identity":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Lorg/simpleframework/http/Cookie;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v1, v3}, Lorg/simpleframework/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method public getSession(Z)Lorg/simpleframework/http/Cookie;
    .registers 4
    .param p1, "create"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lorg/simpleframework/http/core/SecurePolicy;->cookie:Lorg/simpleframework/http/Cookie;

    if-eqz v0, :cond_7

    .line 74
    iget-object v0, p0, Lorg/simpleframework/http/core/SecurePolicy;->cookie:Lorg/simpleframework/http/Cookie;

    .line 83
    :goto_6
    return-object v0

    .line 76
    :cond_7
    iget-object v0, p0, Lorg/simpleframework/http/core/SecurePolicy;->header:Lorg/simpleframework/http/core/Header;

    const-string v1, "JSESSIONID"

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Header;->getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/SecurePolicy;->cookie:Lorg/simpleframework/http/Cookie;

    .line 78
    iget-object v0, p0, Lorg/simpleframework/http/core/SecurePolicy;->cookie:Lorg/simpleframework/http/Cookie;

    if-nez v0, :cond_1f

    .line 79
    if-eqz p1, :cond_1f

    .line 80
    const-string v0, "JSESSIONID"

    invoke-direct {p0, v0}, Lorg/simpleframework/http/core/SecurePolicy;->getCookie(Ljava/lang/String;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/SecurePolicy;->cookie:Lorg/simpleframework/http/Cookie;

    .line 83
    :cond_1f
    iget-object v0, p0, Lorg/simpleframework/http/core/SecurePolicy;->cookie:Lorg/simpleframework/http/Cookie;

    goto :goto_6
.end method
