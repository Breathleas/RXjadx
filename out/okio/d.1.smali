.class final Lokio/d;
.super Ljava/lang/Object;
.source "Paramount"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    const/16 v0, 0x40

    .line 1
    new-array v1, v0, [B

    fill-array-data v1, :array_14

    sput-object v1, Lokio/d;->a:[B

    .line 2
    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Lokio/d;->b:[B

    return-void

    :array_14
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_38
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .registers 2

    .line 16
    sget-object v0, Lokio/d;->a:[B

    invoke-static {p0, v0}, Lokio/d;->a([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B[B)Ljava/lang/String;
    .registers 11

    .line 17
    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 18
    new-array v0, v0, [B

    .line 19
    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v3, v2, :cond_53

    add-int/lit8 v5, v4, 0x1

    .line 20
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v1

    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    .line 21
    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v3, 0x1

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v6, v8

    aget-byte v6, p1, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v4, 0x1

    .line 22
    aget-byte v6, p0, v7

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v1

    add-int/lit8 v7, v3, 0x2

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    .line 23
    aget-byte v6, p0, v7

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, p1, v6

    aput-byte v6, v0, v5

    add-int/lit8 v3, v3, 0x3

    goto :goto_10

    .line 24
    :cond_53
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-eq v3, v6, :cond_8b

    if-eq v3, v1, :cond_5e

    goto :goto_a9

    :cond_5e
    add-int/lit8 v3, v4, 0x1

    .line 25
    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v1

    aget-byte v7, p1, v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v3, 0x1

    .line 26
    aget-byte v7, p0, v2

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v2, v6

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v6, v7

    aget-byte v6, p1, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v4, 0x1

    .line 27
    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    aget-byte p0, p1, p0

    aput-byte p0, v0, v4

    .line 28
    aput-byte v5, v0, v3

    goto :goto_a9

    :cond_8b
    add-int/lit8 v3, v4, 0x1

    .line 29
    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x2

    aget-byte v1, p1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v1, v3, 0x1

    .line 30
    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, p1, p0

    aput-byte p0, v0, v3

    add-int/lit8 p0, v1, 0x1

    .line 31
    aput-byte v5, v0, v1

    .line 32
    aput-byte v5, v0, p0

    .line 33
    :goto_a9
    :try_start_a9
    new-instance p0, Ljava/lang/String;

    const-string p1, "US-ASCII"

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a9 .. :try_end_b0} :catch_b1

    return-object p0

    :catch_b1
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 15

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v0, :cond_24

    add-int/lit8 v5, v0, -0x1

    .line 2
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_21

    if-eq v5, v4, :cond_21

    if-eq v5, v3, :cond_21

    if-eq v5, v2, :cond_21

    if-eq v5, v1, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_24
    :goto_24
    int-to-long v5, v0

    const-wide/16 v7, 0x6

    mul-long v5, v5, v7

    const-wide/16 v7, 0x8

    .line 3
    div-long/2addr v5, v7

    long-to-int v6, v5

    new-array v5, v6, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_34
    const/4 v11, 0x0

    if-ge v7, v0, :cond_9e

    .line 4
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x41

    if-lt v12, v13, :cond_46

    const/16 v13, 0x5a

    if-gt v12, v13, :cond_46

    add-int/lit8 v12, v12, -0x41

    goto :goto_7d

    :cond_46
    const/16 v13, 0x61

    if-lt v12, v13, :cond_51

    const/16 v13, 0x7a

    if-gt v12, v13, :cond_51

    add-int/lit8 v12, v12, -0x47

    goto :goto_7d

    :cond_51
    const/16 v13, 0x30

    if-lt v12, v13, :cond_5c

    const/16 v13, 0x39

    if-gt v12, v13, :cond_5c

    add-int/lit8 v12, v12, 0x4

    goto :goto_7d

    :cond_5c
    const/16 v13, 0x2b

    if-eq v12, v13, :cond_7b

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_65

    goto :goto_7b

    :cond_65
    const/16 v13, 0x2f

    if-eq v12, v13, :cond_78

    const/16 v13, 0x5f

    if-ne v12, v13, :cond_6e

    goto :goto_78

    :cond_6e
    if-eq v12, v4, :cond_9b

    if-eq v12, v3, :cond_9b

    if-eq v12, v2, :cond_9b

    if-ne v12, v1, :cond_77

    goto :goto_9b

    :cond_77
    return-object v11

    :cond_78
    :goto_78
    const/16 v12, 0x3f

    goto :goto_7d

    :cond_7b
    :goto_7b
    const/16 v12, 0x3e

    :goto_7d
    shl-int/lit8 v9, v9, 0x6

    int-to-byte v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    .line 5
    rem-int/lit8 v11, v8, 0x4

    if-nez v11, :cond_9b

    add-int/lit8 v11, v10, 0x1

    shr-int/lit8 v12, v9, 0x10

    int-to-byte v12, v12

    .line 6
    aput-byte v12, v5, v10

    add-int/lit8 v10, v11, 0x1

    shr-int/lit8 v12, v9, 0x8

    int-to-byte v12, v12

    .line 7
    aput-byte v12, v5, v11

    add-int/lit8 v11, v10, 0x1

    int-to-byte v12, v9

    .line 8
    aput-byte v12, v5, v10

    move v10, v11

    :cond_9b
    :goto_9b
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 9
    :cond_9e
    rem-int/lit8 v8, v8, 0x4

    const/4 p0, 0x1

    if-ne v8, p0, :cond_a4

    return-object v11

    :cond_a4
    const/4 p0, 0x2

    if-ne v8, p0, :cond_b2

    shl-int/lit8 p0, v9, 0xc

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 10
    aput-byte p0, v5, v10

    move v10, v0

    goto :goto_c5

    :cond_b2
    const/4 p0, 0x3

    if-ne v8, p0, :cond_c5

    shl-int/lit8 p0, v9, 0x6

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 11
    aput-byte v1, v5, v10

    add-int/lit8 v10, v0, 0x1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 12
    aput-byte p0, v5, v0

    .line 13
    :cond_c5
    :goto_c5
    array-length p0, v5

    if-ne v10, p0, :cond_c9

    return-object v5

    .line 14
    :cond_c9
    new-array p0, v10, [B

    .line 15
    invoke-static {v5, v6, p0, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lokio/d;->b:[B

    invoke-static {p0, v0}, Lokio/d;->a([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
