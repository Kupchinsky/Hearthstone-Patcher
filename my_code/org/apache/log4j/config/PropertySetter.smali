.class public Lorg/apache/log4j/config/PropertySetter;
.super Ljava/lang/Object;
.source "PropertySetter.java"


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$apache$log4j$Priority:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$OptionHandler:Ljava/lang/Class;


# instance fields
.field protected obj:Ljava/lang/Object;

.field protected props:[Ljava/beans/PropertyDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 142
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

.method public static setProperties(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/util/Properties;Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public activate()V
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/log4j/spi/OptionHandler;

    if-eqz v0, :cond_d

    .line 307
    iget-object v0, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/spi/OptionHandler;

    invoke-interface {v0}, Lorg/apache/log4j/spi/OptionHandler;->activateOptions()V

    .line 309
    :cond_d
    return-void
.end method

.method protected convertArg(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v2, 0x0

    .line 266
    if-nez p1, :cond_5

    move-object p1, v2

    .line 288
    .end local p1    # "val":Ljava/lang/String;
    :cond_4
    :goto_4
    return-object p1

    .line 269
    .restart local p1    # "val":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "v":Ljava/lang/String;
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_29

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/apache/log4j/config/PropertySetter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/config/PropertySetter;->class$java$lang$String:Ljava/lang/Class;

    :goto_15
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 273
    new-instance p1, Ljava/lang/Integer;

    .end local p1    # "val":Ljava/lang/String;
    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 270
    .restart local p1    # "val":Ljava/lang/String;
    :cond_29
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_15

    .line 274
    :cond_2c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 275
    new-instance p1, Ljava/lang/Long;

    .end local p1    # "val":Ljava/lang/String;
    invoke-direct {p1, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 276
    .restart local p1    # "val":Ljava/lang/String;
    :cond_3a
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 277
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 278
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    .line 279
    :cond_4d
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 280
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 282
    :cond_58
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    if-nez v1, :cond_71

    const-string v1, "org.apache.log4j.Priority"

    invoke-static {v1}, Lorg/apache/log4j/config/PropertySetter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    :goto_64
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 283
    sget-object v1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object p1

    goto :goto_4

    .line 282
    :cond_71
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$Priority:Ljava/lang/Class;

    goto :goto_64

    .line 284
    :cond_74
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    if-nez v1, :cond_98

    const-string v1, "org.apache.log4j.spi.ErrorHandler"

    invoke-static {v1}, Lorg/apache/log4j/config/PropertySetter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    :goto_80
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 285
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    if-nez v1, :cond_9b

    const-string v1, "org.apache.log4j.spi.ErrorHandler"

    invoke-static {v1}, Lorg/apache/log4j/config/PropertySetter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    :goto_92
    invoke-static {v0, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_4

    .line 284
    :cond_98
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    goto :goto_80

    .line 285
    :cond_9b
    sget-object v1, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    goto :goto_92

    :cond_9e
    move-object p1, v2

    .line 288
    goto/16 :goto_4
.end method

.method protected getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v1, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/log4j/config/PropertySetter;->introspect()V

    .line 296
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 297
    iget-object v1, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/beans/FeatureDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 298
    iget-object v1, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    aget-object v1, v1, v0

    .line 301
    :goto_1f
    return-object v1

    .line 296
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 301
    :cond_23
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method protected introspect()V
    .registers 5

    .prologue
    .line 83
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    .line 84
    .local v0, "bi":Ljava/beans/BeanInfo;
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;
    :try_end_10
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_10} :catch_11

    .line 89
    .end local v0    # "bi":Ljava/beans/BeanInfo;
    :goto_10
    return-void

    .line 85
    :catch_11
    move-exception v1

    .line 86
    .local v1, "ex":Ljava/beans/IntrospectionException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to introspect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 87
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/beans/PropertyDescriptor;

    iput-object v2, p0, Lorg/apache/log4j/config/PropertySetter;->props:[Ljava/beans/PropertyDescriptor;

    goto :goto_10
.end method

.method public setProperties(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 15
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 118
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_14f

    .line 119
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 126
    const/16 v8, 0x2e

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-gtz v8, :cond_8

    .line 132
    invoke-static {v2, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v8, "layout"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    const-string v8, "errorhandler"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    :cond_3c
    iget-object v8, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    instance-of v8, v8, Lorg/apache/log4j/Appender;

    if-nez v8, :cond_8

    .line 140
    :cond_42
    invoke-static {v2}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/log4j/config/PropertySetter;->getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v5

    .line 141
    .local v5, "prop":Ljava/beans/PropertyDescriptor;
    if-eqz v5, :cond_14a

    sget-object v8, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$spi$OptionHandler:Ljava/lang/Class;

    if-nez v8, :cond_dd

    const-string v8, "org.apache.log4j.spi.OptionHandler"

    invoke-static {v8}, Lorg/apache/log4j/config/PropertySetter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$spi$OptionHandler:Ljava/lang/Class;

    :goto_58
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_14a

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_14a

    .line 144
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p1, v8, v9, v10}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/spi/OptionHandler;

    .line 148
    .local v4, "opt":Lorg/apache/log4j/spi/OptionHandler;
    new-instance v6, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v6, v4}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 149
    .local v6, "setter":Lorg/apache/log4j/config/PropertySetter;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v8}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/util/Properties;Ljava/lang/String;)V

    .line 151
    :try_start_a3
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Ljava/lang/IllegalAccessException; {:try_start_a3 .. :try_end_b2} :catch_b4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a3 .. :try_end_b2} :catch_e1
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_b2} :catch_121

    goto/16 :goto_8

    .line 152
    :catch_b4
    move-exception v1

    .line 153
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Failed to set property ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] to value \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 141
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    .end local v4    # "opt":Lorg/apache/log4j/spi/OptionHandler;
    .end local v6    # "setter":Lorg/apache/log4j/config/PropertySetter;
    :cond_dd
    sget-object v8, Lorg/apache/log4j/config/PropertySetter;->class$org$apache$log4j$spi$OptionHandler:Ljava/lang/Class;

    goto/16 :goto_58

    .line 155
    .restart local v4    # "opt":Lorg/apache/log4j/spi/OptionHandler;
    .restart local v6    # "setter":Lorg/apache/log4j/config/PropertySetter;
    :catch_e1
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/InterruptedException;

    if-nez v8, :cond_f2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Ljava/io/InterruptedIOException;

    if-eqz v8, :cond_f9

    .line 158
    :cond_f2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 160
    :cond_f9
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Failed to set property ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] to value \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 162
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_121
    move-exception v1

    .line 163
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Failed to set property ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] to value \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 169
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v4    # "opt":Lorg/apache/log4j/spi/OptionHandler;
    .end local v6    # "setter":Lorg/apache/log4j/config/PropertySetter;
    :cond_14a
    invoke-virtual {p0, v2, v7}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 172
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "prop":Ljava/beans/PropertyDescriptor;
    .end local v7    # "value":Ljava/lang/String;
    :cond_14f
    invoke-virtual {p0}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 173
    return-void
