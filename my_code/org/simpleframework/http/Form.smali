.class public interface abstract Lorg/simpleframework/http/Form;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Lorg/simpleframework/http/Query;


# virtual methods
.method public abstract getPart(Ljava/lang/String;)Lorg/simpleframework/http/Part;
.end method

.method public abstract getParts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/http/Part;",
            ">;"
        }
    .end annotation
.end method
