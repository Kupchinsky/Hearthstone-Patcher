.class Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$2;
.super Ljava/lang/Object;
.source "MinSpecCheck.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->showMinSpecWarning(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

.field private final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$2;->this$0:Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;

    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$2;->val$prefs:Landroid/content/SharedPreferences;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 122
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck$2;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/blizzard/wtcg/hearthstone/MinSpecCheck;->s_dontShowMeAgainBool:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method
