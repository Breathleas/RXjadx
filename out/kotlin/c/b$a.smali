.class public final Lkotlin/c/b$a;
.super Ljava/lang/Object;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lkotlin/c/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lkotlin/c/b;
    .registers 5

    .line 1
    new-instance v0, Lkotlin/c/b;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/c/b;-><init>(III)V

    return-object v0
.end method
