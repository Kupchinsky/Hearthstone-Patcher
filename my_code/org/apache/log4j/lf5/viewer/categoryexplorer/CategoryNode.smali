.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
.super Ljavax/swing/tree/DefaultMutableTreeNode;
.source "CategoryNode.java"


# static fields
.field private static final serialVersionUID:J = 0x52b29a36eefed5e7L


# instance fields
.field protected _hasFatalChildren:Z

.field protected _hasFatalRecords:Z

.field protected _numberOfContainedRecords:I

.field protected _numberOfRecordsFromChildren:I

.field protected _selected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    .line 42
    iput v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    .line 43
    iput v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    .line 44
    iput-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    .line 45
    iput-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    .line 59
    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultMutableTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addRecord()V
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    .line 126
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecordToParent()V

    .line 127
    return-void
.end method

.method protected addRecordFromChild()V
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    .line 169
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecordToParent()V

    .line 170
    return-void
.end method

.method protected addRecordToParent()V
    .registers 2

    .prologue
    .line 177
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v0

    .line 178
    .local v0, "parent":Ljavax/swing/tree/TreeNode;
    if-nez v0, :cond_7

    .line 182
    .end local v0    # "parent":Ljavax/swing/tree/TreeNode;
    :goto_6
    return-void

    .line 181
    .restart local v0    # "parent":Ljavax/swing/tree/TreeNode;
    :cond_7
    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .end local v0    # "parent":Ljavax/swing/tree/TreeNode;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecordFromChild()V

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 108
    instance-of v3, p1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    if-eqz v3, :cond_1f

    move-object v0, p1

    .line 109
    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 110
    .local v0, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "tit1":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "tit2":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 114
    const/4 v3, 0x1

    .line 117
    .end local v0    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v1    # "tit1":Ljava/lang/String;
    .end local v2    # "tit2":Ljava/lang/String;
    :goto_1e
    return v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public getNumberOfContainedRecords()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    return v0
.end method

.method protected getNumberOfRecordsFromChildren()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getTotalNumberOfRecords()I
    .registers 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getNumberOfRecordsFromChildren()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getNumberOfContainedRecords()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasFatalChildren()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    return v0
.end method

.method public hasFatalRecords()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    return v0
.end method

.method public resetNumberOfContainedRecords()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfContainedRecords:I

    .line 135
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_numberOfRecordsFromChildren:I

    .line 136
    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    .line 137
    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    .line 138
    return-void
.end method

.method public setAllDescendantsDeSelected()V
    .registers 4

    .prologue
    .line 95
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v0

    .line 96
    .local v0, "children":Ljava/util/Enumeration;
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 97
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 98
    .local v1, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 99
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setAllDescendantsDeSelected()V

    goto :goto_4

    .line 101
    .end local v1    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_18
    return-void
.end method

.method public setAllDescendantsSelected()V
    .registers 4

    .prologue
    .line 83
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v0

    .line 84
    .local v0, "children":Ljava/util/Enumeration;
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 85
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 86
    .local v1, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 87
    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setAllDescendantsSelected()V

    goto :goto_4

    .line 89
    .end local v1    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_18
    return-void
.end method

.method public setHasFatalChildren(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalChildren:Z

    .line 154
    return-void
.end method

.method public setHasFatalRecords(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_hasFatalRecords:Z

    .line 150
    return-void
.end method

.method public setSelected(Z)V
    .registers 3
    .param p1, "s"    # Z

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    if-eq p1, v0, :cond_6

    .line 71
    iput-boolean p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->_selected:Z

    .line 73
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
