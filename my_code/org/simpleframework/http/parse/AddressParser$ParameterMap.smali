.class Lorg/simpleframework/http/parse/AddressParser$ParameterMap;
.super Lorg/simpleframework/util/KeyMap;
.source "AddressParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/parse/AddressParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParameterMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/util/KeyMap",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/http/parse/AddressParser;


# direct methods
.method private constructor <init>(Lorg/simpleframework/http/parse/AddressParser;)V
    .registers 2

    .prologue
    .line 1197
    iput-object p1, p0, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->this$0:Lorg/simpleframework/http/parse/AddressParser;

    invoke-direct {p0}, Lorg/simpleframework/util/KeyMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/http/parse/AddressParser;Lorg/simpleframework/http/parse/AddressParser$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/simpleframework/http/parse/AddressParser;
    .param p2, "x1"    # Lorg/simpleframework/http/parse/AddressParser$1;

    .prologue
    .line 1197
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;-><init>(Lorg/simpleframework/http/parse/AddressParser;)V

    return-void
.end method

.method private encode()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1211
    .local v2, "text":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->this$0:Lorg/simpleframework/http/parse/AddressParser;

    # getter for: Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;
    invoke-static {v4}, Lorg/simpleframework/http/parse/AddressParser;->access$200(Lorg/simpleframework/http/parse/AddressParser;)Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    move-result-object v4

    invoke-virtual {v4}, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1212
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->this$0:Lorg/simpleframework/http/parse/AddressParser;

    # getter for: Lorg/simpleframework/http/parse/AddressParser;->param:Lorg/simpleframework/http/parse/AddressParser$ParameterMap;
    invoke-static {v4}, Lorg/simpleframework/http/parse/AddressParser;->access$200(Lorg/simpleframework/http/parse/AddressParser;)Lorg/simpleframework/http/parse/AddressParser$ParameterMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1214
    .local v3, "value":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    if-eqz v3, :cond_f

    .line 1218
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1222
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1235
    invoke-direct {p0}, Lorg/simpleframework/http/parse/AddressParser$ParameterMap;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
