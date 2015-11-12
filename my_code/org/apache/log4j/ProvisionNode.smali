.class Lorg/apache/log4j/ProvisionNode;
.super Ljava/util/Vector;
.source "ProvisionNode.java"


# static fields
.field private static final serialVersionUID:J = -0x3e290934b11be845L


# direct methods
.method constructor <init>(Lorg/apache/log4j/Logger;)V
    .registers 2
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
