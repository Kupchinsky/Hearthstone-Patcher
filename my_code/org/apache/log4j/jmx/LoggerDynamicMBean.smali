.class public Lorg/apache/log4j/jmx/LoggerDynamicMBean;
.super Lorg/apache/log4j/jmx/AbstractDynamicMBean;
.source "LoggerDynamicMBean.java"

# interfaces
.implements Ljavax/management/NotificationListener;


# static fields
.field private static cat:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$Appender:Ljava/lang/Class;

.field static class$org$apache$log4j$jmx$LoggerDynamicMBean:Ljava/lang/Class;


# instance fields
.field private dAttributes:Ljava/util/Vector;

.field private dClassName:Ljava/lang/String;

.field private dConstructors:[Ljavax/management/MBeanConstructorInfo;

.field private dDescription:Ljava/lang/String;

.field private dOperations:[Ljavax/management/MBeanOperationInfo;

.field private logger:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$jmx$LoggerDynamicMBean:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.log4j.jmx.LoggerDynamicMBean"

    invoke-static {v0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$jmx$LoggerDynamicMBean:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$jmx$LoggerDynamicMBean:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .registers 4
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;-><init>()V

    .line 49
    new-array v0, v1, [Ljavax/management/MBeanConstructorInfo;

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dConstructors:[Ljavax/management/MBeanConstructorInfo;

    .line 50
    new-array v0, v1, [Ljavax/management/MBeanOperationInfo;

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    .line 55
    const-string v0, "This MBean acts as a management facade for a org.apache.log4j.Logger instance."

    iput-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dDescription:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    .line 66
    invoke-direct {p0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->buildDynamicMBeanInfo()V

    .line 67
    return-void
.end method

.method private buildDynamicMBeanInfo()V
    .registers 15

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 80
    .local v13, "constructors":[Ljava/lang/reflect/Constructor;
    iget-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dConstructors:[Ljavax/management/MBeanConstructorInfo;

    new-instance v1, Ljavax/management/MBeanConstructorInfo;

    const-string v2, "HierarchyDynamicMBean(): Constructs a HierarchyDynamicMBean instance"

    aget-object v3, v13, v5

    invoke-direct {v1, v2, v3}, Ljavax/management/MBeanConstructorInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    aput-object v1, v0, v5

    .line 84
    iget-object v7, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    new-instance v0, Ljavax/management/MBeanAttributeInfo;

    const-string v1, "name"

    const-string v2, "java.lang.String"

    const-string v3, "The name of this Logger."

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    new-instance v6, Ljavax/management/MBeanAttributeInfo;

    const-string v7, "priority"

    const-string v8, "java.lang.String"

    const-string v9, "The priority of this logger."

    move v10, v4

    move v11, v4

    move v12, v5

    invoke-direct/range {v6 .. v12}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 102
    const/4 v0, 0x2

    new-array v9, v0, [Ljavax/management/MBeanParameterInfo;

    .line 103
    .local v9, "params":[Ljavax/management/MBeanParameterInfo;
    new-instance v0, Ljavax/management/MBeanParameterInfo;

    const-string v1, "class name"

    const-string v2, "java.lang.String"

    const-string v3, "add an appender to this logger"

    invoke-direct {v0, v1, v2, v3}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v5

    .line 105
    new-instance v0, Ljavax/management/MBeanParameterInfo;

    const-string v1, "appender name"

    const-string v2, "java.lang.String"

    const-string v3, "name of the appender"

    invoke-direct {v0, v1, v2, v3}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v4

    .line 108
    iget-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    new-instance v6, Ljavax/management/MBeanOperationInfo;

    const-string v7, "addAppender"

    const-string v8, "addAppender(): add an appender"

    const-string v10, "void"

    move v11, v4

    invoke-direct/range {v6 .. v11}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    aput-object v6, v0, v5

    .line 113
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method addAppender(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "appenderClass"    # Ljava/lang/String;
    .param p2, "appenderName"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v1, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "addAppender called with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 194
    sget-object v1, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    if-nez v1, :cond_3e

    const-string v1, "org.apache.log4j.Appender"

    invoke-static {v1}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    :goto_2e
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 198
    .local v0, "appender":Lorg/apache/log4j/Appender;
    invoke-interface {v0, p2}, Lorg/apache/log4j/Appender;->setName(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 203
    return-void

    .line 194
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    :cond_3e
    sget-object v1, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    goto :goto_2e
.end method

.method appenderMBeanRegistration()V
    .registers 4

    .prologue
    .line 249
    iget-object v2, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    .line 250
    .local v1, "enumeration":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 251
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 252
    .local v0, "appender":Lorg/apache/log4j/Appender;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->registerAppenderMBean(Lorg/apache/log4j/Appender;)V

    goto :goto_6

    .line 254
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    :cond_16
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_2a

    .line 159
    new-instance v2, Ljavax/management/RuntimeOperationsException;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Attribute name cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cannot invoke a getter of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " with null attribute name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_2a
    const-string v2, "name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 166
    iget-object v2, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v2

    .line 176
    :goto_38
    return-object v2

    .line 167
    :cond_39
    const-string v2, "priority"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 168
    iget-object v2, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    .line 169
    .local v1, "l":Lorg/apache/log4j/Level;
    if-nez v1, :cond_4b

    .line 170
    const/4 v2, 0x0

    goto :goto_38

    .line 172
    :cond_4b
    invoke-virtual {v1}, Lorg/apache/log4j/Priority;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    .line 174
    .end local v1    # "l":Lorg/apache/log4j/Level;
    :cond_50
    const-string v2, "appender="

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 176
    :try_start_58
    new-instance v2, Ljavax/management/ObjectName;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "log4j:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_58 .. :try_end_70} :catch_71
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_70} :catch_af

    goto :goto_38

    .line 177
    :catch_71
    move-exception v0

    .line 178
    .local v0, "e":Ljavax/management/MalformedObjectNameException;
    sget-object v2, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not create ObjectName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;)V

    .line 186
    .end local v0    # "e":Ljavax/management/MalformedObjectNameException;
    :cond_8a
    :goto_8a
    new-instance v2, Ljavax/management/AttributeNotFoundException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " attribute in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :catch_af
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not create ObjectName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;)V

    goto :goto_8a
.end method

.method protected getLogger()Lorg/apache/log4j/Logger;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getMBeanInfo()Ljavax/management/MBeanInfo;
    .registers 8

    .prologue
    .line 125
    iget-object v1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v3, v1, [Ljavax/management/MBeanAttributeInfo;

    .line 126
    .local v3, "attribs":[Ljavax/management/MBeanAttributeInfo;
    iget-object v1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    new-instance v0, Ljavax/management/MBeanInfo;

    iget-object v1, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dDescription:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dConstructors:[Ljavax/management/MBeanConstructorInfo;

    iget-object v5, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dOperations:[Ljavax/management/MBeanOperationInfo;

    const/4 v6, 0x0

    new-array v6, v6, [Ljavax/management/MBeanNotificationInfo;

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanAttributeInfo;[Ljavax/management/MBeanConstructorInfo;[Ljavax/management/MBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V

    .line 135
    .local v0, "mb":Ljavax/management/MBeanInfo;
    return-object v0
.end method

.method public handleNotification(Ljavax/management/Notification;Ljava/lang/Object;)V
    .registers 6
    .param p1, "notification"    # Ljavax/management/Notification;
    .param p2, "handback"    # Ljava/lang/Object;

    .prologue
    .line 71
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Received notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/management/Notification;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Ljavax/management/Notification;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->registerAppenderMBean(Lorg/apache/log4j/Appender;)V

    .line 75
    return-void
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "operationName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "signature"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v0, "addAppender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 144
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->addAppender(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "Hello world."

    .line 148
    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public postRegister(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "registrationDone"    # Ljava/lang/Boolean;

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->appenderMBeanRegistration()V

    .line 281
    return-void
.end method

.method registerAppenderMBean(Lorg/apache/log4j/Appender;)V
    .registers 15
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 257
    invoke-static {p1}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->getAppenderName(Lorg/apache/log4j/Appender;)Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "name":Ljava/lang/String;
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Adding AppenderMBean for appender named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->debug(Ljava/lang/Object;)V

    .line 259
    const/4 v10, 0x0

    .line 261
    .local v10, "objectName":Ljavax/management/ObjectName;
    :try_start_1d
    new-instance v7, Lorg/apache/log4j/jmx/AppenderDynamicMBean;

    invoke-direct {v7, p1}, Lorg/apache/log4j/jmx/AppenderDynamicMBean;-><init>(Lorg/apache/log4j/Appender;)V

    .line 262
    .local v7, "appenderMBean":Lorg/apache/log4j/jmx/AppenderDynamicMBean;
    new-instance v11, Ljavax/management/ObjectName;

    const-string v0, "log4j"

    const-string v1, "appender"

    invoke-direct {v11, v0, v1, v9}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljavax/management/JMException; {:try_start_1d .. :try_end_2b} :catch_73
    .catch Ljava/beans/IntrospectionException; {:try_start_1d .. :try_end_2b} :catch_93
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_2b} :catch_b3

    .line 263
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .local v11, "objectName":Ljavax/management/ObjectName;
    :try_start_2b
    iget-object v0, p0, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->server:Ljavax/management/MBeanServer;

    invoke-interface {v0, v11}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 264
    invoke-virtual {p0, v7, v11}, Lorg/apache/log4j/jmx/AbstractDynamicMBean;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)V

    .line 265
    iget-object v12, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dAttributes:Ljava/util/Vector;

    new-instance v0, Ljavax/management/MBeanAttributeInfo;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "appender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javax.management.ObjectName"

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " appender."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljavax/management/JMException; {:try_start_2b .. :try_end_71} :catch_d9
    .catch Ljava/beans/IntrospectionException; {:try_start_2b .. :try_end_71} :catch_d6
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_71} :catch_d3

    :cond_71
    move-object v10, v11

    .line 276
    .end local v7    # "appenderMBean":Lorg/apache/log4j/jmx/AppenderDynamicMBean;
    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    :goto_72
    return-void

    .line 269
    :catch_73
    move-exception v8

    .line 270
    .local v8, "e":Ljavax/management/JMException;
    :goto_74
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not add appenderMBean for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_72

    .line 271
    .end local v8    # "e":Ljavax/management/JMException;
    :catch_93
    move-exception v8

    .line 272
    .local v8, "e":Ljava/beans/IntrospectionException;
    :goto_94
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not add appenderMBean for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_72

    .line 273
    .end local v8    # "e":Ljava/beans/IntrospectionException;
    :catch_b3
    move-exception v8

    .line 274
    .local v8, "e":Ljava/lang/RuntimeException;
    :goto_b4
    sget-object v0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not add appenderMBean for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lorg/apache/log4j/Category;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_72

    .line 273
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .restart local v7    # "appenderMBean":Lorg/apache/log4j/jmx/AppenderDynamicMBean;
    .restart local v11    # "objectName":Ljavax/management/ObjectName;
    :catch_d3
    move-exception v8

    move-object v10, v11

    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    goto :goto_b4

    .line 271
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .restart local v11    # "objectName":Ljavax/management/ObjectName;
    :catch_d6
    move-exception v8

    move-object v10, v11

    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    goto :goto_94

    .line 269
    .end local v10    # "objectName":Ljavax/management/ObjectName;
    .restart local v11    # "objectName":Ljavax/management/ObjectName;
    :catch_d9
    move-exception v8

    move-object v10, v11

    .end local v11    # "objectName":Ljavax/management/ObjectName;
    .restart local v10    # "objectName":Ljavax/management/ObjectName;
    goto :goto_74
.end method

.method public setAttribute(Ljavax/management/Attribute;)V
    .registers 10
    .param p1, "attribute"    # Ljavax/management/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p1, :cond_2a

    .line 214
    new-instance v4, Ljavax/management/RuntimeOperationsException;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Attribute cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Cannot invoke a setter of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " with null attribute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_2a
    invoke-virtual {p1}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/management/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 222
    .local v3, "value":Ljava/lang/Object;
    if-nez v0, :cond_5c

    .line 223
    new-instance v4, Ljavax/management/RuntimeOperationsException;

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Attribute name cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Cannot invoke the setter of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->dClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " with null attribute name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavax/management/RuntimeOperationsException;-><init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_5c
    const-string v4, "priority"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 231
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_7f

    move-object v2, v3

    .line 232
    check-cast v2, Ljava/lang/String;

    .line 233
    .local v2, "s":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v4}, Lorg/apache/log4j/Category;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    .line 234
    .local v1, "p":Lorg/apache/log4j/Level;
    const-string v4, "NULL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 235
    const/4 v1, 0x0

    .line 239
    :goto_7a
    iget-object v4, p0, Lorg/apache/log4j/jmx/LoggerDynamicMBean;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v4, v1}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    .line 246
    .end local v1    # "p":Lorg/apache/log4j/Level;
    .end local v2    # "s":Ljava/lang/String;
    :cond_7f
    return-void

    .line 237
    .restart local v1    # "p":Lorg/apache/log4j/Level;
    .restart local v2    # "s":Ljava/lang/String;
    :cond_80
    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v1

    goto :goto_7a

    .line 242
    .end local v1    # "p":Lorg/apache/log4j/Level;
    .end local v2    # "s":Ljava/lang/String;
    :cond_85
    new-instance v4, Ljavax/management/AttributeNotFoundException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " not found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
