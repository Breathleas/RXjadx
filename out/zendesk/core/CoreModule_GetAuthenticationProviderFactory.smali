.class public final Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;
.super Ljava/lang/Object;
.source "Paramount"

# interfaces
.implements Lc/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/b<",
        "Lzendesk/core/AuthenticationProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/core/CoreModule;


# direct methods
.method public constructor <init>(Lzendesk/core/CoreModule;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    .line 2
    iput-object p1, p0, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->module:Lzendesk/core/CoreModule;

    return-void
.end method

.method public static create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;
    .registers 2

    .line 1
    new-instance v0, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;-><init>(Lzendesk/core/CoreModule;)V

    return-object v0
.end method

.method public static getAuthenticationProvider(Lzendesk/core/CoreModule;)Lzendesk/core/AuthenticationProvider;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lzendesk/core/CoreModule;->getAuthenticationProvider()Lzendesk/core/AuthenticationProvider;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lc/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lzendesk/core/AuthenticationProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->get()Lzendesk/core/AuthenticationProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/AuthenticationProvider;
    .registers 2

    .line 2
    iget-object v0, p0, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->module:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->getAuthenticationProvider(Lzendesk/core/CoreModule;)Lzendesk/core/AuthenticationProvider;

    move-result-object v0

    return-object v0
.end method
