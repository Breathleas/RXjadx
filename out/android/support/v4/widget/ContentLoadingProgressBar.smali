.class public Landroid/support/v4/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "Paramount"


# static fields
.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field mDismissed:Z

.field mPostedHide:Z

.field mPostedShow:Z

.field mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 5
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 6
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 7
    new-instance p1, Landroid/support/v4/widget/ContentLoadingProgressBar$1;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/ContentLoadingProgressBar$1;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    .line 8
    new-instance p1, Landroid/support/v4/widget/ContentLoadingProgressBar$2;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/ContentLoadingProgressBar$2;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    return-void
.end method

.method private removeCallbacks()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized hide()V
    .registers 11

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_2
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 2
    iget-object v1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_2f

    .line 5
    iget-wide v5, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_22

    goto :goto_2f

    .line 6
    :cond_22
    iget-boolean v5, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    if-nez v5, :cond_34

    .line 7
    iget-object v5, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    sub-long/2addr v3, v1

    invoke-virtual {p0, v5, v3, v4}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    goto :goto_34

    :cond_2f
    :goto_2f
    const/16 v0, 0x8

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_36

    .line 10
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks()V

    return-void
.end method

.method public declared-synchronized show()V
    .registers 4

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 1
    :try_start_3
    iput-wide v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    .line 3
    iget-object v1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedHide:Z

    .line 5
    iget-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z

    if-nez v0, :cond_1d

    .line 6
    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 8
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
