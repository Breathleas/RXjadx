.class final Lcom/nanocred/finance/c/b/d;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nanocred/finance/c/b/c;->a(Lkotlin/jvm/a/a;)Lcom/nanocred/finance/c/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nanocred/finance/c/b/c;

.field final synthetic b:Lkotlin/jvm/a/a;


# direct methods
.method constructor <init>(Lcom/nanocred/finance/c/b/c;Lkotlin/jvm/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/nanocred/finance/c/b/d;->a:Lcom/nanocred/finance/c/b/c;

    iput-object p2, p0, Lcom/nanocred/finance/c/b/d;->b:Lkotlin/jvm/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/nanocred/finance/c/b/d;->a:Lcom/nanocred/finance/c/b/c;

    invoke-virtual {p1}, Lcom/nanocred/finance/c/b/t;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/nanocred/finance/c/b/d;->b:Lkotlin/jvm/a/a;

    invoke-interface {p1}, Lkotlin/jvm/a/a;->invoke()Ljava/lang/Object;

    return-void
.end method
