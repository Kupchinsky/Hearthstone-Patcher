.class public Lru/killer666/apache/commons/io/input/CloseShieldInputStream;
.super Lru/killer666/apache/commons/io/input/ProxyInputStream;
.source "CloseShieldInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lru/killer666/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lru/killer666/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lru/killer666/apache/commons/io/input/ClosedInputStream;-><init>()V

    iput-object v0, p0, Lru/killer666/apache/commons/io/input/CloseShieldInputStream;->in:Ljava/io/InputStream;

    .line 51
    return-void
.end method
