.class Lorg/simpleframework/http/session/LeaseSession;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "LeaseSession.java"

# interfaces
.implements Lorg/simpleframework/http/session/Session;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lorg/simpleframework/http/session/Session",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final lease:Lorg/simpleframework/util/lease/Lease;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/lease/Lease;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/simpleframework/http/session/LeaseSession;, "Lorg/simpleframework/http/session/LeaseSession<TT;>;"
    .local p1, "lease":Lorg/simpleframework/util/lease/Lease;, "Lorg/simpleframework/util/lease/Lease<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/simpleframework/http/session/LeaseSession;->lease:Lorg/simpleframework/util/lease/Lease;

    .line 49
    return-void
.end method


# virtual methods
.method public getLease()Lorg/simpleframework/util/lease/Lease;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/util/lease/Lease",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/simpleframework/http/session/LeaseSession;, "Lorg/simpleframework/http/session/LeaseSession<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/http/session/LeaseSession;->lease:Lorg/simpleframework/util/lease/Lease;

    return-object v0
.end method
