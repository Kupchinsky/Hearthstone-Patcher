.class public Lorg/apache/log4j/or/jms/MessageRenderer;
.super Ljava/lang/Object;
.source "MessageRenderer.java"

# interfaces
.implements Lorg/apache/log4j/or/ObjectRenderer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public doRender(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v3, p1, Ljavax/jms/Message;

    if-eqz v3, :cond_a2

    .line 45
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "sbuf":Ljava/lang/StringBuffer;
    move-object v1, p1

    .line 46
    check-cast v1, Ljavax/jms/Message;

    .line 48
    .local v1, "m":Ljavax/jms/Message;
    :try_start_c
    const-string v3, "DeliveryMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSDeliveryMode()I

    move-result v3

    packed-switch v3, :pswitch_data_a8

    .line 56
    const-string v3, "UNKNOWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :goto_1d
    const-string v3, ", CorrelationID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSCorrelationID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v3, ", Destination="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSDestination()Ljavax/jms/Destination;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 64
    const-string v3, ", Expiration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSExpiration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 67
    const-string v3, ", MessageID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSMessageID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v3, ", Priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSPriority()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 73
    const-string v3, ", Redelivered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSRedelivered()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 76
    const-string v3, ", ReplyTo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSReplyTo()Ljavax/jms/Destination;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 79
    const-string v3, ", Timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 82
    const-string v3, ", Type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-interface {v1}, Ljavax/jms/Message;->getJMSType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_89
    .catch Ljavax/jms/JMSException; {:try_start_c .. :try_end_89} :catch_94

    .line 95
    :goto_89
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .end local v1    # "m":Ljavax/jms/Message;
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    :goto_8d
    return-object v3

    .line 51
    .restart local v1    # "m":Ljavax/jms/Message;
    .restart local v2    # "sbuf":Ljava/lang/StringBuffer;
    :pswitch_8e
    :try_start_8e
    const-string v3, "NON_PERSISTENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_93
    .catch Ljavax/jms/JMSException; {:try_start_8e .. :try_end_93} :catch_94

    goto :goto_1d

    .line 92
    :catch_94
    move-exception v0

    .line 93
    .local v0, "e":Ljavax/jms/JMSException;
    const-string v3, "Could not parse Message."

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_89

    .line 54
    .end local v0    # "e":Ljavax/jms/JMSException;
    :pswitch_9b
    :try_start_9b
    const-string v3, "PERSISTENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a0
    .catch Ljavax/jms/JMSException; {:try_start_9b .. :try_end_a0} :catch_94

    goto/16 :goto_1d

    .line 97
    .end local v1    # "m":Ljavax/jms/Message;
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    :cond_a2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8d

    .line 49
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_9b
    .end packed-switch
.end method
