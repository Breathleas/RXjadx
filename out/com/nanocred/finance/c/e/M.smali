.class final Lcom/nanocred/finance/c/e/M;
.super Lkotlin/jvm/internal/Lambda;
.source "Paramount"

# interfaces
.implements Lkotlin/jvm/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nanocred/finance/c/e/N;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/a/a<",
        "Lkotlin/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nanocred/finance/c/e/N;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lcom/nanocred/finance/c/e/N;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 4

    iput-object p1, p0, Lcom/nanocred/finance/c/e/M;->a:Lcom/nanocred/finance/c/e/N;

    iput-object p2, p0, Lcom/nanocred/finance/c/e/M;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nanocred/finance/c/e/M;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/nanocred/finance/c/e/M;->invoke()V

    sget-object v0, Lkotlin/n;->a:Lkotlin/n;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 1
#    :catch_0
    iget-object v0, p0, Lcom/nanocred/finance/c/e/M;->a:Lcom/nanocred/finance/c/e/N;

    iget-object v0, v0, Lcom/nanocred/finance/c/e/N;->b:Lkotlin/jvm/a/p;

    iget-object v1, p0, Lcom/nanocred/finance/c/e/M;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nanocred/finance/c/e/M;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/a/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_11
    return-void
#    :try_end_12
#    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_12} :catch_0
.end method
