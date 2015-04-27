.class Lru/killer666/hearthstone/UpdateChecker$1$1$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/killer666/hearthstone/UpdateChecker$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/killer666/hearthstone/UpdateChecker$1$1;


# direct methods
.method constructor <init>(Lru/killer666/hearthstone/UpdateChecker$1$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lru/killer666/hearthstone/UpdateChecker$1$1$1;->this$2:Lru/killer666/hearthstone/UpdateChecker$1$1;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 179
    return-void
.end method
