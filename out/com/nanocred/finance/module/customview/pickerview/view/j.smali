.class synthetic Lcom/nanocred/finance/module/customview/pickerview/view/j;
.super Ljava/lang/Object;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nanocred/finance/module/customview/pickerview/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    .line 1
    invoke-static {}, Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;->values()[Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nanocred/finance/module/customview/pickerview/view/j;->a:[I

    :try_start_c
    sget-object v0, Lcom/nanocred/finance/module/customview/pickerview/view/j;->a:[I

    sget-object v1, Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;->ALL:Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_17} :catch_17

    :catch_17
    :try_start_17
    sget-object v0, Lcom/nanocred/finance/module/customview/pickerview/view/j;->a:[I

    sget-object v1, Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;->YEAR_MONTH_DAY:Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v0, Lcom/nanocred/finance/module/customview/pickerview/view/j;->a:[I

    sget-object v1, Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;->HOURS_MINS:Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2d
    sget-object v0, Lcom/nanocred/finance/module/customview/pickerview/view/j;->a:[I

    sget-object v1, Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;->MONTH_DAY_HOUR_MIN:Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    sget-object v0, Lcom/nanocred/finance/module/customview/pickerview/view/j;->a:[I

    sget-object v1, Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;->YEAR_MONTH:Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/nanocred/finance/module/customview/pickerview/view/j;->a:[I

    sget-object v1, Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;->YEAR_MONTH_DAY_HOUR_MIN:Lcom/nanocred/finance/module/customview/pickerview/view/TimePickerView$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4e

    :catch_4e
    return-void
.end method
