.class public Lin/gov/mgov/jh/uid/NoNetworkFragment;
.super Landroid/app/Fragment;
.source "NoNetworkFragment.java"


# instance fields
.field goToSettings:Landroid/widget/Button;

.field retry:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 23
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment;->retry:Landroid/widget/Button;

    .line 24
    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment;->goToSettings:Landroid/widget/Button;

    .line 26
    iget-object v1, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment;->retry:Landroid/widget/Button;

    new-instance v2, Lin/gov/mgov/jh/uid/NoNetworkFragment$1;

    invoke-direct {v2, p0}, Lin/gov/mgov/jh/uid/NoNetworkFragment$1;-><init>(Lin/gov/mgov/jh/uid/NoNetworkFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, p0, Lin/gov/mgov/jh/uid/NoNetworkFragment;->goToSettings:Landroid/widget/Button;

    new-instance v2, Lin/gov/mgov/jh/uid/NoNetworkFragment$2;

    invoke-direct {v2, p0}, Lin/gov/mgov/jh/uid/NoNetworkFragment$2;-><init>(Lin/gov/mgov/jh/uid/NoNetworkFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-object v0
.end method
