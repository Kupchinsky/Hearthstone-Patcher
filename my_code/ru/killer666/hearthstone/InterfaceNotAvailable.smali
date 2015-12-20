.class Lru/killer666/hearthstone/InterfaceNotAvailable;
.super Lru/killer666/hearthstone/WaitableTask;
.source "InterfaceNotAvailable.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lru/killer666/hearthstone/WaitableTask;-><init>()V

    return-void
.end method


# virtual methods
.method doTask()Z
    .registers 8

    .prologue
    .line 9
    const-string v0, ""

    const-string v1, "\u0420\u045b\u0421\u201a\u0421\u0403\u0421\u0453\u0421\u201a\u0421\u0403\u0420\u0406\u0421\u0453\u0421\u040b\u0421\u201a \u0420\u0405\u0420\u00b5\u0420\u0455\u0420\u00b1\u0421\u2026\u0420\u0455\u0420\u0491\u0420\u0451\u0420\u0458\u0421\u2039\u0420\u00b5 \u0421\u201e\u0420\u00b0\u0420\u2116\u0420\u00bb\u0421\u2039 \u0420\u0491\u0420\u00bb\u0421\u040f \u0420\u0451\u0420\u00b7\u0420\u0458\u0420\u00b5\u0420\u0405\u0420\u00b5\u0420\u0405\u0420\u0451\u0421\u040f \u0420\u0451\u0420\u0405\u0421\u201a\u0420\u00b5\u0421\u0402\u0421\u201e\u0420\u00b5\u0420\u2116\u0421\u0403\u0420\u00b0"

    const-string v2, "\u0420\u045b\u0420\u0459"

    new-instance v3, Lru/killer666/hearthstone/InterfaceNotAvailable$1;

    invoke-direct {v3, p0}, Lru/killer666/hearthstone/InterfaceNotAvailable$1;-><init>(Lru/killer666/hearthstone/InterfaceNotAvailable;)V

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneAlert;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 15
    const/4 v0, 0x1

    return v0
.end method
