.class public Lcom/airbnb/lottie/d/f;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Lcom/airbnb/lottie/d/K;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/d/K<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/airbnb/lottie/d/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    .line 1
    new-instance v0, Lcom/airbnb/lottie/d/f;

    invoke-direct {v0}, Lcom/airbnb/lottie/d/f;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/d/f;->a:Lcom/airbnb/lottie/d/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Ljava/lang/Integer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
#    :catch_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p2

    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne p2, v0, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    if-eqz p2, :cond_10

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 4
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    .line 6
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    if-eqz p2, :cond_25

    .line 8
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    :cond_25
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v0, p1

    if-gtz v8, :cond_44

    cmpg-double v8, v2, p1

    if-gtz v8, :cond_44

    cmpg-double v8, v4, p1

    if-gtz v8, :cond_44

    cmpg-double v8, v6, p1

    if-gtz v8, :cond_44

    const-wide p1, 0x406fe00000000000L    # 255.0

    mul-double v0, v0, p1

    mul-double v2, v2, p1

    mul-double v4, v4, p1

    mul-double v6, v6, p1

    :cond_44
    double-to-int p1, v6

    double-to-int p2, v0

    double-to-int v0, v2

    double-to-int v1, v4

    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :try_start_50
    return-object p1
#    :try_end_51
#    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_51} :catch_0
.end method

.method public bridge synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/d/f;->a(Landroid/util/JsonReader;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
