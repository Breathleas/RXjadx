.class final Lcom/google/android/gms/internal/measurement/Pa;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/measurement/sc;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/internal/measurement/Ia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/Ia;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Pa;->d:Lcom/google/android/gms/internal/measurement/Ia;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/Pa;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/Pa;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/Pa;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Pa;->d:Lcom/google/android/gms/internal/measurement/Ia;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Ia;->a(Lcom/google/android/gms/internal/measurement/Ia;)Lcom/google/android/gms/internal/measurement/kc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/kc;->o()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/Pa;->d:Lcom/google/android/gms/internal/measurement/Ia;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/Ia;->a(Lcom/google/android/gms/internal/measurement/Ia;)Lcom/google/android/gms/internal/measurement/kc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/kc;->k()Lcom/google/android/gms/internal/measurement/F;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Pa;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/Pa;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/Pa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/F;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
