.class public Landroid/support/v4/app/Person$Builder;
.super Ljava/lang/Object;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

.field mIsBot:Z

.field mIsImportant:Z

.field mKey:Ljava/lang/String;

.field mName:Ljava/lang/CharSequence;

.field mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Person;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Landroid/support/v4/app/Person;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p1, Landroid/support/v4/app/Person;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 5
    iget-object v0, p1, Landroid/support/v4/app/Person;->mUri:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->mUri:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Landroid/support/v4/app/Person;->mKey:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/Person$Builder;->mKey:Ljava/lang/String;

    .line 7
    iget-boolean v0, p1, Landroid/support/v4/app/Person;->mIsBot:Z

    iput-boolean v0, p0, Landroid/support/v4/app/Person$Builder;->mIsBot:Z

    .line 8
    iget-boolean p1, p1, Landroid/support/v4/app/Person;->mIsImportant:Z

    iput-boolean p1, p0, Landroid/support/v4/app/Person$Builder;->mIsImportant:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/app/Person;
    .registers 2

    .line 1
    new-instance v0, Landroid/support/v4/app/Person;

    invoke-direct {v0, p0}, Landroid/support/v4/app/Person;-><init>(Landroid/support/v4/app/Person$Builder;)V

    return-object v0
.end method

.method public setBot(Z)Landroid/support/v4/app/Person$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/app/Person$Builder;->mIsBot:Z

    return-object p0
.end method

.method public setIcon(Landroid/support/v4/graphics/drawable/IconCompat;)Landroid/support/v4/app/Person$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setImportant(Z)Landroid/support/v4/app/Person$Builder;
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/app/Person$Builder;->mIsImportant:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Landroid/support/v4/app/Person$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Landroid/support/v4/app/Person$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Landroid/support/v4/app/Person$Builder;->mUri:Ljava/lang/String;

    return-object p0
.end method
