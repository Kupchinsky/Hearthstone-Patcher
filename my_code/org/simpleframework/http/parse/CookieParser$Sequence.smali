.class Lorg/simpleframework/http/parse/CookieParser$Sequence;
.super Ljava/lang/Object;
.source "CookieParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/http/parse/CookieParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/simpleframework/http/Cookie;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/http/parse/CookieParser;


# direct methods
.method private constructor <init>(Lorg/simpleframework/http/parse/CookieParser;)V
    .registers 2

    .prologue
    .line 497
    iput-object p1, p0, Lorg/simpleframework/http/parse/CookieParser$Sequence;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/http/parse/CookieParser;Lorg/simpleframework/http/parse/CookieParser$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/simpleframework/http/parse/CookieParser;
    .param p2, "x1"    # Lorg/simpleframework/http/parse/CookieParser$1;

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lorg/simpleframework/http/parse/CookieParser$Sequence;-><init>(Lorg/simpleframework/http/parse/CookieParser;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 535
    iget-object v2, p0, Lorg/simpleframework/http/parse/CookieParser$Sequence;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    # getter for: Lorg/simpleframework/http/parse/CookieParser;->finished:Z
    invoke-static {v2}, Lorg/simpleframework/http/parse/CookieParser;->access$400(Lorg/simpleframework/http/parse/CookieParser;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 547
    :goto_a
    return v0

    .line 538
    :cond_b
    iget-object v2, p0, Lorg/simpleframework/http/parse/CookieParser$Sequence;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    # getter for: Lorg/simpleframework/http/parse/CookieParser;->parsed:Z
    invoke-static {v2}, Lorg/simpleframework/http/parse/CookieParser;->access$200(Lorg/simpleframework/http/parse/CookieParser;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    .line 539
    goto :goto_a

    .line 541
    :cond_15
    iget-object v2, p0, Lorg/simpleframework/http/parse/CookieParser$Sequence;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    invoke-virtual {v2}, Lorg/simpleframework/http/parse/CookieParser;->parse()V

    .line 543
    iget-object v2, p0, Lorg/simpleframework/http/parse/CookieParser$Sequence;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    # getter for: Lorg/simpleframework/http/parse/CookieParser;->name:Lorg/simpleframework/http/parse/CookieParser$Token;
    invoke-static {v2}, Lorg/simpleframework/http/parse/CookieParser;->access$500(Lorg/simpleframework/http/parse/CookieParser;)Lorg/simpleframework/http/parse/CookieParser$Token;

    move-result-object v2

    iget v2, v2, Lorg/simpleframework/http/parse/CookieParser$Token;->len:I

    if-gtz v2, :cond_2a

    .line 544
    iget-object v2, p0, Lorg/simpleframework/http/parse/CookieParser$Sequence;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    # setter for: Lorg/simpleframework/http/parse/CookieParser;->finished:Z
    invoke-static {v2, v1}, Lorg/simpleframework/http/parse/CookieParser;->access$402(Lorg/simpleframework/http/parse/CookieParser;Z)Z

    goto :goto_a

    :cond_2a
    move v0, v1

    .line 547
    goto :goto_a
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 497
    invoke-virtual {p0}, Lorg/simpleframework/http/parse/CookieParser$Sequence;->next()Lorg/simpleframework/http/Cookie;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/simpleframework/http/Cookie;
    .registers 3

    .prologue
    .line 514
    invoke-virtual {p0}, Lorg/simpleframework/http/parse/CookieParser$Sequence;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 515
    const/4 v0, 0x0

    .line 518
    :goto_7
    return-object v0

    .line 517
    :cond_8
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser$Sequence;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    const/4 v1, 0x0

    # setter for: Lorg/simpleframework/http/parse/CookieParser;->parsed:Z
    invoke-static {v0, v1}, Lorg/simpleframework/http/parse/CookieParser;->access$202(Lorg/simpleframework/http/parse/CookieParser;Z)Z

    .line 518
    iget-object v0, p0, Lorg/simpleframework/http/parse/CookieParser$Sequence;->this$0:Lorg/simpleframework/http/parse/CookieParser;

    # invokes: Lorg/simpleframework/http/parse/CookieParser;->getCookie()Lorg/simpleframework/http/Cookie;
    invoke-static {v0}, Lorg/simpleframework/http/parse/CookieParser;->access$300(Lorg/simpleframework/http/parse/CookieParser;)Lorg/simpleframework/http/Cookie;

    move-result-object v0

    goto :goto_7
.end method

.method public remove()V
    .registers 1

    .prologue
    .line 558
    return-void
.end method
