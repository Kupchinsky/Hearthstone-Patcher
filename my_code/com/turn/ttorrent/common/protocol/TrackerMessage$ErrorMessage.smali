.class public interface abstract Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage;
.super Ljava/lang/Object;
.source "TrackerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/turn/ttorrent/common/protocol/TrackerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/turn/ttorrent/common/protocol/TrackerMessage$ErrorMessage$FailureReason;
    }
.end annotation


# virtual methods
.method public abstract getReason()Ljava/lang/String;
.end method
