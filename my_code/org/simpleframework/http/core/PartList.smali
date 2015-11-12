.class Lorg/simpleframework/http/core/PartList;
.super Ljava/util/ArrayList;
.source "PartList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/http/Part;",
        ">;"
    }
.end annotation


# instance fields
.field private map:Lorg/simpleframework/util/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/KeyMap",
            "<",
            "Lorg/simpleframework/http/Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v0, Lorg/simpleframework/util/KeyMap;

    invoke-direct {v0}, Lorg/simpleframework/util/KeyMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/http/core/PartList;->map:Lorg/simpleframework/util/KeyMap;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lorg/simpleframework/http/Part;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/simpleframework/http/core/PartList;->add(Lorg/simpleframework/http/Part;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/simpleframework/http/Part;)Z
    .registers 4
    .param p1, "part"    # Lorg/simpleframework/http/Part;

    .prologue
    .line 63
    invoke-interface {p1}, Lorg/simpleframework/http/Part;->getName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 66
    iget-object v1, p0, Lorg/simpleframework/http/core/PartList;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v1, v0, p1}, Lorg/simpleframework/util/KeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_b
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/simpleframework/http/core/PartList;->map:Lorg/simpleframework/util/KeyMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/util/KeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/Part;

    return-object v0
.end method
