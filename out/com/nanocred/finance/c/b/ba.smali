.class final Lcom/nanocred/finance/c/b/ba;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nanocred/finance/c/b/ca;->a(Lcom/nanocred/finance/module/bean/responsebean/OrderData;Lcom/nanocred/finance/module/bean/responsebean/CouponActiveInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nanocred/finance/c/b/ca;


# direct methods
.method constructor <init>(Lcom/nanocred/finance/c/b/ca;)V
    .registers 2

    iput-object p1, p0, Lcom/nanocred/finance/c/b/ba;->a:Lcom/nanocred/finance/c/b/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/nanocred/finance/c/b/ba;->a:Lcom/nanocred/finance/c/b/ca;

    invoke-virtual {p1}, Lcom/nanocred/finance/c/b/t;->dismiss()V

    return-void
.end method
