.class Lin/gov/mgov/jh/uid/NoNetworkFragment$2;
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
    .line 43
    iput-object p1, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment$2;->this$0:Lin/gov/mgov/jh/uid/NoNetworkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment$2;->this$0:Lin/gov/mgov/jh/uid/NoNetworkFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lin/gov/mgov/jh/uid/NoNetworkFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    return-void
.end method
