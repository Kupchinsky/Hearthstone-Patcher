.class Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;
.super Ljava/lang/Object;
.source "LogFactor5InputDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->hide()V

    .line 97
    return-void
.end method
