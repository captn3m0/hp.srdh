.class public Lin/gov/mgov/jh/uid/NoNetwork;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NoNetwork.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field fragmentManager:Landroid/app/FragmentManager;

.field fragmentTransaction:Landroid/app/FragmentTransaction;

.field linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0c0071

    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f04002b

    invoke-virtual {p0, v1}, Lin/gov/mgov/jh/uid/NoNetwork;->setContentView(I)V

    .line 28
    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lin/gov/mgov/jh/uid/NoNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 29
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Lin/gov/mgov/jh/uid/NoNetwork;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 30
    const v1, 0x7f0c006d

    invoke-virtual {p0, v1}, Lin/gov/mgov/jh/uid/NoNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 31
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v4, 0x7f060016

    const v5, 0x7f060015

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 33
    .local v0, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 34
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 36
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Lin/gov/mgov/jh/uid/NoNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/NavigationView;

    .line 37
    .local v6, "navigationView":Landroid/support/design/widget/NavigationView;
    invoke-virtual {v6, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 39
    invoke-virtual {p0, v7}, Lin/gov/mgov/jh/uid/NoNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lin/gov/mgov/jh/uid/NoNetwork;->linearLayout:Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {p0}, Lin/gov/mgov/jh/uid/NoNetwork;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentManager:Landroid/app/FragmentManager;

    .line 42
    iget-object v1, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 43
    iget-object v1, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    new-instance v4, Lin/gov/mgov/jh/uid/NoNetworkFragment;

    invoke-direct {v4}, Lin/gov/mgov/jh/uid/NoNetworkFragment;-><init>()V

    invoke-virtual {v1, v7, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 44
    iget-object v1, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 52
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const v4, 0x7f0c0071

    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 58
    .local v1, "id":I
    invoke-virtual {p0}, Lin/gov/mgov/jh/uid/NoNetwork;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentManager:Landroid/app/FragmentManager;

    .line 59
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 61
    const v2, 0x7f0c008c

    if-ne v1, v2, :cond_1

    .line 62
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    new-instance v3, Lin/gov/mgov/jh/uid/AboutFragment;

    invoke-direct {v3}, Lin/gov/mgov/jh/uid/AboutFragment;-><init>()V

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 63
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 78
    :cond_0
    :goto_0
    const v2, 0x7f0c006d

    invoke-virtual {p0, v2}, Lin/gov/mgov/jh/uid/NoNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 79
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 80
    const/4 v2, 0x1

    return v2

    .line 66
    .end local v0    # "drawer":Landroid/support/v4/widget/DrawerLayout;
    :cond_1
    const v2, 0x7f0c008d

    if-ne v1, v2, :cond_2

    .line 67
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    new-instance v3, Lin/gov/mgov/jh/uid/FeedBackFragment;

    invoke-direct {v3}, Lin/gov/mgov/jh/uid/FeedBackFragment;-><init>()V

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 68
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 71
    :cond_2
    const v2, 0x7f0c008b

    if-ne v1, v2, :cond_0

    .line 72
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    new-instance v3, Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-direct {v3}, Lin/gov/mgov/jh/uid/HomeFragment;-><init>()V

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    iget-object v2, p0, Lin/gov/mgov/jh/uid/NoNetwork;->fragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
