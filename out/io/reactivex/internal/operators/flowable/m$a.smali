.class final Lio/reactivex/internal/operators/flowable/m$a;
.super Lio/reactivex/internal/subscribers/a;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscribers/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final f:Lio/reactivex/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/d/h<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/e/b/a;Lio/reactivex/d/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/b/a<",
            "-TU;>;",
            "Lio/reactivex/d/h<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscribers/a;-><init>(Lio/reactivex/e/b/a;)V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/m$a;->f:Lio/reactivex/d/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/a;->d:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    :try_start_6
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m$a;->f:Lio/reactivex/d/h;

    invoke-interface {v0, p1}, Lio/reactivex/d/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, Lio/reactivex/e/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_11} :catch_18

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->a:Lio/reactivex/e/b/a;

    invoke-interface {v0, p1}, Lio/reactivex/e/b/a;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catch_18
    move-exception p1

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/subscribers/a;->d:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget v0, p0, Lio/reactivex/internal/subscribers/a;->e:I

    if-eqz v0, :cond_10

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/subscribers/a;->a:Lio/reactivex/e/b/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/c;->onNext(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_10
    :try_start_10
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/m$a;->f:Lio/reactivex/d/h;

    invoke-interface {v0, p1}, Lio/reactivex/d/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper function returned a null value."

    invoke-static {p1, v0}, Lio/reactivex/e/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1b} :catch_21

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->a:Lio/reactivex/e/b/a;

    invoke-interface {v0, p1}, Le/a/c;->onNext(Ljava/lang/Object;)V

    return-void

    :catch_21
    move-exception p1

    .line 6
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
#    :catch_0
    iget-object v0, p0, Lio/reactivex/internal/subscribers/a;->c:Lio/reactivex/e/b/h;

    invoke-interface {v0}, Lio/reactivex/e/b/k;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/m$a;->f:Lio/reactivex/d/h;

    invoke-interface {v1, v0}, Lio/reactivex/d/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper function returned a null value."

    invoke-static {v0, v1}, Lio/reactivex/e/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    :try_start_15
    return-object v0
#    :try_end_16
#    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_0
.end method

.method public requestFusion(I)I
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscribers/a;->a(I)I

    move-result p1

    return p1
.end method
