.class public final Lcom/google/android/gms/tasks/h;
.super Ljava/lang/Object;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tasks/h$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    new-instance v0, Lcom/google/android/gms/tasks/h$a;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/h;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tasks/x;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/h;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
