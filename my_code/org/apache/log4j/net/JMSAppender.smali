.class public Lorg/apache/log4j/net/JMSAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "JMSAppender.java"


# instance fields
.field initialContextFactoryName:Ljava/lang/String;

.field locationInfo:Z

.field password:Ljava/lang/String;

.field providerURL:Ljava/lang/String;

.field securityCredentials:Ljava/lang/String;

.field securityPrincipalName:Ljava/lang/String;

.field tcfBindingName:Ljava/lang/String;

.field topicBindingName:Ljava/lang/String;

.field topicConnection:Ljavax/jms/TopicConnection;

.field topicPublisher:Ljavax/jms/TopicPublisher;

.field topicSession:Ljavax/jms/TopicSession;

.field urlPkgPrefixes:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 121
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 178
    :try_start_1
    const-string v5, "Getting initial context."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 179
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    if-eqz v5, :cond_122

    .line 180
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 181
    .local v1, "env":Ljava/util/Properties;
    const-string v5, "java.naming.factory.initial"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    if-eqz v5, :cond_d0

    .line 183
    const-string v5, "java.naming.provider.url"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_21
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    if-eqz v5, :cond_2c

    .line 189
    const-string v5, "java.naming.factory.url.pkgs"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_2c
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    if-eqz v5, :cond_42

    .line 193
    const-string v5, "java.naming.security.principal"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    if-eqz v5, :cond_f9

    .line 195
    const-string v5, "java.naming.security.credentials"

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_42
    :goto_42
    new-instance v2, Ljavax/naming/InitialContext;

    invoke-direct {v2, v1}, Ljavax/naming/InitialContext;-><init>(Ljava/util/Hashtable;)V

    .line 206
    .end local v1    # "env":Ljava/util/Properties;
    .local v2, "jndi":Ljavax/naming/Context;
    :goto_47
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Looking up ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 207
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lorg/apache/log4j/net/JMSAppender;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jms/TopicConnectionFactory;

    .line 208
    .local v4, "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    const-string v5, "About to create TopicConnection."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 209
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    if-eqz v5, :cond_129

    .line 210
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    .line 216
    :goto_80
    const-string v5, "Creating TopicSession, non-transactional, in AUTO_ACKNOWLEDGE mode."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    .line 221
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Looking up topic name ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 222
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lorg/apache/log4j/net/JMSAppender;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jms/Topic;

    .line 224
    .local v3, "topic":Ljavax/jms/Topic;
    const-string v5, "Creating TopicPublisher."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 225
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v5, v3}, Ljavax/jms/TopicSession;->createPublisher(Ljavax/jms/Topic;)Ljavax/jms/TopicPublisher;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    .line 227
    const-string v5, "Starting TopicConnection."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 228
    iget-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v5}, Ljavax/jms/Connection;->start()V

    .line 230
    invoke-interface {v2}, Ljavax/naming/Context;->close()V

    .line 241
    .end local v2    # "jndi":Ljavax/naming/Context;
    .end local v3    # "topic":Ljavax/jms/Topic;
    .end local v4    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    :goto_cf
    return-void

    .line 185
    .restart local v1    # "env":Ljava/util/Properties;
    :cond_d0
    const-string v5, "You have set InitialContextFactoryName option but not the ProviderURL. This is likely to cause problems."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_d5
    .catch Ljavax/jms/JMSException; {:try_start_1 .. :try_end_d5} :catch_d7
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_d5} :catch_100
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_d5} :catch_131

    goto/16 :goto_21

    .line 231
    .end local v1    # "env":Ljava/util/Properties;
    :catch_d7
    move-exception v0

    .line 232
    .local v0, "e":Ljavax/jms/JMSException;
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Error while activating options for appender named ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0, v8}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_cf

    .line 197
    .end local v0    # "e":Ljavax/jms/JMSException;
    .restart local v1    # "env":Ljava/util/Properties;
    :cond_f9
    :try_start_f9
    const-string v5, "You have set SecurityPrincipalName option but not the SecurityCredentials. This is likely to cause problems."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V
    :try_end_fe
    .catch Ljavax/jms/JMSException; {:try_start_f9 .. :try_end_fe} :catch_d7
    .catch Ljavax/naming/NamingException; {:try_start_f9 .. :try_end_fe} :catch_100
    .catch Ljava/lang/RuntimeException; {:try_start_f9 .. :try_end_fe} :catch_131

    goto/16 :goto_42

    .line 234
    .end local v1    # "env":Ljava/util/Properties;
    :catch_100
    move-exception v0

    .line 235
    .local v0, "e":Ljavax/naming/NamingException;
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Error while activating options for appender named ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0, v8}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_cf

    .line 203
    .end local v0    # "e":Ljavax/naming/NamingException;
    :cond_122
    :try_start_122
    new-instance v2, Ljavax/naming/InitialContext;

    invoke-direct {v2}, Ljavax/naming/InitialContext;-><init>()V

    .restart local v2    # "jndi":Ljavax/naming/Context;
    goto/16 :goto_47

    .line 213
    .restart local v4    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    :cond_129
    invoke-interface {v4}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection()Ljavax/jms/TopicConnection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;
    :try_end_12f
    .catch Ljavax/jms/JMSException; {:try_start_122 .. :try_end_12f} :catch_d7
    .catch Ljavax/naming/NamingException; {:try_start_122 .. :try_end_12f} :catch_100
    .catch Ljava/lang/RuntimeException; {:try_start_122 .. :try_end_12f} :catch_131

    goto/16 :goto_80

    .line 237
    .end local v2    # "jndi":Ljavax/naming/Context;
    .end local v4    # "topicConnectionFactory":Ljavax/jms/TopicConnectionFactory;
    :catch_131
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Error while activating options for appender named ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0, v8}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_cf
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 8
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const/4 v5, 0x0

    .line 303
    invoke-virtual {p0}, Lorg/apache/log4j/net/JMSAppender;->checkEntryConditions()Z

    move-result v2

    if-nez v2, :cond_8

    .line 321
    :goto_7
    return-void

    .line 308
    :cond_8
    :try_start_8
    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v2}, Ljavax/jms/Session;->createObjectMessage()Ljavax/jms/ObjectMessage;

    move-result-object v1

    .line 309
    .local v1, "msg":Ljavax/jms/ObjectMessage;
    iget-boolean v2, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    if-eqz v2, :cond_15

    .line 310
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 312
    :cond_15
    invoke-interface {v1, p1}, Ljavax/jms/ObjectMessage;->setObject(Ljava/io/Serializable;)V

    .line 313
    iget-object v2, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    invoke-interface {v2, v1}, Ljavax/jms/TopicPublisher;->publish(Ljavax/jms/Message;)V
    :try_end_1d
    .catch Ljavax/jms/JMSException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_1d} :catch_40

    goto :goto_7

    .line 314
    .end local v1    # "msg":Ljavax/jms/ObjectMessage;
    :catch_1e
    move-exception v0

    .line 315
    .local v0, "e":Ljavax/jms/JMSException;
    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not publish message in JMSAppender ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v5}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_7

    .line 317
    .end local v0    # "e":Ljavax/jms/JMSException;
    :catch_40
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not publish message in JMSAppender ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v5}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_7
.end method

