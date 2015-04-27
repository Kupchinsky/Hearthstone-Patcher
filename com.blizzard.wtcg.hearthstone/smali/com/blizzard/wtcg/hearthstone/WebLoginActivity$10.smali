.class Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->Init(Ljava/lang/String;FFFFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$gameObject:Ljava/lang/String;

.field private final synthetic val$height:F

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$width:F

.field private final synthetic val$x:F

.field private final synthetic val$y:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$gameObject:Ljava/lang/String;

    iput p3, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$x:F

    iput p4, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$y:F

    iput p5, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$width:F

    iput p6, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$height:F

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 652
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 653
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$gameObject:Ljava/lang/String;

    iget v4, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$x:F

    iget v5, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$y:F

    iget v6, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$width:F

    iget v7, p0, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity$10;->val$height:F

    .line 652
    invoke-direct/range {v0 .. v7}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FFFF)V

    invoke-static {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$12(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)V

    .line 654
    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->show()V

    .line 655
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->DisableFullscreen()V

    .line 656
    const-string v0, "WebLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initializing web pane with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v2

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_x:F
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$13(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 657
    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v2

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_y:F
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$14(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v2

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_width:F
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$15(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 658
    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->s_instance:Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$11()Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;

    move-result-object v2

    # getter for: Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->m_height:F
    invoke-static {v2}, Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;->access$16(Lcom/blizzard/wtcg/hearthstone/WebLoginActivity;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method
