.class public final Lkotlin/jvm/internal/Ref$DoubleRef;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public element:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