.method protected checkEntryConditions()Z
    .registers 5

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 255
    .local v0, "fail":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    if-nez v1, :cond_2f

    .line 256
    const-string v0, "No TopicConnection"

    .line 263
    :cond_7
    :goto_7
    if-eqz v0, :cond_3d

    .line 264
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " for JMSAppender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x0

    .line 267
    :goto_2e
    return v1

    .line 257
    :cond_2f
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    if-nez v1, :cond_36

    .line 258
    const-string v0, "No TopicSession"

    goto :goto_7

    .line 259
    :cond_36
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    if-nez v1, :cond_7

    .line 260
    const-string v0, "No TopicPublisher"

    goto :goto_7

    .line 267
    :cond_3d
    const/4 v1, 0x1

    goto :goto_2e
.end method

.method public declared-synchronized close()V
    .registers 4

    .prologue
    .line 277
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_44

    if-eqz v1, :cond_7

    .line 297
    :goto_5
    monitor-exit p0

    return-void

    .line 280
    :cond_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Closing appender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_44

    .line 284
    :try_start_28
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    if-eqz v1, :cond_31

    .line 285
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    invoke-interface {v1}, Ljavax/jms/Session;->close()V

    .line 286
    :cond_31
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    if-eqz v1, :cond_3a

    .line 287
    iget-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    invoke-interface {v1}, Ljavax/jms/Connection;->close()V
    :try_end_3a
    .catch Ljavax/jms/JMSException; {:try_start_28 .. :try_end_3a} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_3a} :catch_67
    .catchall {:try_start_28 .. :try_end_3a} :catchall_44

    .line 294
    :cond_3a
    :goto_3a
    const/4 v1, 0x0

    :try_start_3b
    iput-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    .line 295
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    .line 296
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_44

    goto :goto_5

    .line 277
    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1

    .line 288
    :catch_47
    move-exception v0

    .line 289
    .local v0, "e":Ljavax/jms/JMSException;
    :try_start_48
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while closing JMSAppender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a

    .line 290
    .end local v0    # "e":Ljavax/jms/JMSException;
    :catch_67
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while closing JMSAppender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_86
    .catchall {:try_start_48 .. :try_end_86} :catchall_44

    goto :goto_3a
