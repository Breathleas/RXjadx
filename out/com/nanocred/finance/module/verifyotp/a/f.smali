.class final Lcom/nanocred/finance/module/verifyotp/a/f;
.super Lkotlin/jvm/internal/Lambda;
.source "Paramount"

# interfaces
.implements Lkotlin/jvm/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nanocred/finance/module/verifyotp/a/j;->a(Lcom/nanocred/finance/module/bean/requestbean/AuthCodeRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/a/l<",
        "Ljava/lang/Throwable;",
        "Lkotlin/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nanocred/finance/module/verifyotp/a/j;

.field final synthetic b:Lcom/nanocred/finance/module/bean/requestbean/AuthCodeRequest;


# direct methods
.method constructor <init>(Lcom/nanocred/finance/module/verifyotp/a/j;Lcom/nanocred/finance/module/bean/requestbean/AuthCodeRequest;)V
    .registers 3

    iput-object p1, p0, Lcom/nanocred/finance/module/verifyotp/a/f;->a:Lcom/nanocred/finance/module/verifyotp/a/j;

    iput-object p2, p0, Lcom/nanocred/finance/module/verifyotp/a/f;->b:Lcom/nanocred/finance/module/bean/requestbean/AuthCodeRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

#    :catch_0
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/nanocred/finance/module/verifyotp/a/f;->a:Lcom/nanocred/finance/module/verifyotp/a/j;

    invoke-static {v0}, Lcom/nanocred/finance/module/verifyotp/a/j;->a(Lcom/nanocred/finance/module/verifyotp/a/j;)Lcom/nanocred/finance/module/verifyotp/a/c;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    invoke-interface {v0}, Lcom/nanocred/finance/module/verifyotp/a/c;->b()V

    .line 3
    invoke-interface {v0, p1}, Lcom/nanocred/finance/module/verifyotp/a/c;->y(Ljava/lang/Throwable;)V

    :cond_13
    :try_start_13
    return-void
#    :try_end_14
#    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/nanocred/finance/module/verifyotp/a/f;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/n;->a:Lkotlin/n;

    return-object p1
.end method
