.class final Lcom/nanocred/finance/module/ui/activity/ma;
.super Lkotlin/jvm/internal/Lambda;
.source "Paramount"

# interfaces
.implements Lkotlin/jvm/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nanocred/finance/module/ui/activity/ContactInfoActivity;->b(Lcom/nanocred/finance/module/bean/responsebean/Login$AccountProfileBean$ContactInfoBean;)V
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
.field final synthetic a:Lcom/nanocred/finance/module/ui/activity/ContactInfoActivity;


# direct methods
.method constructor <init>(Lcom/nanocred/finance/module/ui/activity/ContactInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nanocred/finance/module/ui/activity/ma;->a:Lcom/nanocred/finance/module/ui/activity/ContactInfoActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/nanocred/finance/module/ui/activity/ma;->invoke()V

    sget-object v0, Lkotlin/n;->a:Lkotlin/n;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/nanocred/finance/module/ui/activity/ma;->a:Lcom/nanocred/finance/module/ui/activity/ContactInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nanocred/finance/module/ui/activity/ContactInfoActivity;->b(Lcom/nanocred/finance/module/ui/activity/ContactInfoActivity;I)V

    return-void
.end method
