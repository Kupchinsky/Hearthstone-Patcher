.class public Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;
.super Lru/killer666/apache/commons/io/comparator/AbstractFileComparator;
.source "ExtensionFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EXTENSION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_INSENSITIVE_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_SYSTEM_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final caseSensitivity:Lru/killer666/apache/commons/io/IOCase;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;

    invoke-direct {v0}, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;-><init>()V

    sput-object v0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_COMPARATOR:Ljava/util/Comparator;

    .line 60
    new-instance v0, Lru/killer666/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_REVERSE:Ljava/util/Comparator;

    .line 63
    new-instance v0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;

    sget-object v1, Lru/killer666/apache/commons/io/IOCase;->INSENSITIVE:Lru/killer666/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;-><init>(Lru/killer666/apache/commons/io/IOCase;)V

    sput-object v0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lru/killer666/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_REVERSE:Ljava/util/Comparator;

    .line 71
    new-instance v0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;

    sget-object v1, Lru/killer666/apache/commons/io/IOCase;->SYSTEM:Lru/killer666/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;-><init>(Lru/killer666/apache/commons/io/IOCase;)V

    sput-object v0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    .line 74
    new-instance v0, Lru/killer666/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lru/killer666/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Lru/killer666/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    .line 83
    sget-object v0, Lru/killer666/apache/commons/io/IOCase;->SENSITIVE:Lru/killer666/apache/commons/io/IOCase;

    iput-object v0, p0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->caseSensitivity:Lru/killer666/apache/commons/io/IOCase;

    .line 84
    return-void
.end method

.method public constructor <init>(Lru/killer666/apache/commons/io/IOCase;)V
    .registers 2
    .param p1, "caseSensitivity"    # Lru/killer666/apache/commons/io/IOCase;

    .prologue
    .line 91
    invoke-direct {p0}, Lru/killer666/apache/commons/io/comparator/AbstractFileComparator;-><init>()V

    .line 92
    if-nez p1, :cond_7

    sget-object p1, Lru/killer666/apache/commons/io/IOCase;->SENSITIVE:Lru/killer666/apache/commons/io/IOCase;

    .end local p1    # "caseSensitivity":Lru/killer666/apache/commons/io/IOCase;
    :cond_7
    iput-object p1, p0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->caseSensitivity:Lru/killer666/apache/commons/io/IOCase;

    .line 93
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 6
    .param p1, "file1"    # Ljava/io/File;
    .param p2, "file2"    # Ljava/io/File;

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lru/killer666/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "suffix1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lru/killer666/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "suffix2":Ljava/lang/String;
    iget-object v2, p0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->caseSensitivity:Lru/killer666/apache/commons/io/IOCase;

    invoke-virtual {v2, v0, v1}, Lru/killer666/apache/commons/io/IOCase;->checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic sort(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lru/killer666/apache/commons/io/comparator/AbstractFileComparator;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sort([Ljava/io/File;)[Ljava/io/File;
    .registers 3
    .param p1, "x0"    # [Ljava/io/File;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lru/killer666/apache/commons/io/comparator/AbstractFileComparator;->sort([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lru/killer666/apache/commons/io/comparator/AbstractFileComparator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[caseSensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/killer666/apache/commons/io/comparator/ExtensionFileComparator;->caseSensitivity:Lru/killer666/apache/commons/io/IOCase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
