.class public Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;
.super Landroid/app/Dialog;
.source "HearthstoneKeyboardDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$id;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private m_context:Landroid/content/Context;

.field m_heightMarkerLayout:Landroid/widget/RelativeLayout;

.field m_keyboardMarker:Landroid/widget/TextView;

.field final m_specialSoftInputMode:I

.field m_textFieldLayout:Landroid/widget/RelativeLayout;

.field m_textFieldName:Ljava/lang/String;

.field final wrapContent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "HearthstoneKeyboardDialog"

    sput-object v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZZZZLjava/lang/String;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textFieldName"    # Ljava/lang/String;
    .param p3, "initialText"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "correction"    # Z
    .param p6, "multiline"    # Z
    .param p7, "secure"    # Z
    .param p8, "alert"    # Z
    .param p9, "placeholder"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;

    .line 45
    const/4 v1, -0x2

    iput v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->wrapContent:I

    .line 49
    const/16 v1, 0x15

    iput v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_specialSoftInputMode:I

    .line 59
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBarsDelayed()V

    .line 61
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldName:Ljava/lang/String;

    .line 62
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->requestWindowFeature(I)Z

    .line 67
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 68
    .local v13, "screenWidth":I
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 70
    .local v12, "screenHeight":I
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->createSoftInputView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->setContentView(Landroid/view/View;)V

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_heightMarkerLayout:Landroid/widget/RelativeLayout;

    .line 74
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v14, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v14, "textFieldLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_heightMarkerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_heightMarkerLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x55

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 78
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_keyboardMarker:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_keyboardMarker:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setWidth(I)V

    .line 80
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_keyboardMarker:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setHeight(I)V

    .line 81
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_keyboardMarker:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_heightMarkerLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_keyboardMarker:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_heightMarkerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v14}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 90
    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v11}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 91
    .local v11, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 92
    iput v13, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 96
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 97
    .local v10, "emptyDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 103
    const v1, 0x3f050001

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .local v2, "txtInput":Landroid/widget/EditText;
    move-object v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 104
    invoke-direct/range {v1 .. v9}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->setupTextInput(Landroid/widget/EditText;Ljava/lang/String;IZZZZLjava/lang/String;)V

    .line 107
    new-instance v1, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$1;

    invoke-direct {v1, p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$1;-><init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 118
    return-void
.end method

.method static synthetic access$0(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->reportStrAndHide(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method private convertInputType(IZZZ)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "correction"    # Z
    .param p3, "multiline"    # Z
    .param p4, "secure"    # Z

    .prologue
    const/4 v2, 0x0

    .line 153
    if-eqz p2, :cond_2

    const v3, 0x8000

    move v4, v3

    .line 154
    :goto_0
    if-eqz p3, :cond_3

    const/high16 v3, 0x20000

    .line 153
    :goto_1
    or-int/2addr v3, v4

    .line 155
    if-eqz p4, :cond_0

    const/16 v2, 0x80

    .line 153
    :cond_0
    or-int v0, v3, v2

    .line 157
    .local v0, "baseType":I
    if-ltz p1, :cond_1

    const/4 v2, 0x7

    if-le p1, v2, :cond_4

    .line 198
    .end local v0    # "baseType":I
    :cond_1
    :goto_2
    return v0

    :cond_2
    move v4, v2

    .line 153
    goto :goto_0

    :cond_3
    move v3, v2

    .line 154
    goto :goto_1

    .line 160
    .restart local v0    # "baseType":I
    :cond_4
    const/16 v2, 0x8

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 198
    .local v1, "flagsByType":[I
    aget v2, v1, p1

    or-int/2addr v0, v2

    goto :goto_2

    .line 160
    nop

    :array_0
    .array-data 4
        0x1
        0x4001
        0x3002
        0x11
        0x2
        0x3
        0x61
        0x21
    .end array-data
.end method

.method private getOffset()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 403
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 404
    .local v0, "coords":[I
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 406
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->needsOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    aget v1, v0, v3

    const-string v2, "navigation_bar_height_landscape"

    invoke-virtual {p0, v2}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getUiDimension(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v3

    .line 409
    :cond_0
    aget v1, v0, v3

    neg-int v1, v1

    return v1
.end method

.method private needsOffset()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 395
    sget-boolean v1, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->s_supported:Z

    if-eqz v1, :cond_0

    .line 396
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reportStrAndHide(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "canceled"    # Z

    .prologue
    .line 204
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBarsDelayed()V

    .line 206
    if-eqz p2, :cond_0

    .line 207
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldName:Ljava/lang/String;

    const-string v2, "Unity_TextInputCanceled"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    const v1, 0x3f050001

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 212
    .local v0, "txtInput":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 213
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->setSoftInputStr(Ljava/lang/String;)V

    .line 215
    return-void

    .line 209
    .end local v0    # "txtInput":Landroid/widget/EditText;
    :cond_0
    iget-object v1, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldName:Ljava/lang/String;

    const-string v2, "Unity_TextInputSubmitted"

    invoke-static {v1, v2, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupTextInput(Landroid/widget/EditText;Ljava/lang/String;IZZZZLjava/lang/String;)V
    .locals 1
    .param p1, "txtInput"    # Landroid/widget/EditText;
    .param p2, "initialText"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "correction"    # Z
    .param p5, "multiline"    # Z
    .param p6, "secure"    # Z
    .param p7, "alert"    # Z
    .param p8, "placeholder"    # Ljava/lang/String;

    .prologue
    .line 125
    const v0, 0x2000006

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 126
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p1, p8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 128
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->convertInputType(IZZZ)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 129
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 133
    if-nez p5, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 140
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 143
    return-void
.end method

.method public cancelInput()V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->cancel()V

    .line 220
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldName:Ljava/lang/String;

    const-string v1, "Unity_TextInputCanceled"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method protected createSoftInputView()Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x3f050001

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 266
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldLayout:Landroid/widget/RelativeLayout;

    .line 267
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 268
    .local v1, "textFieldLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x33

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 272
    new-instance v0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$2;

    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$2;-><init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;Landroid/content/Context;)V

    .line 294
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setId(I)V

    .line 295
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 296
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 297
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 300
    iget-object v3, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldLayout:Landroid/widget/RelativeLayout;

    .line 304
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 305
    .local v2, "txtInput":Landroid/widget/EditText;
    new-instance v4, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$3;

    invoke-direct {v4, p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog$3;-><init>(Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 317
    return-object v3
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 228
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBarsDelayed()V

    .line 230
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 231
    return-void
.end method

.method public getKeyboardTop()I
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getOffset()I

    move-result v1

    .line 416
    .local v1, "offset":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 419
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 420
    .local v2, "realSize":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 422
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 423
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 425
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    if-eq v5, v6, :cond_0

    .line 430
    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int v1, v5, v6

    .line 433
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "realSize":Landroid/graphics/Point;
    .end local v3    # "size":Landroid/graphics/Point;
    :cond_0
    iget-object v5, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_keyboardMarker:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    add-int v4, v5, v1

    .line 434
    .local v4, "top":I
    return v4
.end method

.method public getSoftInputStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    const v1, 0x3f050001

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 360
    .local v0, "txtInput":Landroid/widget/EditText;
    if-nez v0, :cond_0

    .line 361
    const/4 v1, 0x0

    .line 363
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUiDimension(Ljava/lang/String;)I
    .locals 5
    .param p1, "barName"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "result":I
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 323
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 324
    iget-object v2, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 326
    :cond_0
    return v1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getSoftInputStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->reportStrAndHide(Ljava/lang/String;Z)V

    .line 262
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getSoftInputStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->reportStrAndHide(Ljava/lang/String;Z)V

    .line 257
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldName:Ljava/lang/String;

    const-string v1, "Unity_TextInputChanged"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    invoke-static {}, Lcom/blizzard/wtcg/hearthstone/ImmersiveModeSupport;->restoreTransparentBarsDelayed()V

    .line 239
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 240
    .local v3, "viewMatrix":Landroid/graphics/Matrix;
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 241
    .local v0, "coords":[I
    invoke-virtual {p0}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 242
    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 243
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 244
    .local v2, "unityEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 245
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 246
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 249
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 250
    .local v1, "result":Z
    return v1
.end method

.method public setSoftInputStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 368
    const v1, 0x3f050001

    invoke-virtual {p0, v1}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 369
    .local v0, "txtInput":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 374
    :cond_0
    return-void
.end method

.method public setTextFieldBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, -0x2

    .line 331
    const/16 v0, 0x28

    .line 335
    .local v0, "MIN_HEIGHT":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/16 v5, 0x28

    if-ge v4, v5, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    rsub-int/lit8 v1, v4, 0x28

    .line 338
    .local v1, "heightDiff":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 339
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x28

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 342
    .end local v1    # "heightDiff":I
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 344
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 346
    iget-object v4, p0, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->m_textFieldLayout:Landroid/widget/RelativeLayout;

    const v5, 0x3f050001

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 347
    .local v3, "txtInput":Landroid/widget/EditText;
    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 348
    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 350
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setWidth(I)V

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHeight(I)V

    .line 354
    return-void
.end method

.method public setTextFieldColor(FFFF)V
    .locals 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 378
    const v2, 0x3f050001

    invoke-virtual {p0, v2}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 379
    .local v1, "txtInput":Landroid/widget/EditText;
    mul-float v2, v5, p4

    float-to-int v2, v2

    mul-float v3, v5, p1

    float-to-int v3, v3

    mul-float v4, v5, p2

    float-to-int v4, v4

    mul-float/2addr v5, p3

    float-to-int v5, v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 380
    .local v0, "c":I
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 381
    return-void
.end method

.method public setTextFieldMaxCharacters(I)V
    .locals 4
    .param p1, "maxCharacters"    # I

    .prologue
    .line 385
    const v2, 0x3f050001

    invoke-virtual {p0, v2}, Lcom/blizzard/wtcg/hearthstone/HearthstoneKeyboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 386
    .local v1, "txtInput":Landroid/widget/EditText;
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    .line 387
    .local v0, "filters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 388
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 389
    return-void
.end method
