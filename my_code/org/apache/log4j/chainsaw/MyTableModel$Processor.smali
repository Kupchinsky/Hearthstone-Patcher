.class Lorg/apache/log4j/chainsaw/MyTableModel$Processor;
.super Ljava/lang/Object;
.source "MyTableModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/chainsaw/MyTableModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Processor"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/log4j/chainsaw/MyTableModel;


# direct methods
.method private constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/MyTableModel$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .param p2, "x1"    # Lorg/apache/log4j/chainsaw/MyTableModel$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    :goto_2
    const-wide/16 v6, 0x3e8

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_6d

    .line 85
    :goto_7
    iget-object v6, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v6}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$000(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 86
    :try_start_e
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$100(Lorg/apache/log4j/chainsaw/MyTableModel;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 87
    monitor-exit v6

    goto :goto_2

    .line 104
    :catchall_18
    move-exception v4

    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v4

    .line 90
    :cond_1b
    const/4 v3, 0x1

    .line 91
    .local v3, "toHead":Z
    const/4 v2, 0x0

    .line 92
    .local v2, "needUpdate":Z
    :try_start_1d
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$200(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 93
    .local v1, "it":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/chainsaw/EventDetails;

    .line 95
    .local v0, "event":Lorg/apache/log4j/chainsaw/EventDetails;
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$300(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/SortedSet;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    if-eqz v3, :cond_57

    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$300(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/SortedSet;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v7

    if-ne v0, v7, :cond_57

    move v3, v5

    .line 97
    :goto_4b
    if-nez v2, :cond_55

    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7, v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$400(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/EventDetails;)Z

    move-result v7

    if-eqz v7, :cond_59

    :cond_55
    move v2, v5

    .line 98
    :goto_56
    goto :goto_27

    :cond_57
    move v3, v4

    .line 96
    goto :goto_4b

    :cond_59
    move v2, v4

    .line 97
    goto :goto_56

    .line 99
    .end local v0    # "event":Lorg/apache/log4j/chainsaw/EventDetails;
    :cond_5b
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$200(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 101
    if-eqz v2, :cond_6b

    .line 102
    iget-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;->this$0:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-static {v7, v3}, Lorg/apache/log4j/chainsaw/MyTableModel;->access$500(Lorg/apache/log4j/chainsaw/MyTableModel;Z)V

    .line 104
    :cond_6b
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_1d .. :try_end_6c} :catchall_18

    goto :goto_2

    .line 81
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "needUpdate":Z
    .end local v3    # "toHead":Z
    :catch_6d
    move-exception v6

    goto :goto_7
.end method
