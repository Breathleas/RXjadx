.class public Lbolts/ExecutorException;
.super Ljava/lang/RuntimeException;
.source "Paramount"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, "An exception was thrown by an Executor"

    .line 1
    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method
