.class public final Lzendesk/core/ZendeskNetworkModule_Proxy;
.super Ljava/lang/Object;
.source "Paramount"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method

.method public static newInstance()Lzendesk/core/ZendeskNetworkModule;
    .registers 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskNetworkModule;

    invoke-direct {v0}, Lzendesk/core/ZendeskNetworkModule;-><init>()V

    return-object v0
.end method
