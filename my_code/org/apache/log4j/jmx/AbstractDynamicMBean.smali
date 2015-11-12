.class public abstract Lorg/apache/log4j/jmx/AbstractDynamicMBean;
.super Ljava/lang/Object;
.source "AbstractDynamicMBean.java"

# interfaces
.implements Ljavax/management/DynamicMBean;
.implements Ljavax/management/MBeanRegistration;


# instance fields
.field dClassName:Ljava/lang/String;

.field private final mbeanList:Ljava/util/Vector;

.field server:Ljavax/management/MBeanServer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->mbeanList:Ljava/util/Vector;

    return-void
.end method

.method protected static getAppenderName(Lorg/apache/log4j/Appender;)Ljava/lang/String;
    .registers 3
    .param p0, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 54
    invoke-interface {p0}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 57
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_14
    return-object v0
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation
.end method

.method public getAttributes([Ljava/lang/String;)Ljavax/management/AttributeList;
    .registers 10
    .param p1, "attributeNames"    # [Ljava/lang/String;

    .prologue
    .line 70
    if-nez p1, :cond_24

    .line 71
    new-instance v4, Ljavax/management/RuntimeOperationsException;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "attributeNames[] cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Cannot invoke a getter of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_24
    new-instance v2, Ljavax/management/AttributeList;

    invoke-direct {v2}, Ljavax/management/AttributeList;-><init>()V

    .line 79
    .local v2, "resultList":Ljavax/management/AttributeList;
    array-length v4, p1

    if-nez v4, :cond_2d

    .line 93
    :cond_2c
    return-object v2

    .line 83
    :cond_2d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    array-length v4, p1

    if-ge v1, v4, :cond_2c

    .line 85
    :try_start_31
    aget-object v4, p1, v1

    invoke-interface {p0, v4}, Ljavax/management/DynamicMBean;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 86
    .local v3, "value":Ljava/lang/Object;
    new-instance v4, Ljavax/management/Attribute;

    aget-object v5, p1, v1

    invoke-direct {v4, v5, v3}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_41
    .catch Ljavax/management/JMException; {:try_start_31 .. :try_end_41} :catch_44
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_41} :catch_49

    .line 83
    .end local v3    # "value":Ljava/lang/Object;
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 87
    :catch_44
    move-exception v0

    .line 88
    .local v0, "e":Ljavax/management/JMException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_41

    .line 89
    .end local v0    # "e":Ljavax/management/JMException;
    :catch_49
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_41
.end method

.method protected abstract getLogger()Lorg/apache/log4j/Logger;
.end method

.method public abstract getMBeanInfo()Ljavax/management/MBeanInfo;
.end method

.method public abstract invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation
.end method

.method public postDeregister()V
    .registers 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "postDeregister is called."

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public postRegister(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "registrationDone"    # Ljava/lang/Boolean;

    .prologue
    .line 142
    return-void
.end method

.method public preDeregister()V
    .registers 7

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v3

    const-string v4, "preDeregister called."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 173
    iget-object v3, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->mbeanList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 174
    .local v1, "iterator":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 175
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/management/ObjectName;

    .line 177
    .local v2, "name":Ljavax/management/ObjectName;
    :try_start_1b
    iget-object v3, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    invoke-interface {v3, v2}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_20
    .catch Ljavax/management/InstanceNotFoundException; {:try_start_1b .. :try_end_20} :catch_21
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_1b .. :try_end_20} :catch_41

    goto :goto_f

    .line 178
    :catch_21
    move-exception v0

    .line 179
    .local v0, "e":Ljavax/management/InstanceNotFoundException;
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Missing MBean "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/management/ObjectName;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;)V

    goto :goto_f

    .line 180
    .end local v0    # "e":Ljavax/management/InstanceNotFoundException;
    :catch_41
    move-exception v0

    .line 181
    .local v0, "e":Ljavax/management/MBeanRegistrationException;
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Failed unregistering "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/management/ObjectName;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Category;->warn(Ljava/lang/Object;)V

    goto :goto_f

    .line 184
    .end local v0    # "e":Ljavax/management/MBeanRegistrationException;
    .end local v2    # "name":Ljavax/management/ObjectName;
    :cond_61
    return-void
.end method

.method public preRegister(Ljavax/management/MBeanServer;Ljavax/management/ObjectName;)Ljavax/management/ObjectName;
    .registers 6
    .param p1, "server"    # Ljavax/management/MBeanServer;
    .param p2, "name"    # Ljavax/management/ObjectName;

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "preRegister called. Server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 149
    iput-object p1, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    .line 150
    return-object p2
.end method

.method protected registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V
    .registers 4
    .param p1, "mbean"    # Ljava/lang/Object;
    .param p2, "objectName"    # Ljavax/management/ObjectName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/MBeanRegistrationException;,
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    invoke-interface {v0, p1, p2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 161
    iget-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->mbeanList:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public abstract setAttribute(Ljavax/management/Attribute;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation
.end method

.method public setAttributes(Ljavax/management/AttributeList;)Ljavax/management/AttributeList;
    .registers 12
    .param p1, "attributes"    # Ljavax/management/AttributeList;

    .prologue
    .line 103
    if-nez p1, :cond_24

    .line 104
    new-instance v6, Ljavax/management/RuntimeOperationsException;

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "AttributeList attributes cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Cannot invoke a setter of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v6

    .line 108
    :cond_24
    new-instance v4, Ljavax/management/AttributeList;

    invoke-direct {v4}, Ljavax/management/AttributeList;-><init>()V

    .line 111
    .local v4, "resultList":Ljavax/management/AttributeList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 128
    :cond_2f
    return-object v4

    .line 115
    :cond_30
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/management/Attribute;

    .line 118
    .local v0, "attr":Ljavax/management/Attribute;
    :try_start_40
    invoke-interface {p0, v0}, Ljavax/management/DynamicMBean;->setAttribute(Ljavax/management/Attribute;)V

    .line 119
    invoke-virtual {v0}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljavax/management/DynamicMBean;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 121
    .local v5, "value":Ljava/lang/Object;
    new-instance v6, Ljavax/management/Attribute;

    invoke-direct {v6, v3, v5}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_53
    .catch Ljavax/management/JMException; {:try_start_40 .. :try_end_53} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_53} :catch_59

    goto :goto_34

    .line 122
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :catch_54
    move-exception v1

    .line 123
    .local v1, "e":Ljavax/management/JMException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_34

    .line 124
    .end local v1    # "e":Ljavax/management/JMException;
    :catch_59
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_34
.end method
