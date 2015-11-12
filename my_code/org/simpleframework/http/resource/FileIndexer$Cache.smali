.class Lorg/simpleframework/http/resource/FileIndexer$Cache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "FileIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/resource/FileIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/http/resource/Index;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/http/resource/FileIndexer;


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/resource/FileIndexer;)V
    .registers 2

    .prologue
    .line 304
    iput-object p1, p0, Lorg/simpleframework/http/resource/FileIndexer$Cache;->this$0:Lorg/simpleframework/http/resource/FileIndexer;

    .line 305
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 306
    return-void
.end method
