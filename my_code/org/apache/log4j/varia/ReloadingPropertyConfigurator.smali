.class public Lorg/apache/log4j/varia/ReloadingPropertyConfigurator;
.super Ljava/lang/Object;
.source "ReloadingPropertyConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# instance fields
.field delegate:Lorg/apache/log4j/PropertyConfigurator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/varia/ReloadingPropertyConfigurator;->delegate:Lorg/apache/log4j/PropertyConfigurator;

    .line 32
    return-void
.end method


# virtual methods
.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 36
    return-void
.end method
