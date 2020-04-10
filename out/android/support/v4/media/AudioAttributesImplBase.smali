.class Landroid/support/v4/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Landroid/support/v4/media/AudioAttributesImpl;


# instance fields
.field mContentType:I

.field mFlags:I

.field mLegacyStream:I

.field mUsage:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 3
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 4
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return-void
.end method

.method constructor <init>(IIII)V
    .registers 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 8
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 9
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 11
    iput p1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 12
    iput p2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 13
    iput p3, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 14
    iput p4, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/AudioAttributesImpl;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    const-string v1, "android.support.v4.media.audio_attrs.USAGE"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.support.v4.media.audio_attrs.CONTENT_TYPE"

    .line 2
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.support.v4.media.audio_attrs.FLAGS"

    .line 3
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, -0x1

    const-string v4, "android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE"

    .line 4
    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 5
    new-instance v3, Landroid/support/v4/media/AudioAttributesImplBase;

    invoke-direct {v3, v2, v0, v1, p0}, Landroid/support/v4/media/AudioAttributesImplBase;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Landroid/support/v4/media/AudioAttributesImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    check-cast p1, Landroid/support/v4/media/AudioAttributesImplBase;

    .line 3
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesImplBase;->getContentType()I

    move-result v2

    if-ne v0, v2, :cond_27

    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesImplBase;->getFlags()I

    move-result v2

    if-ne v0, v2, :cond_27

    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/media/AudioAttributesImplBase;->getUsage()I

    move-result v2

    if-ne v0, v2, :cond_27

    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    iget p1, p1, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    if-ne v0, p1, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public getAudioAttributes()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .registers 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .registers 4

    .line 1
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesImplBase;->getLegacyStreamType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    or-int/lit8 v0, v0, 0x4

    goto :goto_11

    :cond_c
    const/4 v2, 0x7

    if-ne v1, v2, :cond_11

    or-int/lit8 v0, v0, 0x1

    :cond_11
    :goto_11
    and-int/lit16 v0, v0, 0x111

    return v0
.end method

.method public getLegacyStreamType()I
    .registers 4

    .line 1
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public getRawLegacyStreamType()I
    .registers 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return v0
.end method

.method public getUsage()I
    .registers 2

    .line 1
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    return v0
.end method

.method public getVolumeControlStream()I
    .registers 4

    .line 1
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    const-string v2, "android.support.v4.media.audio_attrs.USAGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    const-string v2, "android.support.v4.media.audio_attrs.CONTENT_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    const-string v2, "android.support.v4.media.audio_attrs.FLAGS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    const-string v2, "android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_24
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    const-string v1, " stream="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derived"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v1, " usage="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 6
    invoke-static {v1}, Landroid/support/v4/media/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
