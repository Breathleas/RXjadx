.class final Lcom/nanocred/finance/module/home/repeat/a/e;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Lio/reactivex/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nanocred/finance/module/home/repeat/a/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/d/g<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nanocred/finance/module/home/repeat/a/b;


# direct methods
.method constructor <init>(Lcom/nanocred/finance/module/home/repeat/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/nanocred/finance/module/home/repeat/a/e;->a:Lcom/nanocred/finance/module/home/repeat/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

#    :catch_0
    if-eqz p1, :cond_10

    .line 1
    check-cast p1, Lcom/nanocred/finance/module/util/FileException;

    .line 2
    iget-object v0, p0, Lcom/nanocred/finance/module/home/repeat/a/e;->a:Lcom/nanocred/finance/module/home/repeat/a/b;

    invoke-static {v0}, Lcom/nanocred/finance/module/home/repeat/a/b;->d(Lcom/nanocred/finance/module/home/repeat/a/b;)Lcom/nanocred/finance/module/home/repeat/a/o;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lcom/nanocred/finance/module/home/repeat/a/o;->a(Lcom/nanocred/finance/module/util/FileException;)V

    :cond_f
    :try_start_f
    return-void
#    :try_end_10
#    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_10} :catch_0

    .line 3
    :cond_10
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.nanocred.finance.module.util.FileException"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/nanocred/finance/module/home/repeat/a/e;->a(Ljava/lang/Throwable;)V

    return-void
.end method
