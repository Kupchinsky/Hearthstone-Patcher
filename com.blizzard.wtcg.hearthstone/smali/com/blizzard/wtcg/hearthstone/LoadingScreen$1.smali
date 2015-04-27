.class Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;
.super Ljava/lang/Object;
.source "LoadingScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;


# direct methods
.method constructor <init>(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    .prologue
    .line 234
    const-string v29, "LoadingScreen"

    const-string v30, "creating progress bar"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    new-instance v30, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static/range {v29 .. v30}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$0(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Landroid/widget/RelativeLayout;)V

    .line 237
    new-instance v23, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v23, "progressLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v30, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v30 .. v30}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$1(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/RelativeLayout;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v29 .. v29}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$1(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/RelativeLayout;

    move-result-object v29

    const/16 v30, 0x51

    invoke-virtual/range {v29 .. v30}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 241
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 242
    .local v6, "background":Landroid/widget/ImageView;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v8, "backgroundParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v29

    const-string v30, "assets/bin/Data/splash.png"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 244
    .local v9, "backgroundStream":Ljava/io/InputStream;
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 245
    .local v7, "backgroundBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    sget-object v29, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 247
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v29 .. v29}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$1(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/RelativeLayout;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 251
    .local v11, "deviceHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    move-object/from16 v0, v29

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 253
    .local v12, "deviceWidth":I
    int-to-double v0, v11

    move-wide/from16 v30, v0

    const-wide v32, 0x3f847ae147ae147bL    # 0.01

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v20, v0

    .line 254
    .local v20, "progressBottom":I
    const-wide v30, 0x4065400000000000L    # 170.0

    const-wide v32, 0x405b800000000000L    # 110.0

    int-to-double v0, v11

    move-wide/from16 v34, v0

    const-wide v36, 0x3fc3333333333333L    # 0.15

    mul-double v34, v34, v36

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->max(DD)D

    move-result-wide v32

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v22, v0

    .line 255
    .local v22, "progressHeight":I
    const-wide v30, 0x4094500000000000L    # 1300.0

    int-to-double v0, v12

    move-wide/from16 v32, v0

    const-wide v34, 0x3fe4cccccccccccdL    # 0.65

    mul-double v32, v32, v34

    invoke-static/range {v30 .. v33}, Ljava/lang/Math;->min(DD)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v25, v0

    .line 256
    .local v25, "progressWidth":I
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3fd3333333333333L    # 0.3

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v27, v0

    .line 258
    .local v27, "textHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    new-instance v30, Landroid/widget/ProgressBar;

    sget-object v31, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/16 v32, 0x0

    const v33, 0x1010078

    invoke-direct/range {v30 .. v33}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static/range {v29 .. v30}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$2(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;Landroid/widget/ProgressBar;)V

    .line 259
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v29, -0x1

    const/16 v30, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 260
    .local v18, "progressBarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0x64

    const/16 v30, 0x0

    const/16 v31, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 261
    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 262
    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v29 .. v29}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    const/16 v29, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    const/16 v29, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->_this:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 269
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v29, v0

    const/16 v30, 0x1e0

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_0

    .line 270
    const-string v13, "assets/bin/Data/drawable-hdpi"

    .line 278
    .local v13, "drawableFolder":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, "/progressbar.9.png"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 279
    .local v24, "progressStream":Ljava/io/InputStream;
    invoke-static/range {v24 .. v24}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 280
    .local v19, "progressBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v10

    .line 281
    .local v10, "chunk":[B
    invoke-static {v10}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v26

    .line 282
    .local v26, "result":Z
    new-instance v21, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v10, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 283
    .local v21, "progressDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v29 .. v29}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v29

    new-instance v30, Landroid/graphics/drawable/ClipDrawable;

    const/16 v31, 0x3

    const/16 v32, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, "/progressbackground.9.png"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 286
    .local v17, "progressBackgroundStream":Ljava/io/InputStream;
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 287
    .local v15, "progressBackgroundBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v10

    .line 288
    invoke-static {v10}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v26

    .line 289
    new-instance v16, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    const/16 v30, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v15, v10, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 290
    .local v16, "progressBackgroundDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v29 .. v29}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v29 .. v29}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$1(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/RelativeLayout;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v30, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v30 .. v30}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    new-instance v30, Landroid/widget/TextView;

    sget-object v31, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct/range {v30 .. v31}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    .line 296
    new-instance v28, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v29, -0x2

    const/16 v30, -0x2

    invoke-direct/range {v28 .. v30}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 297
    .local v28, "textViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v29, 0xe

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 298
    const/16 v29, 0xc

    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 299
    div-int/lit8 v29, v22, 0x2

    add-int v29, v29, v20

    div-int/lit8 v30, v27, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/16 v30, 0xc8

    const/16 v31, 0xff

    const/16 v32, 0xff

    const/16 v33, 0xff

    invoke-static/range {v30 .. v33}, Landroid/graphics/Color;->argb(IIII)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    move-object/from16 v29, v0

    sget-object v30, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v31, 0x1

    invoke-virtual/range {v29 .. v31}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/high16 v30, 0x40a00000    # 5.0f

    const/high16 v31, 0x40400000    # 3.0f

    const/high16 v32, 0x40400000    # 3.0f

    const/high16 v33, -0x1000000

    invoke-virtual/range {v29 .. v33}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v29 .. v29}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$1(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/RelativeLayout;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v29 .. v29}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v29

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressText:Landroid/widget/TextView;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    monitor-enter p0

    .line 316
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 314
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    const-string v29, "LoadingScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "done creating progress bar "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v31, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v31 .. v31}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$3(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/ProgressBar;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/blizzard/wtcg/hearthstone/LoadingScreen$1;->this$0:Lcom/blizzard/wtcg/hearthstone/LoadingScreen;

    move-object/from16 v31, v0

    # getter for: Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->m_progressLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v31 .. v31}, Lcom/blizzard/wtcg/hearthstone/LoadingScreen;->access$1(Lcom/blizzard/wtcg/hearthstone/LoadingScreen;)Landroid/widget/RelativeLayout;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 271
    .end local v10    # "chunk":[B
    .end local v13    # "drawableFolder":Ljava/lang/String;
    .end local v15    # "progressBackgroundBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "progressBackgroundDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    .end local v17    # "progressBackgroundStream":Ljava/io/InputStream;
    .end local v19    # "progressBitmap":Landroid/graphics/Bitmap;
    .end local v21    # "progressDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    .end local v24    # "progressStream":Ljava/io/InputStream;
    .end local v26    # "result":Z
    .end local v28    # "textViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget v0, v14, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v29, v0

    const/16 v30, 0xf0

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_1

    .line 272
    const-string v13, "assets/bin/Data/drawable-mdpi"

    .restart local v13    # "drawableFolder":Ljava/lang/String;
    goto/16 :goto_0

    .line 274
    .end local v13    # "drawableFolder":Ljava/lang/String;
    :cond_1
    const-string v13, "assets/bin/Data/drawable-ldpi"

    .restart local v13    # "drawableFolder":Ljava/lang/String;
    goto/16 :goto_0

    .line 314
    .restart local v10    # "chunk":[B
    .restart local v15    # "progressBackgroundBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "progressBackgroundDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    .restart local v17    # "progressBackgroundStream":Ljava/io/InputStream;
    .restart local v19    # "progressBitmap":Landroid/graphics/Bitmap;
    .restart local v21    # "progressDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    .restart local v24    # "progressStream":Ljava/io/InputStream;
    .restart local v26    # "result":Z
    .restart local v28    # "textViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catchall_0
    move-exception v29

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v29
.end method
