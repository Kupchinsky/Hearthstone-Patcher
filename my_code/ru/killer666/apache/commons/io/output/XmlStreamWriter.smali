.class public Lru/killer666/apache/commons/io/output/XmlStreamWriter;
.super Ljava/io/Writer;
.source "XmlStreamWriter.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field static final ENCODING_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final defaultEncoding:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private final out:Ljava/io/OutputStream;

.field private writer:Ljava/io/Writer;

.field private xmlPrologWriter:Ljava/io/StringWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 219
    sget-object v0, Lru/killer666/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    sput-object v0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lru/killer666/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "defaultEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lru/killer666/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lru/killer666/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "defaultEncoding"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 47
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    iput-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    .line 71
    iput-object p1, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    .line 72
    if-eqz p2, :cond_13

    .end local p2    # "defaultEncoding":Ljava/lang/String;
    :goto_10
    iput-object p2, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    .line 73
    return-void

    .line 72
    .restart local p2    # "defaultEncoding":Ljava/lang/String;
    :cond_13
    const-string p2, "UTF-8"

    goto :goto_10
.end method

.method private detectEncoding([CII)V
    .registers 13
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1000

    const/4 v5, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    move v1, p3

    .line 156
    .local v1, "size":I
    iget-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v4}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 157
    .local v2, "xmlProlog":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/2addr v4, p3

    if-le v4, v8, :cond_19

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    rsub-int v1, v4, 0x1000

    .line 160
    :cond_19
    iget-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/StringWriter;->write([CII)V

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v4, v5, :cond_88

    .line 164
    invoke-virtual {v2, v6, v5}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<?xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 166
    const-string v4, "?>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 167
    .local v3, "xmlPrologEnd":I
    if-lez v3, :cond_8e

    .line 169
    sget-object v4, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 171
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 172
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    .line 173
    iget-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    iget-object v5, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    .line 190
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "xmlPrologEnd":I
    :cond_62
    :goto_62
    iget-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    if-eqz v4, :cond_88

    .line 192
    const/4 v4, 0x0

    iput-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    .line 193
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v6, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 194
    iget-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 195
    if-le p3, v1, :cond_88

    .line 196
    iget-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    add-int v5, p2, v1

    sub-int v6, p3, v1

    invoke-virtual {v4, p1, v5, v6}, Ljava/io/Writer;->write([CII)V

    .line 200
    :cond_88
    return-void

    .line 177
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "xmlPrologEnd":I
    :cond_89
    iget-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    goto :goto_62

    .line 180
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_8e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lt v4, v8, :cond_62

    .line 183
    iget-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    goto :goto_62

    .line 188
    .end local v3    # "xmlPrologEnd":I
    :cond_99
    iget-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v4, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    goto :goto_62
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1e

    .line 126
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    iput-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 128
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 130
    :cond_1e
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 131
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 143
    :cond_9
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->defaultEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public write([CII)V
    .registers 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->xmlPrologWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_8

    .line 213
    invoke-direct {p0, p1, p2, p3}, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->detectEncoding([CII)V

    .line 217
    :goto_7
    return-void

    .line 215
    :cond_8
    iget-object v0, p0, Lru/killer666/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_7
.end method
