.class public Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;
.super Landroid/support/v4/a/o;


# instance fields
.field n:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

.field o:Lin/gov/hp/Aadhaar_HP/SRDH/ag;

.field private p:Landroid/support/v4/view/ViewPager;

.field private q:Lin/gov/hp/Aadhaar_HP/SRDH/ac;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/a/o;-><init>()V

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-direct {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;-><init>()V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->n:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/ag;

    invoke-direct {v0, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/ag;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;)V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->o:Lin/gov/hp/Aadhaar_HP/SRDH/ag;

    return-void
.end method

.method private g()V
    .locals 3

    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->p:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/ac;

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->f()Landroid/support/v4/a/t;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lin/gov/hp/Aadhaar_HP/SRDH/ac;-><init>(Landroid/content/Context;Landroid/support/v4/a/t;)V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->q:Lin/gov/hp/Aadhaar_HP/SRDH/ac;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->p:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->q:Lin/gov/hp/Aadhaar_HP/SRDH/ac;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bh;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->p:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private h()V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->p:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/ad;

    invoke-direct {v1, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/ad;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cv;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Are you sure you want to exit the HPSRDH application?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lin/gov/hp/Aadhaar_HP/SRDH/af;

    invoke-direct {v3, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/af;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Lin/gov/hp/Aadhaar_HP/SRDH/ae;

    invoke-direct {v3, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/ae;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/a/o;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->setContentView(I)V

    invoke-direct {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->g()V

    invoke-direct {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->h()V

    return-void
.end method
