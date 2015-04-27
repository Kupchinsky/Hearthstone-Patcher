.class public interface abstract Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin$IapInterface;
.super Ljava/lang/Object;
.source "IapHelperPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blizzard/wtcg/hearthstone/IapHelperPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IapInterface"
.end annotation


# virtual methods
.method public abstract getGameObject()Ljava/lang/String;
.end method

.method public abstract getProductIds()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReceipt(Ljava/lang/String;)Ljava/lang/String;
.end method
