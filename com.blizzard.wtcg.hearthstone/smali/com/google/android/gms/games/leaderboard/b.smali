.class public final Lcom/google/android/gms/games/leaderboard/b;
.super Ljava/lang/Object;


# instance fields
.field private final nw:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/b;->nw:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public cc()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/b;->nw:Landroid/os/Bundle;

    return-object v0
.end method
