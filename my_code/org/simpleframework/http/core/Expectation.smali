.class Lorg/simpleframework/http/core/Expectation;
.super Ljava/lang/Object;
.source "Expectation.java"


# static fields
.field private static final MESSAGE:[B

.field private static final STATUS:[B


# instance fields
.field private final sender:Lorg/simpleframework/http/core/Sender;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lorg/simpleframework/http/core/Expectation;->STATUS:[B

    .line 42
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lorg/simpleframework/http/core/Expectation;->MESSAGE:[B

    return-void

    .line 37
    nop

    :array_14
    .array-data 1
        0x48t
        0x54t
        0x54t
        0x50t
        0x2ft
        0x31t
        0x2et
        0x31t
        0x20t
        0x31t
        0x30t
        0x30t
        0x20t
    .end array-data

    .line 42
    nop

    :array_20
    .array-data 1
        0x43t
        0x6ft
        0x6et
        0x74t
        0x69t
        0x6et
        0x75t
        0x65t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/simpleframework/http/core/Channel;)V
    .registers 3
    .param p1, "channel"    # Lorg/simpleframework/http/core/Channel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-interface {p1}, Lorg/simpleframework/http/core/Channel;->getSender()Lorg/simpleframework/http/core/Sender;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/http/core/Expectation;->sender:Lorg/simpleframework/http/core/Sender;

    .line 59
    return-void
.end method


# virtual methods
.method public execute(Lorg/simpleframework/http/core/Header;)V
    .registers 4
    .param p1, "header"    # Lorg/simpleframework/http/core/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p1}, Lorg/simpleframework/http/core/Header;->isExpectContinue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 70
    iget-object v0, p0, Lorg/simpleframework/http/core/Expectation;->sender:Lorg/simpleframework/http/core/Sender;

    sget-object v1, Lorg/simpleframework/http/core/Expectation;->STATUS:[B

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Sender;->send([B)V

    .line 71
    iget-object v0, p0, Lorg/simpleframework/http/core/Expectation;->sender:Lorg/simpleframework/http/core/Sender;

    sget-object v1, Lorg/simpleframework/http/core/Expectation;->MESSAGE:[B

    invoke-interface {v0, v1}, Lorg/simpleframework/http/core/Sender;->send([B)V

    .line 72
    iget-object v0, p0, Lorg/simpleframework/http/core/Expectation;->sender:Lorg/simpleframework/http/core/Sender;

    invoke-interface {v0}, Lorg/simpleframework/http/core/Sender;->flush()V

    .line 74
    :cond_19
    return-void
.end method
