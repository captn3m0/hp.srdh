.class Lin/gov/mgov/jh/uid/NoNetworkFragment$1;
.super Ljava/lang/Object;
.source "NoNetworkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/gov/mgov/jh/uid/NoNetworkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/gov/mgov/jh/uid/NoNetworkFragment;


# direct methods
.method constructor <init>(Lin/gov/mgov/jh/uid/NoNetworkFragment;)V
    .locals 0
    .param p1, "this$0"    # Lin/gov/mgov/jh/uid/NoNetworkFragment;

    .prologue
    .line 26
    iput-object p1, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment$1;->this$0:Lin/gov/mgov/jh/uid/NoNetworkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment$1;->this$0:Lin/gov/mgov/jh/uid/NoNetworkFragment;

    invoke-virtual {v2}, Lin/gov/mgov/jh/uid/NoNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment$1;->this$0:Lin/gov/mgov/jh/uid/NoNetworkFragment;

    invoke-virtual {v3}, Lin/gov/mgov/jh/uid/NoNetworkFragment;->getActivity()Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    .local v0, "manager":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment$1;->this$0:Lin/gov/mgov/jh/uid/NoNetworkFragment;

    invoke-virtual {v2}, Lin/gov/mgov/jh/uid/NoNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lin/gov/mgov/jh/uid/Connectioncheck;->typeofConnectedNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    move-result v1

    .line 33
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 35
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment$1;->this$0:Lin/gov/mgov/jh/uid/NoNetworkFragment;

    invoke-virtual {v2}, Lin/gov/mgov/jh/uid/NoNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 39
    :cond_0
    return-void
.end method
