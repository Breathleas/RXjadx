.class final La/a/a/a/b;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-static {}, La/a/a/a/c;->b()La/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/a/a/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