.end method

.method public getInitialContextFactoryName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityCredentials()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityPrincipalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicBindingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopicConnection()Ljavax/jms/TopicConnection;
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicConnection:Ljavax/jms/TopicConnection;

    return-object v0
.end method

.method public getTopicConnectionFactoryBindingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopicPublisher()Ljavax/jms/TopicPublisher;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicPublisher:Ljavax/jms/TopicPublisher;

    return-object v0
.end method

.method protected getTopicSession()Ljavax/jms/TopicSession;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->topicSession:Ljavax/jms/TopicSession;

    return-object v0
.end method

.method getURLPkgPrefixes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    return-object v0
.end method

.method protected lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "ctx"    # Ljavax/naming/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljavax/naming/NameNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 246
    :catch_5
    move-exception v0

    .line 247
    .local v0, "e":Ljavax/naming/NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 248
    throw v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public setInitialContextFactoryName(Ljava/lang/String;)V
    .registers 2
    .param p1, "initialContextFactoryName"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->initialContextFactoryName:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setLocationInfo(Z)V
    .registers 2
    .param p1, "locationInfo"    # Z

    .prologue
    .line 410
    iput-boolean p1, p0, Lorg/apache/log4j/net/JMSAppender;->locationInfo:Z

    .line 411
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->password:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setProviderURL(Ljava/lang/String;)V
    .registers 2
    .param p1, "providerURL"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->providerURL:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setSecurityCredentials(Ljava/lang/String;)V
    .registers 2
    .param p1, "securityCredentials"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->securityCredentials:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setSecurityPrincipalName(Ljava/lang/String;)V
    .registers 2
    .param p1, "securityPrincipalName"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->securityPrincipalName:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setTopicBindingName(Ljava/lang/String;)V
    .registers 2
    .param p1, "topicBindingName"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->topicBindingName:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setTopicConnectionFactoryBindingName(Ljava/lang/String;)V
    .registers 2
    .param p1, "tcfBindingName"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->tcfBindingName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setURLPkgPrefixes(Ljava/lang/String;)V
    .registers 2
    .param p1, "urlPkgPrefixes"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->urlPkgPrefixes:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lorg/apache/log4j/net/JMSAppender;->userName:Ljava/lang/String;

    .line 391
    return-void
.end method
