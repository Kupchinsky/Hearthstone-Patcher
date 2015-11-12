.class Lorg/apache/log4j/CategoryKey;
.super Ljava/lang/Object;
.source "CategoryKey.java"


# static fields
.field static class$org$apache$log4j$CategoryKey:Ljava/lang/Class;


# instance fields
.field hashCache:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/log4j/CategoryKey;->name:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/CategoryKey;->hashCache:I

    .line 33
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
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
.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "rArg"    # Ljava/lang/Object;

    .prologue
    .line 44
    if-ne p0, p1, :cond_4

    .line 45
    const/4 v0, 0x1

    .line 50
    .end local p1    # "rArg":Ljava/lang/Object;
    :goto_3
    return v0

    .line 47
    .restart local p1    # "rArg":Ljava/lang/Object;
    :cond_4
    if-eqz p1, :cond_26

    sget-object v0, Lorg/apache/log4j/CategoryKey;->class$org$apache$log4j$CategoryKey:Ljava/lang/Class;

    if-nez v0, :cond_23

    const-string v0, "org.apache.log4j.CategoryKey"

    invoke-static {v0}, Lorg/apache/log4j/CategoryKey;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/CategoryKey;->class$org$apache$log4j$CategoryKey:Ljava/lang/Class;

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_26

    .line 48
    iget-object v0, p0, Lorg/apache/log4j/CategoryKey;->name:Ljava/lang/String;

    check-cast p1, Lorg/apache/log4j/CategoryKey;

    .end local p1    # "rArg":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/log4j/CategoryKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 47
    .restart local p1    # "rArg":Ljava/lang/Object;
    :cond_23
    sget-object v0, Lorg/apache/log4j/CategoryKey;->class$org$apache$log4j$CategoryKey:Ljava/lang/Class;

    goto :goto_12

    .line 50
    :cond_26
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lorg/apache/log4j/CategoryKey;->hashCache:I

    return v0
.end method
