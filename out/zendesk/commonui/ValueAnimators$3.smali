.class final Lzendesk/commonui/ValueAnimators$3;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/commonui/ValueAnimators;->sideMarginsAnimator(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$params:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lzendesk/commonui/ValueAnimators$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p2, p0, Lzendesk/commonui/ValueAnimators$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1
#    :catch_0
    iget-object v0, p0, Lzendesk/commonui/ValueAnimators$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2
    iget-object v0, p0, Lzendesk/commonui/ValueAnimators$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3
    iget-object p1, p0, Lzendesk/commonui/ValueAnimators$3;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :try_start_21
    return-void
#    :try_end_22
#    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_22} :catch_0
.end method
