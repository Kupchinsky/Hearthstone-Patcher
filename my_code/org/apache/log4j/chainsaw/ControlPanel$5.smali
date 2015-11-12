.class Lorg/apache/log4j/chainsaw/ControlPanel$5;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljavax/swing/event/DocumentListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

.field private final val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

.field private final val$msgField:Ljavax/swing/JTextField;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V
    .registers 4

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$5;->this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

    iput-object p2, p0, Lorg/apache/log4j/chainsaw/ControlPanel$5;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iput-object p3, p0, Lorg/apache/log4j/chainsaw/ControlPanel$5;->val$msgField:Ljavax/swing/JTextField;

    return-void
.end method


# virtual methods
.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 4
    .param p1, "aEvent"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$5;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$5;->val$msgField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/text/JTextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->setMessageFilter(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 4
    .param p1, "aEvent"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$5;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$5;->val$msgField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/text/JTextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->setMessageFilter(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 4
    .param p1, "aEvent"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$5;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$5;->val$msgField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/text/JTextComponent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->setMessageFilter(Ljava/lang/String;)V

    .line 175
    return-void
.end method
