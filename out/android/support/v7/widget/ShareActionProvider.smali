.class public Landroid/support/v7/widget/ShareActionProvider;
.super Landroid/support/v4/view/ActionProvider;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;,
        Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/view/ActionProvider;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 3
    new-instance v0, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    const-string v0, "share_history.xml"

    .line 4
    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v0, :cond_10

    .line 3
    new-instance v0, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/support/v7/widget/ShareActionProvider;)V

    iput-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 4
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;)V

    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .registers 6

    .line 1
    new-instance v0, Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->setActivityChooserModel(Landroid/support/v7/widget/ActivityChooserModel;)V

    .line 5
    :cond_18
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 6
    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionModeShareDrawable:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 7
    iget-object v2, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2, v1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActivityChooserView;->setProvider(Landroid/support/v4/view/ActionProvider;)V

    .line 10
    sget v1, Landroid/support/v7/appcompat/R$string;->abc_shareactionprovider_share_with_application:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 11
    sget v1, Landroid/support/v7/appcompat/R$string;->abc_shareactionprovider_share_with:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .registers 10

    .line 1
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserModel;->getActivityCount()I

    move-result v2

    .line 5
    iget v3, p0, Landroid/support/v7/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v3, :cond_3b

    .line 6
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 7
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v4, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 8
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 9
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_3b
    if-ge v3, v2, :cond_68

    .line 10
    iget-object v5, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    sget v6, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    .line 11
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-interface {p1, v4, v3, v3, v5}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    const/4 v3, 0x0

    :goto_4a
    if-ge v3, v2, :cond_68

    .line 13
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 14
    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p1, v4, v3, v3, v6}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 15
    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/support/v7/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 16
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_68
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/support/v7/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_19

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3
    :cond_16
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ShareActionProvider;->updateIntent(Landroid/content/Intent;)V

    .line 4
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method updateIntent(Landroid/content/Intent;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    const/high16 v0, 0x8080000

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_11

    :cond_c
    const/high16 v0, 0x80000

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_11
    return-void
.end method
