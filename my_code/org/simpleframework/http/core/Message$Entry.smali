.class Lorg/simpleframework/http/core/Message$Entry;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/core/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lorg/simpleframework/http/core/Message;

.field private value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/simpleframework/http/core/Message;Ljava/lang/String;)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 448
    iput-object p1, p0, Lorg/simpleframework/http/core/Message$Entry;->this$0:Lorg/simpleframework/http/core/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/simpleframework/http/core/Message$Entry;->value:Ljava/util/List;

    .line 450
    iput-object p2, p0, Lorg/simpleframework/http/core/Message$Entry;->name:Ljava/lang/String;

    .line 451
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lorg/simpleframework/http/core/Message$Entry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lorg/simpleframework/http/core/Message$Entry;->value:Ljava/util/List;

    return-object v0
.end method
