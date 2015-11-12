.class public Lorg/simpleframework/http/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# instance fields
.field private created:Z

.field private domain:Ljava/lang/String;

.field private expiry:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "/"

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "created"    # Z

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-boolean p4, p0, Lorg/simpleframework/http/Cookie;->created:Z

    .line 160
    iput-object p2, p0, Lorg/simpleframework/http/Cookie;->value:Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lorg/simpleframework/http/Cookie;->name:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lorg/simpleframework/http/Cookie;->path:Ljava/lang/String;

    .line 163
    const/4 v0, 0x1

    iput v0, p0, Lorg/simpleframework/http/Cookie;->version:I

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lorg/simpleframework/http/Cookie;->expiry:I

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "created"    # Z

    .prologue
    .line 122
    const-string v0, "/"

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/simpleframework/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lorg/simpleframework/http/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiry()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Lorg/simpleframework/http/Cookie;->expiry:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lorg/simpleframework/http/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/simpleframework/http/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lorg/simpleframework/http/Cookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/simpleframework/http/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lorg/simpleframework/http/Cookie;->version:I

    return v0
.end method

.method public isNew()Z
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/simpleframework/http/Cookie;->created:Z

    return v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 2
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 359
    iput-object p1, p0, Lorg/simpleframework/http/Cookie;->domain:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setExpiry(I)V
    .registers 2
    .param p1, "expiry"    # I

    .prologue
    .line 304
    iput p1, p0, Lorg/simpleframework/http/Cookie;->expiry:I

    .line 305
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lorg/simpleframework/http/Cookie;->path:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setSecure(Z)V
    .registers 2
    .param p1, "secure"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lorg/simpleframework/http/Cookie;->secure:Z

    .line 277
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lorg/simpleframework/http/Cookie;->value:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .param p1, "version"    # I

    .prologue
    .line 206
    iput p1, p0, Lorg/simpleframework/http/Cookie;->version:I

    .line 207
    return-void
.end method

.method public toClientString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$Version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/http/Cookie;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/http/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/http/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/http/Cookie;->path:Ljava/lang/String;

    if-nez v0, :cond_42

    const-string v0, ""

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/http/Cookie;->domain:Ljava/lang/String;

    if-nez v0, :cond_58

    const-string v0, ""

    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; $Path="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/http/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; $Domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/http/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/simpleframework/http/Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/http/Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/http/Cookie;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/http/Cookie;->path:Ljava/lang/String;

    if-nez v0, :cond_50

    const-string v0, ""

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/simpleframework/http/Cookie;->domain:Ljava/lang/String;

    if-nez v0, :cond_66

    const-string v0, ""

    :goto_33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lorg/simpleframework/http/Cookie;->expiry:I

    if-gez v0, :cond_7c

    const-string v0, ""

    :goto_3d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/simpleframework/http/Cookie;->secure:Z

    if-eqz v0, :cond_92

    const-string v0, "; secure;"

    :goto_47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; path="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/http/Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/simpleframework/http/Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; max-age="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/simpleframework/http/Cookie;->expiry:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_92
    const-string v0, ";"

    goto :goto_47
.end method
