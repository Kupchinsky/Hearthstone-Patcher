.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$16;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .registers 2

    .prologue
    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$16;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 965
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$16;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->requestOpen()V

    .line 966
    return-void
.end method
