.class Lio/fabric/sdk/android/services/network/d;
.super Lio/fabric/sdk/android/services/network/HttpRequest$a;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/network/HttpRequest;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/network/HttpRequest$a<",
        "Lio/fabric/sdk/android/services/network/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/io/InputStream;

.field final synthetic d:Ljava/io/OutputStream;

.field final synthetic e:Lio/fabric/sdk/android/services/network/HttpRequest;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/d;->e:Lio/fabric/sdk/android/services/network/HttpRequest;

    iput-object p4, p0, Lio/fabric/sdk/android/services/network/d;->c:Ljava/io/InputStream;

    iput-object p5, p0, Lio/fabric/sdk/android/services/network/d;->d:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/services/network/HttpRequest$a;-><init>(Ljava/io/Closeable;Z)V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public b()Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
#    :catch_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/d;->e:Lio/fabric/sdk/android/services/network/HttpRequest;

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Lio/fabric/sdk/android/services/network/HttpRequest;)I

    move-result v0

    new-array v0, v0, [B

    .line 3
    :goto_8
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/d;->c:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 4
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/d;->d:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_8

    .line 5
    :cond_18
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/d;->e:Lio/fabric/sdk/android/services/network/HttpRequest;

    :try_start_1a
    return-object v0
#    :try_end_1b
#    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/d;->b()Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    return-object v0
.end method
