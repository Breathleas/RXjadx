.class final Lcom/nanocred/finance/module/message/s;
.super Lkotlin/jvm/internal/Lambda;
.source "Paramount"

# interfaces
.implements Lkotlin/jvm/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nanocred/finance/module/message/t;->a(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/nanocred/finance/module/message/t;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nanocred/finance/module/message/t;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/nanocred/finance/module/message/s;->a:Lcom/nanocred/finance/module/message/t;

    iput-object p2, p0, Lcom/nanocred/finance/module/message/s;->b:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/nanocred/finance/module/message/s;->a:Lcom/nanocred/finance/module/message/t;

    invoke-static {p1}, Lcom/nanocred/finance/module/message/t;->a(Lcom/nanocred/finance/module/message/t;)Lcom/nanocred/finance/module/message/n;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/nanocred/finance/module/message/n;->X()V

    :cond_10
    :try_start_10
    return-void
#    :try_end_11
#    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_11} :catch_0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/nanocred/finance/module/message/s;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/n;->a:Lkotlin/n;

    return-object p1
.end method
