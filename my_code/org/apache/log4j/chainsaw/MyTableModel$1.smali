.class final Lorg/apache/log4j/chainsaw/MyTableModel$1;
.super Ljava/lang/Object;
.source "MyTableModel.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 11
    .param p1, "aObj1"    # Ljava/lang/Object;
    .param p2, "aObj2"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 49
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 50
    const/4 v2, 0x0

    .line 65
    :cond_7
    :goto_7
    return v2

    .line 51
    :cond_8
    if-eqz p1, :cond_7

    .line 53
    if-nez p2, :cond_e

    move v2, v3

    .line 54
    goto :goto_7

    :cond_e
    move-object v0, p1

    .line 58
    check-cast v0, Lorg/apache/log4j/chainsaw/EventDetails;

    .local v0, "le1":Lorg/apache/log4j/chainsaw/EventDetails;
    move-object v1, p2

    .line 59
    check-cast v1, Lorg/apache/log4j/chainsaw/EventDetails;

    .line 61
    .local v1, "le2":Lorg/apache/log4j/chainsaw/EventDetails;
    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    move v2, v3

    .line 62
    goto :goto_7
.end method
