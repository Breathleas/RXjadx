.class public Landroid/support/v7/util/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroid/support/v7/util/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/util/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    .line 2
    iput-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    .line 3
    iput-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 4
    iput-object p4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 5
    iget-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([II)V

    .line 6
    iget-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([II)V

    .line 7
    iput-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 8
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getOldListSize()I

    move-result p2

    iput p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 9
    invoke-virtual {p1}, Landroid/support/v7/util/DiffUtil$Callback;->getNewListSize()I

    move-result p1

    iput p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 10
    iput-boolean p5, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 11
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->addRootSnake()V

    .line 12
    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItems()V

    return-void
.end method

.method private addRootSnake()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/util/DiffUtil$Snake;

    :goto_13
    if-eqz v0, :cond_1d

    .line 2
    iget v2, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    if-nez v2, :cond_1d

    iget v0, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    if-eqz v0, :cond_31

    .line 3
    :cond_1d
    new-instance v0, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v0}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 4
    iput v1, v0, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 5
    iput v1, v0, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 6
    iput-boolean v1, v0, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 7
    iput v1, v0, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 8
    iput-boolean v1, v0, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 9
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_31
    return-void
.end method

.method private dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_8

    .line 2
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    return-void

    :cond_8
    const/4 v0, 0x1

    sub-int/2addr p4, v0

    :goto_a
    if-ltz p4, :cond_86

    .line 3
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int v2, p5, p4

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    if-eqz v1, :cond_6a

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4f

    const/16 v4, 0x8

    if-eq v1, v4, :cond_4f

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2b

    .line 4
    new-instance v1, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, v3}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 5
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown flag for pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p3, v1

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4f
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v4, v4, v2

    shr-int/lit8 v4, v4, 0x5

    .line 8
    invoke-static {p1, v4, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v5

    .line 9
    iget v5, v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    invoke-interface {p2, v5, p3}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    if-ne v1, v3, :cond_83

    .line 10
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 11
    invoke-virtual {v1, v4, v2}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-interface {p2, p3, v0, v1}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_83

    .line 13
    :cond_6a
    invoke-interface {p2, p3, v0}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 15
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_71

    :cond_83
    :goto_83
    add-int/lit8 p4, p4, -0x1

    goto :goto_a

    :cond_86
    return-void
.end method

.method private dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;",
            "Landroid/support/v7/util/ListUpdateCallback;",
            "III)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-nez v0, :cond_8

    .line 2
    invoke-interface {p2, p3, p4}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    return-void

    :cond_8
    const/4 v0, 0x1

    sub-int/2addr p4, v0

    :goto_a
    if-ltz p4, :cond_91

    .line 3
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int v2, p5, p4

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    if-eqz v1, :cond_72

    const/4 v3, 0x4

    if-eq v1, v3, :cond_50

    const/16 v4, 0x8

    if-eq v1, v4, :cond_50

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2c

    .line 4
    new-instance v1, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    add-int v3, p3, p4

    invoke-direct {v1, v2, v3, v0}, Landroid/support/v7/util/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    .line 5
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown flag for pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p3, v1

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_50
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v4, v4, v2

    shr-int/lit8 v4, v4, 0x5

    const/4 v5, 0x0

    .line 8
    invoke-static {p1, v4, v5}, Landroid/support/v7/util/DiffUtil$DiffResult;->removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    move-result-object v5

    add-int v6, p3, p4

    .line 9
    iget v7, v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v7, v0

    invoke-interface {p2, v6, v7}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    if-ne v1, v3, :cond_8d

    .line 10
    iget v1, v5, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v1, v0

    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 11
    invoke-virtual {v3, v2, v4}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v2

    .line 12
    invoke-interface {p2, v1, v0, v2}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_8d

    :cond_72
    add-int v1, p3, p4

    .line 13
    invoke-interface {p2, v1, v0}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 15
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    goto :goto_7b

    :cond_8d
    :goto_8d
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_a

    :cond_91
    return-void
.end method

.method private findAddition(III)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    return-void
.end method

.method private findMatchingItem(IIIZ)Z
    .registers 13

    if-eqz p4, :cond_7

    add-int/lit8 p2, p2, -0x1

    move v0, p1

    move v1, p2

    goto :goto_a

    :cond_7
    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_a
    if-ltz p3, :cond_7a

    .line 1
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$Snake;

    .line 2
    iget v3, v2, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v4, v2, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v3, v4

    .line 3
    iget v5, v2, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v5, v4

    const/16 v4, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz p4, :cond_4a

    sub-int/2addr v0, v7

    :goto_23
    if-lt v0, v3, :cond_73

    .line 4
    iget-object p2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 5
    iget-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v4, 0x4

    .line 6
    :goto_37
    iget-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 p2, v0, 0x5

    or-int/lit8 p2, p2, 0x10

    aput p2, p1, v1

    .line 7
    iget-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 p2, v1, 0x5

    or-int/2addr p2, v4

    aput p2, p1, v0

    return v7

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_4a
    sub-int/2addr p2, v7

    :goto_4b
    if-lt p2, v5, :cond_73

    .line 8
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 9
    iget-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    invoke-virtual {p3, v1, p2}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result p3

    if-eqz p3, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v4, 0x4

    .line 10
    :goto_5f
    iget-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    sub-int/2addr p1, v7

    shl-int/lit8 p4, p2, 0x5

    or-int/lit8 p4, p4, 0x10

    aput p4, p3, p1

    .line 11
    iget-object p3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v4

    aput p1, p3, p2

    return v7

    :cond_70
    add-int/lit8 p2, p2, -0x1

    goto :goto_4b

    .line 12
    :cond_73
    iget v0, v2, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 13
    iget p2, v2, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 p3, p3, -0x1

    goto :goto_a

    :cond_7a
    const/4 p1, 0x0

    return p1
.end method

.method private findMatchingItems()V
    .registers 10

    .line 1
    iget v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 2
    iget v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 3
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_c
    if-ltz v2, :cond_60

    .line 4
    iget-object v4, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/util/DiffUtil$Snake;

    .line 5
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v6, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    add-int/2addr v5, v6

    .line 6
    iget v7, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v7, v6

    .line 7
    iget-boolean v6, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mDetectMoves:Z

    if-eqz v6, :cond_32

    :goto_22
    if-le v0, v5, :cond_2a

    .line 8
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/util/DiffUtil$DiffResult;->findAddition(III)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_2a
    :goto_2a
    if-le v1, v7, :cond_32

    .line 9
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/util/DiffUtil$DiffResult;->findRemoval(III)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_32
    const/4 v0, 0x0

    .line 10
    :goto_33
    iget v1, v4, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    if-ge v0, v1, :cond_59

    .line 11
    iget v1, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int/2addr v1, v0

    .line 12
    iget v5, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v5, v0

    .line 13
    iget-object v6, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    .line 14
    invoke-virtual {v6, v1, v5}, Landroid/support/v7/util/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v6

    if-eqz v6, :cond_47

    const/4 v6, 0x1

    goto :goto_48

    :cond_47
    const/4 v6, 0x2

    .line 15
    :goto_48
    iget-object v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    shl-int/lit8 v8, v5, 0x5

    or-int/2addr v8, v6

    aput v8, v7, v1

    .line 16
    iget-object v7, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v6

    aput v1, v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 17
    :cond_59
    iget v0, v4, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 18
    iget v1, v4, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_60
    return-void
.end method

.method private findRemoval(III)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->findMatchingItem(IIIZ)Z

    return-void
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Landroid/support/v7/util/DiffUtil$PostponedUpdate;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroid/support/v7/util/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_36

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    .line 3
    iget v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    if-ne v3, p1, :cond_33

    iget-boolean v3, v2, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    if-ne v3, p2, :cond_33

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_32

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/util/DiffUtil$PostponedUpdate;

    iget v3, p1, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    if-eqz p2, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, -0x1

    :goto_2c
    add-int/2addr v3, v4

    iput v3, p1, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_32
    return-object v2

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .registers 5

    if-ltz p1, :cond_12

    .line 1
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    array-length v1, v0

    if-ge p1, v1, :cond_12

    .line 2
    aget p1, v0, p1

    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_f

    const/4 p1, -0x1

    return p1

    :cond_f
    shr-int/lit8 p1, p1, 0x5

    return p1

    .line 3
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", new list size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewItemStatuses:[I

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertOldPositionToNew(I)I
    .registers 5

    if-ltz p1, :cond_12

    .line 1
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    array-length v1, v0

    if-ge p1, v1, :cond_12

    .line 2
    aget p1, v0, p1

    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_f

    const/4 p1, -0x1

    return p1

    :cond_f
    shr-int/lit8 p1, p1, 0x5

    return p1

    .line 3
    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of bounds - passed position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", old list size = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V
    .registers 16

    .line 2
    instance-of v0, p1, Landroid/support/v7/util/BatchingListUpdateCallback;

    if-eqz v0, :cond_7

    .line 3
    check-cast p1, Landroid/support/v7/util/BatchingListUpdateCallback;

    goto :goto_d

    .line 4
    :cond_7
    new-instance v0, Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-direct {v0, p1}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    move-object p1, v0

    .line 5
    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldListSize:I

    .line 7
    iget v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mNewListSize:I

    .line 8
    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    move v9, v2

    move v8, v3

    :goto_20
    if-ltz v8, :cond_77

    .line 9
    iget-object v2, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/support/v7/util/DiffUtil$Snake;

    .line 10
    iget v11, v10, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 11
    iget v2, v10, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v12, v2, v11

    .line 12
    iget v2, v10, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int v13, v2, v11

    if-ge v12, v1, :cond_41

    sub-int v5, v1, v12

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, v12

    move v6, v12

    .line 13
    invoke-direct/range {v1 .. v6}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchRemovals(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    :cond_41
    if-ge v13, v9, :cond_4d

    sub-int v5, v9, v13

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, v12

    move v6, v13

    .line 14
    invoke-direct/range {v1 .. v6}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchAdditions(Ljava/util/List;Landroid/support/v7/util/ListUpdateCallback;III)V

    :cond_4d
    add-int/lit8 v11, v11, -0x1

    :goto_4f
    if-ltz v11, :cond_70

    .line 15
    iget-object v1, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget v2, v10, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    add-int v3, v2, v11

    aget v1, v1, v3

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6d

    add-int v1, v2, v11

    .line 16
    iget-object v3, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mCallback:Landroid/support/v7/util/DiffUtil$Callback;

    add-int/2addr v2, v11

    iget v4, v10, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/2addr v4, v11

    .line 17
    invoke-virtual {v3, v2, v4}, Landroid/support/v7/util/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v2

    .line 18
    invoke-virtual {p1, v1, v7, v2}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_6d
    add-int/lit8 v11, v11, -0x1

    goto :goto_4f

    .line 19
    :cond_70
    iget v1, v10, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 20
    iget v9, v10, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    add-int/lit8 v8, v8, -0x1

    goto :goto_20

    .line 21
    :cond_77
    invoke-virtual {p1}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method

.method public dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/support/v7/util/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroid/support/v7/util/AdapterListUpdateCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/util/ListUpdateCallback;)V

    return-void
.end method

.method getSnakes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/util/DiffUtil$Snake;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v7/util/DiffUtil$DiffResult;->mSnakes:Ljava/util/List;

    return-object v0
.end method
