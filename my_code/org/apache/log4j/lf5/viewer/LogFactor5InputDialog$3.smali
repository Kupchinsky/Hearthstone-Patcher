.class Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;
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
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 4
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->hide()V

    .line 107
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->access$000(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)Ljavax/swing/JTextField;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/swing/text/JTextComponent;->setText(Ljava/lang/String;)V

    .line 108
    return-void
.end method
