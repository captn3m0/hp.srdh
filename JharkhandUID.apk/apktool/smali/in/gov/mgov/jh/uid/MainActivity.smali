.class public Lin/gov/mgov/jh/uid/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

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
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 61
    const v1, 0x7f0c006d

    invoke-virtual {p0, v1}, Lin/gov/mgov/jh/uid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 62
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0c0071

    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f04001a

    invoke-virtual {p0, v1}, Lin/gov/mgov/jh/uid/MainActivity;->setContentView(I)V

    .line 28
    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lin/gov/mgov/jh/uid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 29
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Lin/gov/mgov/jh/uid/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 31
    invoke-virtual {p0, v7}, Lin/gov/mgov/jh/uid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lin/gov/mgov/jh/uid/MainActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 33
    const v1, 0x7f0c006d

    invoke-virtual {p0, v1}, Lin/gov/mgov/jh/uid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 34
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v4, 0x7f060016

    const v5, 0x7f060015

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 36
    .local v0, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 37
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 39
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Lin/gov/mgov/jh/uid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/NavigationView;

    .line 40
    .local v6, "navigationView":Landroid/support/design/widget/NavigationView;
    invoke-virtual {v6, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 46
    invoke-virtual {p0}, Lin/gov/mgov/jh/uid/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentManager:Landroid/app/FragmentManager;

    .line 47
    iget-object v1, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 48
    iget-object v1, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    new-instance v4, Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-direct {v4}, Lin/gov/mgov/jh/uid/HomeFragment;-><init>()V

    invoke-virtual {v1, v7, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    iget-object v1, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 72
    invoke-virtual {p0}, Lin/gov/mgov/jh/uid/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    return v4

    .line 124
    :pswitch_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, "builder1":Landroid/support/v7/app/AlertDialog$Builder;
    const-string v2, "Do you want to exit the Application"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 126
    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 127
    const-string v2, "Yes"

    new-instance v3, Lin/gov/mgov/jh/uid/MainActivity$1;

    invoke-direct {v3, p0}, Lin/gov/mgov/jh/uid/MainActivity$1;-><init>(Lin/gov/mgov/jh/uid/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 133
    const-string v2, "No"

    new-instance v3, Lin/gov/mgov/jh/uid/MainActivity$2;

    invoke-direct {v3, p0}, Lin/gov/mgov/jh/uid/MainActivity$2;-><init>(Lin/gov/mgov/jh/uid/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 140
    .local v0, "alert11":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v4, 0x7f0c0071

    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 93
    .local v1, "id":I
    invoke-virtual {p0}, Lin/gov/mgov/jh/uid/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentManager:Landroid/app/FragmentManager;

    .line 94
    iget-object v2, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    .line 96
    const v2, 0x7f0c008c

    if-ne v1, v2, :cond_1

    .line 97
    iget-object v2, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    new-instance v3, Lin/gov/mgov/jh/uid/AboutFragment;

    invoke-direct {v3}, Lin/gov/mgov/jh/uid/AboutFragment;-><init>()V

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 98
    iget-object v2, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 113
    :cond_0
    :goto_0
    const v2, 0x7f0c006d

    invoke-virtual {p0, v2}, Lin/gov/mgov/jh/uid/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 114
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 115
    const/4 v2, 0x1

    return v2

    .line 101
    .end local v0    # "drawer":Landroid/support/v4/widget/DrawerLayout;
    :cond_1
    const v2, 0x7f0c008d

    if-ne v1, v2, :cond_2

    .line 102
    iget-object v2, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    new-instance v3, Lin/gov/mgov/jh/uid/FeedBackFragment;

    invoke-direct {v3}, Lin/gov/mgov/jh/uid/FeedBackFragment;-><init>()V

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 103
    iget-object v2, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 106
    :cond_2
    const v2, 0x7f0c008b

    if-ne v1, v2, :cond_0

    .line 107
    iget-object v2, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    new-instance v3, Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-direct {v3}, Lin/gov/mgov/jh/uid/HomeFragment;-><init>()V

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 108
    iget-object v2, p0, Lin/gov/mgov/jh/uid/MainActivity;->fragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 85
    .local v0, "id":I
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
