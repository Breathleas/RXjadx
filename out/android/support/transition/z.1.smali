.class public Landroid/support/transition/z;
.super Landroid/support/v4/app/FragmentTransitionImpl;
.source "Paramount"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransitionImpl;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method

.method private static a(Landroid/support/transition/Transition;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/support/transition/Transition;->j()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionImpl;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {p0}, Landroid/support/transition/Transition;->k()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionImpl;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3
    invoke-virtual {p0}, Landroid/support/transition/Transition;->l()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/app/FragmentTransitionImpl;->isNullOrEmpty(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    check-cast p1, Landroid/support/transition/Transition;

    .line 2
    invoke-virtual {p1, p2}, Landroid/support/transition/Transition;->a(Landroid/view/View;)Landroid/support/transition/Transition;

    :cond_7
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/transition/Transition;

    if-nez p1, :cond_5

    return-void

    .line 2
    :cond_5
    instance-of v0, p1, Landroid/support/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3
    check-cast p1, Landroid/support/transition/TransitionSet;

    .line 4
    invoke-virtual {p1}, Landroid/support/transition/TransitionSet;->r()I

    move-result v0

    :goto_10
    if-ge v1, v0, :cond_3e

    .line 5
    invoke-virtual {p1, v1}, Landroid/support/transition/TransitionSet;->a(I)Landroid/support/transition/Transition;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2, p2}, Landroid/support/transition/z;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 7
    :cond_1c
    invoke-static {p1}, Landroid/support/transition/z;->a(Landroid/support/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 8
    invoke-virtual {p1}, Landroid/support/transition/Transition;->m()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionImpl;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_30
    if-ge v1, v0, :cond_3e

    .line 11
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/support/transition/Transition;->a(Landroid/view/View;)Landroid/support/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_3e
    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Landroid/support/transition/Transition;

    invoke-static {p1, p2}, Landroid/support/transition/da;->a(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Landroid/support/transition/Transition;

    return p1
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    check-cast p1, Landroid/support/transition/Transition;

    invoke-virtual {p1}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Landroid/support/transition/Transition;

    .line 2
    check-cast p2, Landroid/support/transition/Transition;

    .line 3
    check-cast p3, Landroid/support/transition/Transition;

    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1d

    .line 4
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object p1

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/support/transition/TransitionSet;->b(I)Landroid/support/transition/TransitionSet;

    move-result-object p1

    goto :goto_25

    :cond_1d
    if-eqz p1, :cond_20

    goto :goto_25

    :cond_20
    if-eqz p2, :cond_24

    move-object p1, p2

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    if-eqz p3, :cond_35

    .line 8
    new-instance p2, Landroid/support/transition/TransitionSet;

    invoke-direct {p2}, Landroid/support/transition/TransitionSet;-><init>()V

    if-eqz p1, :cond_31

    .line 9
    invoke-virtual {p2, p1}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 10
    :cond_31
    invoke-virtual {p2, p3}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    return-object p2

    :cond_35
    return-object p1
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    if-eqz p1, :cond_c

    .line 2
    check-cast p1, Landroid/support/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    :cond_c
    if-eqz p2, :cond_13

    .line 3
    check-cast p2, Landroid/support/transition/Transition;

    invoke-virtual {v0, p2}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    :cond_13
    if-eqz p3, :cond_1a

    .line 4
    check-cast p3, Landroid/support/transition/Transition;

    invoke-virtual {v0, p3}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    :cond_1a
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    check-cast p1, Landroid/support/transition/Transition;

    .line 2
    invoke-virtual {p1, p2}, Landroid/support/transition/Transition;->d(Landroid/view/View;)Landroid/support/transition/Transition;

    :cond_7
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/transition/Transition;

    .line 2
    instance-of v0, p1, Landroid/support/transition/TransitionSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 3
    check-cast p1, Landroid/support/transition/TransitionSet;

    .line 4
    invoke-virtual {p1}, Landroid/support/transition/TransitionSet;->r()I

    move-result v0

    :goto_d
    if-ge v1, v0, :cond_5d

    .line 5
    invoke-virtual {p1, v1}, Landroid/support/transition/TransitionSet;->a(I)Landroid/support/transition/Transition;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2, p2, p3}, Landroid/support/transition/z;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 7
    :cond_19
    invoke-static {p1}, Landroid/support/transition/z;->a(Landroid/support/transition/Transition;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 8
    invoke-virtual {p1}, Landroid/support/transition/Transition;->m()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_5d

    .line 10
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5d

    if-nez p3, :cond_37

    const/4 v0, 0x0

    goto :goto_3b

    .line 11
    :cond_37
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3b
    if-ge v1, v0, :cond_49

    .line 12
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/support/transition/Transition;->a(Landroid/view/View;)Landroid/support/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 13
    :cond_49
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_4f
    if-ltz p3, :cond_5d

    .line 14
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->d(Landroid/view/View;)Landroid/support/transition/Transition;

    add-int/lit8 p3, p3, -0x1

    goto :goto_4f

    :cond_5d
    return-void
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/transition/Transition;

    .line 2
    new-instance v0, Landroid/support/transition/w;

    invoke-direct {v0, p0, p2, p3}, Landroid/support/transition/w;-><init>(Landroid/support/transition/z;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;

    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 2
    new-instance v9, Landroid/support/transition/x;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroid/support/transition/x;-><init>(Landroid/support/transition/z;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$c;)Landroid/support/transition/Transition;

    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 5
    check-cast p1, Landroid/support/transition/Transition;

    .line 6
    new-instance v0, Landroid/support/transition/y;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/y;-><init>(Landroid/support/transition/z;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$b;)V

    :cond_c
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    if-eqz p2, :cond_14

    .line 1
    check-cast p1, Landroid/support/transition/Transition;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    new-instance p2, Landroid/support/transition/v;

    invoke-direct {p2, p0, v0}, Landroid/support/transition/v;-><init>(Landroid/support/transition/z;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Landroid/support/transition/Transition;->a(Landroid/support/transition/Transition$b;)V

    :cond_14
    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/transition/TransitionSet;

    .line 2
    invoke-virtual {p1}, Landroid/support/transition/Transition;->m()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    .line 5
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6
    invoke-static {v0, v3}, Landroid/support/v4/app/FragmentTransitionImpl;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 7
    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, p1, p3}, Landroid/support/transition/z;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/support/transition/TransitionSet;

    if-eqz p1, :cond_15

    .line 2
    invoke-virtual {p1}, Landroid/support/transition/Transition;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p1}, Landroid/support/transition/Transition;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/transition/z;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_15
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 2
    check-cast p1, Landroid/support/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionSet;->a(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    return-object v0
.end method
