.class public Lin/gov/mgov/jh/uid/Connectioncheck;
.super Ljava/lang/Object;
.source "Connectioncheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeofConnectedNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 15
    .local v0, "nf":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    :goto_0
    return v1

    .line 19
    :cond_0
    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 27
    goto :goto_0
.end method
