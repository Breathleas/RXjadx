.class public final Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;
.super Lcom/nanocred/finance/module/home/statement/BaseStatementFragment;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nanocred/finance/module/home/statement/BaseStatementFragment<",
        "Lcom/nanocred/finance/base/ui/e;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/nanocred/finance/module/home/statement/BaseStatementFragment;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method

.method public static final synthetic a(Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/nanocred/finance/base/ui/BaseDotFragment;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected N()V
    .registers 2

    .line 1
#    :catch_0
    new-instance v0, Lcom/nanocred/finance/base/ui/e;

    invoke-direct {v0}, Lcom/nanocred/finance/base/ui/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/nanocred/finance/base/ui/BaseFragment;->a(Lcom/nanocred/finance/base/ui/d;)V

    :try_start_8
    return-void
#    :try_end_9
#    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9} :catch_0
.end method

.method public X()V
    .registers 6

    .line 1
#    :catch_0
    invoke-virtual {p0}, Lcom/nanocred/finance/base/ui/BaseDotFragment;->ca()V

    .line 2
    sget-object v0, Lcom/nanocred/finance/a/a/a;->a:Lcom/nanocred/finance/a/a/a$a;

    invoke-virtual {v0}, Lcom/nanocred/finance/a/a/a$a;->a()Lcom/nanocred/finance/a/a/a;

    move-result-object v0

    new-instance v1, Lcom/nanocred/finance/c/d/a;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, v4, v2}, Lcom/nanocred/finance/c/d/a;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/f;)V

    invoke-virtual {v0, v1}, Lcom/nanocred/finance/a/a/a;->a(Ljava/lang/Object;)V

    :try_start_14
    return-void
#    :try_end_15
#    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_0
.end method

.method public b(I)Landroid/view/View;
    .registers 4

#    :catch_0
    iget-object v0, p0, Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;->j:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;->j:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 p1, 0x0

    :try_start_20
    return-object p1
#    :try_end_21
#    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_21} :catch_0

    :cond_21
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v0
.end method

.method protected da()Ljava/lang/String;
    .registers 2

    const-string v0, "3031-3"

    return-object v0
.end method

.method protected ea()Ljava/lang/String;
    .registers 2

    const-string v0, "3031-1"

    return-object v0
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    return-void
.end method

.method public fa()Ljava/lang/String;
    .registers 2

    const-string v0, "3031"

    return-object v0
.end method

.method protected ga()Ljava/lang/String;
    .registers 2

    const-string v0, "3031-2"

    return-object v0
.end method

.method public ia()I
    .registers 2

    const v0, 0x7f110270

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

#    :catch_0
    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0094

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :try_start_d
    return-object p1
#    :try_end_e
#    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_e} :catch_0
.end method

.method public synthetic onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/nanocred/finance/module/home/statement/BaseStatementFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;->f()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

#    :catch_0
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/nanocred/finance/base/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/nanocred/finance/c;->tv_electric_continue:I

    invoke-virtual {p0, p1}, Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/nanocred/finance/module/home/statement/b;

    invoke-direct {p2, p0}, Lcom/nanocred/finance/module/home/statement/b;-><init>(Lcom/nanocred/finance/module/home/statement/KarzaElectricityDescFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_18
    return-void
#    :try_end_19
#    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_19} :catch_0
.end method
