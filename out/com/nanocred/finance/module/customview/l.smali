.class final Lcom/nanocred/finance/module/customview/l;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nanocred/finance/module/customview/m;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nanocred/finance/module/customview/m;


# direct methods
.method constructor <init>(Lcom/nanocred/finance/module/customview/m;)V
    .registers 2

    iput-object p1, p0, Lcom/nanocred/finance/module/customview/l;->a:Lcom/nanocred/finance/module/customview/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/nanocred/finance/module/customview/l;->a:Lcom/nanocred/finance/module/customview/m;

    invoke-static {p1}, Lcom/nanocred/finance/module/customview/m;->a(Lcom/nanocred/finance/module/customview/m;)V

    return-void
.end method
