.class public abstract Lio/fabric/sdk/android/services/common/a;
.super Ljava/lang/Object;
.source "Paramount"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lio/fabric/sdk/android/services/network/f;

.field private final d:Lio/fabric/sdk/android/services/network/HttpMethod;

.field private final e:Ljava/lang/String;

.field protected final f:Lio/fabric/sdk/android/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    const-string v0, "http(s?)://[^\\/]+"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/l;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/f;Lio/fabric/sdk/android/services/network/HttpMethod;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1e

    if-eqz p4, :cond_16

    .line 2
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/a;->f:Lio/fabric/sdk/android/l;

    .line 3
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/a;->e:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p3}, Lio/fabric/sdk/android/services/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/a;->b:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/fabric/sdk/android/services/common/a;->c:Lio/fabric/sdk/android/services/network/f;

    .line 6
    iput-object p5, p0, Lio/fabric/sdk/android/services/common/a;->d:Lio/fabric/sdk/android/services/network/HttpMethod;

    return-void

    .line 7
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "requestFactory must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 9
#    :catch_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 10
    sget-object v0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_14
    :try_start_14
    return-object p1
#    :try_end_15
#    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_0
.end method


# virtual methods
.method protected a()Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 2

    .line 1
#    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/common/a;->a(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object v0

    :try_start_8
    return-object v0
#    :try_end_9
#    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9} :catch_0
.end method

.method protected a(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/fabric/sdk/android/services/network/HttpRequest;"
        }
    .end annotation

    .line 2
#    :catch_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->c:Lio/fabric/sdk/android/services/network/f;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->d:Lio/fabric/sdk/android/services/network/HttpMethod;

    .line 3
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/services/network/f;->a(Lio/fabric/sdk/android/services/network/HttpMethod;Ljava/lang/String;Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(Z)Lio/fabric/sdk/android/services/network/HttpRequest;

    const/16 v0, 0x2710

    .line 6
    invoke-virtual {p1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->a(I)Lio/fabric/sdk/android/services/network/HttpRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashlytics Android SDK/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->f:Lio/fabric/sdk/android/l;

    .line 7
    invoke-virtual {v1}, Lio/fabric/sdk/android/l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    const-string v0, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v1, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    .line 8
    invoke-virtual {p1, v0, v1}, Lio/fabric/sdk/android/services/network/HttpRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;

    :try_start_38
    return-object p1
#    :try_end_39
#    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_39} :catch_0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->b:Ljava/lang/String;

    return-object v0
.end method
