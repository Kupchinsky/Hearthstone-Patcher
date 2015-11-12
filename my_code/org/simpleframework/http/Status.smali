.class public final enum Lorg/simpleframework/http/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/simpleframework/http/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/http/Status;

.field public static final enum ACCEPTED:Lorg/simpleframework/http/Status;

.field public static final enum BAD_GATEWAY:Lorg/simpleframework/http/Status;

.field public static final enum BAD_REQUEST:Lorg/simpleframework/http/Status;

.field public static final enum CONFLICT:Lorg/simpleframework/http/Status;

.field public static final enum CREATED:Lorg/simpleframework/http/Status;

.field public static final enum EXPECTATION_FAILED:Lorg/simpleframework/http/Status;

.field public static final enum FORBIDDEN:Lorg/simpleframework/http/Status;

.field public static final enum FOUND:Lorg/simpleframework/http/Status;

.field public static final enum GATEWAY_TIMEOUT:Lorg/simpleframework/http/Status;

.field public static final enum GONE:Lorg/simpleframework/http/Status;

.field public static final enum INTERNAL_SERVER_ERROR:Lorg/simpleframework/http/Status;

.field public static final enum LENGTH_REQUIRED:Lorg/simpleframework/http/Status;

.field public static final enum METHOD_NOT_ALLOWED:Lorg/simpleframework/http/Status;

.field public static final enum MOVED_PERMANENTLY:Lorg/simpleframework/http/Status;

.field public static final enum MULTIPLE_CHOICES:Lorg/simpleframework/http/Status;

.field public static final enum NOT_ACCEPTABLE:Lorg/simpleframework/http/Status;

.field public static final enum NOT_FOUND:Lorg/simpleframework/http/Status;

.field public static final enum NOT_IMPLEMENTED:Lorg/simpleframework/http/Status;

.field public static final enum NOT_MODIFIED:Lorg/simpleframework/http/Status;

.field public static final enum NO_CONTENT:Lorg/simpleframework/http/Status;

.field public static final enum OK:Lorg/simpleframework/http/Status;

.field public static final enum PARTIAL_CONTENT:Lorg/simpleframework/http/Status;

.field public static final enum PAYMENT_REQUIRED:Lorg/simpleframework/http/Status;

.field public static final enum PRECONDITION_FAILED:Lorg/simpleframework/http/Status;

.field public static final enum PROXY_AUTHENTICATION_REQUIRED:Lorg/simpleframework/http/Status;

.field public static final enum REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/simpleframework/http/Status;

.field public static final enum REQUEST_ENTITY_TOO_LARGE:Lorg/simpleframework/http/Status;

.field public static final enum REQUEST_TIMEOUT:Lorg/simpleframework/http/Status;

.field public static final enum REQUEST_URI_TOO_LONG:Lorg/simpleframework/http/Status;

.field public static final enum RESET_CONTENT:Lorg/simpleframework/http/Status;

.field public static final enum SEE_OTHER:Lorg/simpleframework/http/Status;

.field public static final enum SERVICE_UNAVAILABLE:Lorg/simpleframework/http/Status;

.field public static final enum TEMPORARY_REDIRECT:Lorg/simpleframework/http/Status;

.field public static final enum UNAUTHORIZED:Lorg/simpleframework/http/Status;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lorg/simpleframework/http/Status;

.field public static final enum USE_PROXY:Lorg/simpleframework/http/Status;

.field public static final enum VERSION_NOT_SUPPORTED:Lorg/simpleframework/http/Status;