.end method

.method public setProperty(Ljava/beans/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "prop"    # Ljava/beans/PropertyDescriptor;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/log4j/config/PropertySetterException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 223
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 224
    .local v3, "setter":Ljava/lang/reflect/Method;
    if-nez v3, :cond_27

    .line 225
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "No setter for property ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    :cond_27
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 228
    .local v2, "paramTypes":[Ljava/lang/Class;
    array-length v5, v2

    if-eq v5, v6, :cond_36

    .line 229
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    const-string v6, "#params for setter != 1"

    invoke-direct {v5, v6}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 234
    :cond_36
    const/4 v5, 0x0

    :try_start_37
    aget-object v5, v2, v5

    invoke-virtual {p0, p3, v5}, Lorg/apache/log4j/config/PropertySetter;->convertArg(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_60

    move-result-object v0

    .line 239
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_86

    .line 240
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Conversion to type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    .end local v0    # "arg":Ljava/lang/Object;
    :catch_60
    move-exception v4

    .line 236
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Conversion to type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] failed. Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 243
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_86
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Setting property ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 245
    :try_start_ac
    iget-object v5, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/IllegalAccessException; {:try_start_ac .. :try_end_b7} :catch_b8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_ac .. :try_end_b7} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_ac .. :try_end_b7} :catch_dd

    .line 257
    return-void

    .line 246
    :catch_b8
    move-exception v1

    .line 247
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    invoke-direct {v5, v1}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 248
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_bf
    move-exception v1

    .line 249
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/InterruptedException;

    if-nez v5, :cond_d0

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_d7

    .line 251
    :cond_d0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 253
    :cond_d7
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    invoke-direct {v5, v1}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 254
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_dd
    move-exception v1

    .line 255
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Lorg/apache/log4j/config/PropertySetterException;

    invoke-direct {v5, v1}, Lorg/apache/log4j/config/PropertySetterException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    if-nez p2, :cond_3

    .line 210
    :goto_2
    return-void

    .line 194
    :cond_3
    invoke-static {p1}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/log4j/config/PropertySetter;->getPropertyDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 199
    .local v1, "prop":Ljava/beans/PropertyDescriptor;
    if-nez v1, :cond_3e

    .line 200
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No such property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/config/PropertySetter;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 204
    :cond_3e
    :try_start_3e
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/beans/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Lorg/apache/log4j/config/PropertySetterException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_2

    .line 205
    :catch_42
    move-exception v0

    .line 206
    .local v0, "ex":Lorg/apache/log4j/config/PropertySetterException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to set property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] to value \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/log4j/config/PropertySetterException;->rootCause:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
