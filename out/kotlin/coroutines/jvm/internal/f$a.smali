.class final Lkotlin/coroutines/jvm/internal/f$a;
.super Ljava/lang/Object;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/jvm/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/f$a;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/f$a;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lkotlin/coroutines/jvm/internal/f$a;->c:Ljava/lang/reflect/Method;

    return-void
.end method