# instance fields
.field private final code:I

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "OK"

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->OK:Lorg/simpleframework/http/Status;

    .line 48
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "CREATED"

    const/16 v2, 0xc9

    const-string v3, "Created"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->CREATED:Lorg/simpleframework/http/Status;

    .line 53
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "ACCEPTED"

    const/16 v2, 0xca

    const-string v3, "Accepted"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->ACCEPTED:Lorg/simpleframework/http/Status;

    .line 58
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "NO_CONTENT"

    const/16 v2, 0xcc

    const-string v3, "No Content"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->NO_CONTENT:Lorg/simpleframework/http/Status;

    .line 63
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "RESET_CONTENT"

    const/16 v2, 0xcd

    const-string v3, "Reset Content"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->RESET_CONTENT:Lorg/simpleframework/http/Status;

    .line 68
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "PARTIAL_CONTENT"

    const/4 v2, 0x5

    const/16 v3, 0xce

    const-string v4, "Partial Content"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->PARTIAL_CONTENT:Lorg/simpleframework/http/Status;

    .line 73
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "MULTIPLE_CHOICES"

    const/4 v2, 0x6

    const/16 v3, 0x12c

    const-string v4, "Multiple Choices"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->MULTIPLE_CHOICES:Lorg/simpleframework/http/Status;

    .line 78
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "MOVED_PERMANENTLY"

    const/4 v2, 0x7

    const/16 v3, 0x12d

    const-string v4, "Moved Permanently"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->MOVED_PERMANENTLY:Lorg/simpleframework/http/Status;

    .line 83
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "FOUND"

    const/16 v2, 0x8

    const/16 v3, 0x12e

    const-string v4, "Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->FOUND:Lorg/simpleframework/http/Status;

    .line 88
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "SEE_OTHER"

    const/16 v2, 0x9

    const/16 v3, 0x12f

    const-string v4, "See Other"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->SEE_OTHER:Lorg/simpleframework/http/Status;

    .line 93
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "NOT_MODIFIED"

    const/16 v2, 0xa

    const/16 v3, 0x130

    const-string v4, "Not Modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->NOT_MODIFIED:Lorg/simpleframework/http/Status;

    .line 98
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "USE_PROXY"

    const/16 v2, 0xb

    const/16 v3, 0x131

    const-string v4, "Use Proxy"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->USE_PROXY:Lorg/simpleframework/http/Status;

    .line 103
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "TEMPORARY_REDIRECT"

    const/16 v2, 0xc

    const/16 v3, 0x133

    const-string v4, "Temporary Redirect"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->TEMPORARY_REDIRECT:Lorg/simpleframework/http/Status;

    .line 108
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "BAD_REQUEST"

    const/16 v2, 0xd

    const/16 v3, 0x190

    const-string v4, "Bad Request"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->BAD_REQUEST:Lorg/simpleframework/http/Status;

    .line 113
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "UNAUTHORIZED"

    const/16 v2, 0xe

    const/16 v3, 0x191

    const-string v4, "Unauthorized"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->UNAUTHORIZED:Lorg/simpleframework/http/Status;

    .line 118
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "PAYMENT_REQUIRED"

    const/16 v2, 0xf

    const/16 v3, 0x192

    const-string v4, "Payment Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->PAYMENT_REQUIRED:Lorg/simpleframework/http/Status;

    .line 123
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0x10

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->FORBIDDEN:Lorg/simpleframework/http/Status;

    .line 128
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0x11

    const/16 v3, 0x194

    const-string v4, "Not Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->NOT_FOUND:Lorg/simpleframework/http/Status;

    .line 133
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "METHOD_NOT_ALLOWED"

    const/16 v2, 0x12

    const/16 v3, 0x195

    const-string v4, "Method Not Allowed"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->METHOD_NOT_ALLOWED:Lorg/simpleframework/http/Status;

    .line 138
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "NOT_ACCEPTABLE"

    const/16 v2, 0x13

    const/16 v3, 0x196

    const-string v4, "Not Acceptable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->NOT_ACCEPTABLE:Lorg/simpleframework/http/Status;

    .line 143
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "PROXY_AUTHENTICATION_REQUIRED"

    const/16 v2, 0x14

    const/16 v3, 0x197

    const-string v4, "Proxy Authentication Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->PROXY_AUTHENTICATION_REQUIRED:Lorg/simpleframework/http/Status;

    .line 148
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "REQUEST_TIMEOUT"

    const/16 v2, 0x15

    const/16 v3, 0x198

    const-string v4, "Request Timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->REQUEST_TIMEOUT:Lorg/simpleframework/http/Status;

    .line 153
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "CONFLICT"

    const/16 v2, 0x16

    const/16 v3, 0x199

    const-string v4, "Conflict"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->CONFLICT:Lorg/simpleframework/http/Status;

    .line 158
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "GONE"

    const/16 v2, 0x17

    const/16 v3, 0x19a

    const-string v4, "Gone"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->GONE:Lorg/simpleframework/http/Status;

    .line 163
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "LENGTH_REQUIRED"

    const/16 v2, 0x18

    const/16 v3, 0x19b

    const-string v4, "Length Required"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->LENGTH_REQUIRED:Lorg/simpleframework/http/Status;

    .line 168
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "PRECONDITION_FAILED"

    const/16 v2, 0x19

    const/16 v3, 0x19c

    const-string v4, "Precondition Failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->PRECONDITION_FAILED:Lorg/simpleframework/http/Status;

    .line 173
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "REQUEST_ENTITY_TOO_LARGE"

    const/16 v2, 0x1a

    const/16 v3, 0x19d

    const-string v4, "Request Entity Too Large"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->REQUEST_ENTITY_TOO_LARGE:Lorg/simpleframework/http/Status;

    .line 178
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "REQUEST_URI_TOO_LONG"

    const/16 v2, 0x1b

    const/16 v3, 0x19e

    const-string v4, "Request-URI Too Long"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->REQUEST_URI_TOO_LONG:Lorg/simpleframework/http/Status;

    .line 183
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "UNSUPPORTED_MEDIA_TYPE"

    const/16 v2, 0x1c

    const/16 v3, 0x19f

    const-string v4, "Unsupported Media Type"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/simpleframework/http/Status;

    .line 188
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "REQUESTED_RANGE_NOT_SATISFIABLE"

    const/16 v2, 0x1d

    const/16 v3, 0x1a0

    const-string v4, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/simpleframework/http/Status;

    .line 193
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "EXPECTATION_FAILED"

    const/16 v2, 0x1e

    const/16 v3, 0x1a1

    const-string v4, "Expectation Failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->EXPECTATION_FAILED:Lorg/simpleframework/http/Status;

    .line 198
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "INTERNAL_SERVER_ERROR"

    const/16 v2, 0x1f

    const/16 v3, 0x1f4

    const-string v4, "Internal Server Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->INTERNAL_SERVER_ERROR:Lorg/simpleframework/http/Status;

    .line 203
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x20

    const/16 v3, 0x1f5

    const-string v4, "Not Implemented"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->NOT_IMPLEMENTED:Lorg/simpleframework/http/Status;

    .line 208
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "BAD_GATEWAY"

    const/16 v2, 0x21

    const/16 v3, 0x1f6

    const-string v4, "Bad Gateway"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->BAD_GATEWAY:Lorg/simpleframework/http/Status;

    .line 213
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/16 v2, 0x22

    const/16 v3, 0x1f7

    const-string v4, "Service Unavailable"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->SERVICE_UNAVAILABLE:Lorg/simpleframework/http/Status;

    .line 218
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "GATEWAY_TIMEOUT"

    const/16 v2, 0x23

    const/16 v3, 0x1f8

    const-string v4, "Gateway Timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->GATEWAY_TIMEOUT:Lorg/simpleframework/http/Status;

    .line 223
    new-instance v0, Lorg/simpleframework/http/Status;

    const-string v1, "VERSION_NOT_SUPPORTED"

    const/16 v2, 0x24

    const/16 v3, 0x1f9

    const-string v4, "Version Not Supported"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/simpleframework/http/Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/http/Status;->VERSION_NOT_SUPPORTED:Lorg/simpleframework/http/Status;

    .line 38
    const/16 v0, 0x25

    new-array v0, v0, [Lorg/simpleframework/http/Status;

    sget-object v1, Lorg/simpleframework/http/Status;->OK:Lorg/simpleframework/http/Status;

    aput-object v1, v0, v5

    sget-object v1, Lorg/simpleframework/http/Status;->CREATED:Lorg/simpleframework/http/Status;

    aput-object v1, v0, v6

    sget-object v1, Lorg/simpleframework/http/Status;->ACCEPTED:Lorg/simpleframework/http/Status;

    aput-object v1, v0, v7

    sget-object v1, Lorg/simpleframework/http/Status;->NO_CONTENT:Lorg/simpleframework/http/Status;

    aput-object v1, v0, v8

    sget-object v1, Lorg/simpleframework/http/Status;->RESET_CONTENT:Lorg/simpleframework/http/Status;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/simpleframework/http/Status;->PARTIAL_CONTENT:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/simpleframework/http/Status;->MULTIPLE_CHOICES:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/simpleframework/http/Status;->MOVED_PERMANENTLY:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/simpleframework/http/Status;->FOUND:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/simpleframework/http/Status;->SEE_OTHER:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/simpleframework/http/Status;->NOT_MODIFIED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/simpleframework/http/Status;->USE_PROXY:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/simpleframework/http/Status;->TEMPORARY_REDIRECT:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/simpleframework/http/Status;->BAD_REQUEST:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/simpleframework/http/Status;->UNAUTHORIZED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/simpleframework/http/Status;->PAYMENT_REQUIRED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/simpleframework/http/Status;->FORBIDDEN:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/simpleframework/http/Status;->NOT_FOUND:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/simpleframework/http/Status;->METHOD_NOT_ALLOWED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/simpleframework/http/Status;->NOT_ACCEPTABLE:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/simpleframework/http/Status;->PROXY_AUTHENTICATION_REQUIRED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/simpleframework/http/Status;->REQUEST_TIMEOUT:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/simpleframework/http/Status;->CONFLICT:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/simpleframework/http/Status;->GONE:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/simpleframework/http/Status;->LENGTH_REQUIRED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/simpleframework/http/Status;->PRECONDITION_FAILED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/simpleframework/http/Status;->REQUEST_ENTITY_TOO_LARGE:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/simpleframework/http/Status;->REQUEST_URI_TOO_LONG:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/simpleframework/http/Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/simpleframework/http/Status;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/simpleframework/http/Status;->EXPECTATION_FAILED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/simpleframework/http/Status;->INTERNAL_SERVER_ERROR:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/simpleframework/http/Status;->NOT_IMPLEMENTED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/simpleframework/http/Status;->BAD_GATEWAY:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/simpleframework/http/Status;->SERVICE_UNAVAILABLE:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lorg/simpleframework/http/Status;->GATEWAY_TIMEOUT:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lorg/simpleframework/http/Status;->VERSION_NOT_SUPPORTED:Lorg/simpleframework/http/Status;

    aput-object v2, v0, v1

    sput-object v0, Lorg/simpleframework/http/Status;->$VALUES:[Lorg/simpleframework/http/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "code"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 244
    iput-object p4, p0, Lorg/simpleframework/http/Status;->description:Ljava/lang/String;

    .line 245
    iput p3, p0, Lorg/simpleframework/http/Status;->code:I

    .line 246
    return-void
.end method

.method public static getDescription(I)Ljava/lang/String;
    .registers 7
    .param p0, "code"    # I

    .prologue
    .line 283
    invoke-static {}, Lorg/simpleframework/http/Status;->values()[Lorg/simpleframework/http/Status;

    move-result-object v3

    .line 285
    .local v3, "list":[Lorg/simpleframework/http/Status;
    move-object v0, v3

    .local v0, "arr$":[Lorg/simpleframework/http/Status;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_15

    aget-object v4, v0, v1

    .line 286
    .local v4, "status":Lorg/simpleframework/http/Status;
    iget v5, v4, Lorg/simpleframework/http/Status;->code:I

    if-ne v5, p0, :cond_12

    .line 287
    iget-object v5, v4, Lorg/simpleframework/http/Status;->description:Ljava/lang/String;

    .line 289
    .end local v4    # "status":Lorg/simpleframework/http/Status;
    :goto_11
    return-object v5

    .line 285
    .restart local v4    # "status":Lorg/simpleframework/http/Status;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 289
    .end local v4    # "status":Lorg/simpleframework/http/Status;
    :cond_15
    const-string v5, "Unknown"

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/http/Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lorg/simpleframework/http/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/http/Status;

    return-object v0
.end method

.method public static final values()[Lorg/simpleframework/http/Status;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lorg/simpleframework/http/Status;->$VALUES:[Lorg/simpleframework/http/Status;

    invoke-virtual {v0}, [Lorg/simpleframework/http/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/http/Status;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Lorg/simpleframework/http/Status;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/simpleframework/http/Status;->description:Ljava/lang/String;

    return-object v0
.end method
