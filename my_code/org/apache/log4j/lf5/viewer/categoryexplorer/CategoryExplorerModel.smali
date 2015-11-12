.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
.super Ljavax/swing/tree/DefaultTreeModel;
.source "CategoryExplorerModel.java"


# static fields
.field private static final serialVersionUID:J = -0x2f60907d0d57f51dL


# instance fields
.field protected _event:Ljava/awt/event/ActionEvent;

.field protected _listener:Ljava/awt/event/ActionListener;

.field protected _renderFatal:Z


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .registers 5
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_renderFatal:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    .line 55
    new-instance v0, Ljava/awt/event/ActionEvent;

    const/16 v1, 0x3e9

    const-string v2, "Nodes Selection changed"

    invoke-direct {v0, p0, v1, v2}, Ljava/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_event:Ljava/awt/event/ActionEvent;

    .line 69
    return-void
.end method


# virtual methods
.method public declared-synchronized addActionListener(Ljava/awt/event/ActionListener;)V
    .registers 3
    .param p1, "l"    # Ljava/awt/event/ActionListener;

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->add(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 284
    monitor-exit p0

    return-void

    .line 283
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .registers 13
    .param p1, "path"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    .prologue
    .line 193
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 194
    .local v8, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v6, v8

    .line 196
    .local v6, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v10

    if-ge v3, v10, :cond_54

    .line 197
    invoke-virtual {p1, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v2

    .line 200
    .local v2, "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v6}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v1

    .line 202
    .local v1, "children":Ljava/util/Enumeration;
    const/4 v0, 0x0

    .line 203
    .local v0, "categoryAlreadyExists":Z
    :cond_17
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 204
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 205
    .local v5, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "pathLC":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 209
    const/4 v0, 0x1

    .line 211
    move-object v6, v5

    .line 216
    .end local v5    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v7    # "pathLC":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_3b
    if-nez v0, :cond_51

    .line 218
    new-instance v4, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;-><init>(Ljava/lang/String;)V

    .line 226
    .local v4, "newNode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v6}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v10

    invoke-virtual {p0, v4, v6, v10}, Ljavax/swing/tree/DefaultTreeModel;->insertNodeInto(Ljavax/swing/tree/MutableTreeNode;Ljavax/swing/tree/MutableTreeNode;I)V

    .line 227
    invoke-virtual {p0, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->refresh(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    .line 230
    move-object v6, v4

    .line 196
    .end local v4    # "newNode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 235
    .end local v0    # "categoryAlreadyExists":Z
    .end local v1    # "children":Ljava/util/Enumeration;
    .end local v2    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_54
    return-object v6
.end method

.method public addLogRecord(Lorg/apache/log4j/lf5/LogRecord;)V
    .registers 10
    .param p1, "lr"    # Lorg/apache/log4j/lf5/LogRecord;

    .prologue
    const/4 v7, 0x1

    .line 75
    new-instance v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    .line 76
    .local v5, "path":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    invoke-virtual {p0, v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 77
    invoke-virtual {p0, v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v2

    .line 78
    .local v2, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecord()V

    .line 79
    iget-boolean v6, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_renderFatal:Z

    if-eqz v6, :cond_3b

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->isFatal()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 80
    invoke-virtual {p0, v2}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v3

    .line 81
    .local v3, "nodes":[Ljavax/swing/tree/TreeNode;
    array-length v1, v3

    .line 86
    .local v1, "len":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_24
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_35

    .line 87
    aget-object v4, v3, v0

    check-cast v4, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 88
    .local v4, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v4, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setHasFatalChildren(Z)V

    .line 89
    invoke-virtual {p0, v4}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 91
    .end local v4    # "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_35
    invoke-virtual {v2, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setHasFatalRecords(Z)V

    .line 92
    invoke-virtual {p0, v2}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 94
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "nodes":[Ljavax/swing/tree/TreeNode;
    :cond_3b
    return-void
.end method

.method public getCategoryNode(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .registers 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    invoke-direct {v0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "path":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v1

    return-object v1
.end method

.method public getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .registers 12
    .param p1, "path"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    .prologue
    .line 109
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 110
    .local v7, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v5, v7

    .line 112
    .local v5, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v9

    if-ge v3, v9, :cond_42

    .line 113
    invoke-virtual {p1, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v2

    .line 116
    .local v2, "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v5}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v1

    .line 118
    .local v1, "children":Ljava/util/Enumeration;
    const/4 v0, 0x0

    .line 119
    .local v0, "categoryAlreadyExists":Z
    :cond_17
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 120
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 121
    .local v4, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "pathLC":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 125
    const/4 v0, 0x1

    .line 127
    move-object v5, v4

    .line 132
    .end local v4    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v6    # "pathLC":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    :cond_3b
    if-nez v0, :cond_3f

    .line 133
    const/4 v9, 0x0

    .line 137
    .end local v0    # "categoryAlreadyExists":Z
    .end local v1    # "children":Ljava/util/Enumeration;
    .end local v2    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :goto_3e
    return-object v9

    .line 112
    .restart local v0    # "categoryAlreadyExists":Z
    .restart local v1    # "children":Ljava/util/Enumeration;
    .restart local v2    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .end local v0    # "categoryAlreadyExists":Z
    .end local v1    # "children":Ljava/util/Enumeration;
    .end local v2    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_42
    move-object v9, v5

    .line 137
    goto :goto_3e
.end method

.method public getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    return-object v0
.end method

.method public getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;
    .registers 4
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 307
    if-nez p1, :cond_4

    .line 308
    const/4 v0, 0x0

    .line 310
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljavax/swing/tree/TreePath;

    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public isCategoryPathActive(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Z
    .registers 13
    .param p1, "path"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    .prologue
    .line 145
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 146
    .local v8, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v6, v8

    .line 147
    .local v6, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v0, 0x0

    .line 149
    .local v0, "active":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v10

    if-ge v4, v10, :cond_4d

    .line 150
    invoke-virtual {p1, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v3

    .line 153
    .local v3, "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v6}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v2

    .line 155
    .local v2, "children":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 156
    .local v1, "categoryAlreadyExists":Z
    const/4 v0, 0x0

    .line 158
    :cond_19
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_44

    .line 159
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 160
    .local v5, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "pathLC":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 164
    const/4 v1, 0x1

    .line 166
    move-object v6, v5

    .line 168
    invoke-virtual {v6}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v10

    if-eqz v10, :cond_44

    .line 169
    const/4 v0, 0x1

    .line 176
    .end local v5    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v7    # "pathLC":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_44
    if-eqz v0, :cond_48

    if-nez v1, :cond_4a

    .line 177
    :cond_48
    const/4 v10, 0x0

    .line 181
    .end local v1    # "categoryAlreadyExists":Z
    .end local v2    # "children":Ljava/util/Enumeration;
    .end local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :goto_49
    return v10

    .line 149
    .restart local v1    # "categoryAlreadyExists":Z
    .restart local v2    # "children":Ljava/util/Enumeration;
    .restart local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .end local v1    # "categoryAlreadyExists":Z
    .end local v2    # "children":Ljava/util/Enumeration;
    .end local v3    # "element":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    :cond_4d
    move v10, v0

    .line 181
    goto :goto_49
.end method

.method protected notifyActionListeners()V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    if-eqz v0, :cond_b

    .line 318
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_event:Ljava/awt/event/ActionEvent;

    invoke-interface {v0, v1}, Ljava/awt/event/ActionListener;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 320
    :cond_b
    return-void
.end method

.method protected refresh(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .registers 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 326
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method public declared-synchronized removeActionListener(Ljava/awt/event/ActionListener;)V
    .registers 3
    .param p1, "l"    # Ljava/awt/event/ActionListener;

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->remove(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 288
    monitor-exit p0

    return-void

    .line 287
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetAllNodeCounts()V
    .registers 4

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/tree/DefaultMutableTreeNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 293
    .local v1, "nodes":Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 294
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 295
    .local v0, "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->resetNumberOfContainedRecords()V

    .line 296
    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_8

    .line 298
    .end local v0    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_1b
    return-void
.end method

.method public setDescendantSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .registers 6
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "selected"    # Z

    .prologue
    .line 251
    invoke-virtual {p1}, Ljavax/swing/tree/DefaultMutableTreeNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 253
    .local v1, "descendants":Ljava/util/Enumeration;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 254
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 256
    .local v0, "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v2

    if-eq v2, p2, :cond_4

    .line 257
    invoke-virtual {v0, p2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 258
    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_4

    .line 261
    .end local v0    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_1d
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->notifyActionListeners()V

    .line 262
    return-void
.end method

.method public setParentSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .registers 8
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "selected"    # Z

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v2

    .line 266
    .local v2, "nodes":[Ljavax/swing/tree/TreeNode;
    array-length v1, v2

    .line 271
    .local v1, "len":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_1b

    .line 272
    aget-object v3, v2, v0

    check-cast v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 273
    .local v3, "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v4

    if-eq v4, p2, :cond_18

    .line 274
    invoke-virtual {v3, p2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 275
    invoke-virtual {p0, v3}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 271
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 278
    .end local v3    # "parent":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->notifyActionListeners()V

    .line 279
    return-void
.end method

.method public update(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .registers 4
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "selected"    # Z

    .prologue
    .line 239
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v0

    if-ne v0, p2, :cond_7

    .line 248
    :goto_6
    return-void

    .line 243
    :cond_7
    if-eqz p2, :cond_e

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->setParentSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    goto :goto_6

    .line 246
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->setDescendantSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    goto :goto_6
.end method
