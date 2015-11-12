.class public interface abstract Lorg/simpleframework/http/session/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map;"
    }
.end annotation


# virtual methods
.method public abstract getLease()Lorg/simpleframework/util/lease/Lease;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;"
        }
    .end annotation
.end method
