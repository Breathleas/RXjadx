.class public abstract Landroid/support/v7/util/AsyncListUtil$ViewCallback;
.super Ljava/lang/Object;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewCallback"
.end annotation


# static fields
.field public static final HINT_SCROLL_ASC:I = 0x2

.field public static final HINT_SCROLL_DESC:I = 0x1

.field public static final HINT_SCROLL_NONE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public extendRangeInto([I[II)V
    .registers 10

    const/4 v0, 0x1

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x0

    aget v3, p1, v2

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    .line 2
    div-int/lit8 v3, v1, 0x2

    .line 3
    aget v4, p1, v2

    if-ne p3, v0, :cond_10

    move v5, v1

    goto :goto_11

    :cond_10
    move v5, v3

    :goto_11
    sub-int/2addr v4, v5

    aput v4, p2, v2

    .line 4
    aget p1, p1, v0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    add-int/2addr p1, v1

    aput p1, p2, v0

    return-void
.end method

.method public abstract getItemRangeInto([I)V
.end method

.method public abstract onDataRefresh()V
.end method

.method public abstract onItemLoaded(I)V
.end method
