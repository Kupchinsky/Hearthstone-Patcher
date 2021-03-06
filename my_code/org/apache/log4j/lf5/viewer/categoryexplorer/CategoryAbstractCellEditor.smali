.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;
.super Ljava/lang/Object;
.source "CategoryAbstractCellEditor.java"

# interfaces
.implements Ljavax/swing/table/TableCellEditor;
.implements Ljavax/swing/tree/TreeCellEditor;


# static fields
.field static class$javax$swing$event$CellEditorListener:Ljava/lang/Class;


# instance fields
.field protected _changeEvent:Ljavax/swing/event/ChangeEvent;

.field protected _clickCountToStart:I

.field protected _listenerList:Ljavax/swing/event/EventListenerList;

.field protected _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljavax/swing/event/EventListenerList;

    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .registers 4
    .param p1, "l"    # Ljavax/swing/event/CellEditorListener;

    .prologue
    .line 111
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :goto_e
    invoke-virtual {v1, v0, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 112
    return-void

    .line 111
    :cond_12
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    goto :goto_e
.end method

.method public cancelCellEditing()V
    .registers 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->fireEditingCanceled()V

    .line 108
    return-void
.end method

.method protected fireEditingCanceled()V
    .registers 5

    .prologue
    .line 151
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v2}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, "listeners":[Ljava/lang/Object;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x2

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_37

    .line 154
    aget-object v3, v1, v0

    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v2, :cond_34

    const-string v2, "javax.swing.event.CellEditorListener"

    invoke-static {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :goto_19
    if-ne v3, v2, :cond_31

    .line 155
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    if-nez v2, :cond_26

    .line 156
    new-instance v2, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v2, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    .line 159
    :cond_26
    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingCanceled(Ljavax/swing/event/ChangeEvent;)V

    .line 153
    :cond_31
    add-int/lit8 v0, v0, -0x2

    goto :goto_9

    .line 154
    :cond_34
    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    goto :goto_19

    .line 162
    :cond_37
    return-void
.end method

.method protected fireEditingStopped()V
    .registers 5

    .prologue
    .line 137
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    invoke-virtual {v2}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "listeners":[Ljava/lang/Object;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x2

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_37

    .line 140
    aget-object v3, v1, v0

    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v2, :cond_34

    const-string v2, "javax.swing.event.CellEditorListener"

    invoke-static {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :goto_19
    if-ne v3, v2, :cond_31

    .line 141
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    if-nez v2, :cond_26

    .line 142
    new-instance v2, Ljavax/swing/event/ChangeEvent;

    invoke-direct {v2, p0}, Ljavax/swing/event/ChangeEvent;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    .line 145
    :cond_26
    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljavax/swing/event/CellEditorListener;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_changeEvent:Ljavax/swing/event/ChangeEvent;

    invoke-interface {v2, v3}, Ljavax/swing/event/CellEditorListener;->editingStopped(Ljavax/swing/event/ChangeEvent;)V

    .line 139
    :cond_31
    add-int/lit8 v0, v0, -0x2

    goto :goto_9

    .line 140
    :cond_34
    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    goto :goto_19

    .line 148
    :cond_37
    return-void
.end method

.method public getCellEditorValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public getClickCountToStart()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    return v0
.end method

.method public getTableCellEditorComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZII)Ljava/awt/Component;
    .registers 7
    .param p1, "table"    # Ljavax/swing/JTable;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "isSelected"    # Z
    .param p4, "row"    # I
    .param p5, "column"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTreeCellEditorComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)Ljava/awt/Component;
    .registers 8
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "isSelected"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCellEditable(Ljava/util/EventObject;)Z
    .registers 4
    .param p1, "anEvent"    # Ljava/util/EventObject;

    .prologue
    .line 83
    instance-of v0, p1, Ljava/awt/event/MouseEvent;

    if-eqz v0, :cond_10

    .line 84
    check-cast p1, Ljava/awt/event/MouseEvent;

    .end local p1    # "anEvent":Ljava/util/EventObject;
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    if-ge v0, v1, :cond_10

    .line 85
    const/4 v0, 0x0

    .line 88
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public removeCellEditorListener(Ljavax/swing/event/CellEditorListener;)V
    .registers 4
    .param p1, "l"    # Ljavax/swing/event/CellEditorListener;

    .prologue
    .line 115
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_listenerList:Ljavax/swing/event/EventListenerList;

    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string v0, "javax.swing.event.CellEditorListener"

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    :goto_e
    invoke-virtual {v1, v0, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 116
    return-void

    .line 115
    :cond_12
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->class$javax$swing$event$CellEditorListener:Ljava/lang/Class;

    goto :goto_e
.end method

.method public setCellEditorValue(Ljava/lang/Object;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_value:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public setClickCountToStart(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 75
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    .line 76
    return-void
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .registers 4
    .param p1, "anEvent"    # Ljava/util/EventObject;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->isCellEditable(Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 93
    if-eqz p1, :cond_12

    check-cast p1, Ljava/awt/event/MouseEvent;

    .end local p1    # "anEvent":Ljava/util/EventObject;
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->_clickCountToStart:I

    if-lt v0, v1, :cond_14

    .line 95
    :cond_12
    const/4 v0, 0x1

    .line 98
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public stopCellEditing()Z
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;->fireEditingStopped()V

    .line 103
    const/4 v0, 0x1

    return v0
.end method
