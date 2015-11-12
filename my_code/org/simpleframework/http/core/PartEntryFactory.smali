.class Lorg/simpleframework/http/core/PartEntryFactory;
.super Ljava/lang/Object;
.source "PartEntryFactory.java"


# instance fields
.field private allocator:Lorg/simpleframework/util/buffer/Allocator;

.field private list:Lorg/simpleframework/http/core/PartList;

.field private terminal:[B


# direct methods
.method public constructor <init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[B)V
    .registers 4
    .param p1, "allocator"    # Lorg/simpleframework/util/buffer/Allocator;
    .param p2, "list"    # Lorg/simpleframework/http/core/PartList;
    .param p3, "terminal"    # [B

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/simpleframework/http/core/PartEntryFactory;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    .line 61
    iput-object p3, p0, Lorg/simpleframework/http/core/PartEntryFactory;->terminal:[B

    .line 62
    iput-object p2, p0, Lorg/simpleframework/http/core/PartEntryFactory;->list:Lorg/simpleframework/http/core/PartList;

    .line 63
    return-void
.end method


# virtual methods
.method public getInstance()Lorg/simpleframework/http/core/PartEntryConsumer;
    .registers 5

    .prologue
    .line 75
    new-instance v0, Lorg/simpleframework/http/core/PartEntryConsumer;

    iget-object v1, p0, Lorg/simpleframework/http/core/PartEntryFactory;->allocator:Lorg/simpleframework/util/buffer/Allocator;

    iget-object v2, p0, Lorg/simpleframework/http/core/PartEntryFactory;->list:Lorg/simpleframework/http/core/PartList;

    iget-object v3, p0, Lorg/simpleframework/http/core/PartEntryFactory;->terminal:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/http/core/PartEntryConsumer;-><init>(Lorg/simpleframework/util/buffer/Allocator;Lorg/simpleframework/http/core/PartList;[B)V

    return-object v0
.end method
