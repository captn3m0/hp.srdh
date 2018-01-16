.class public Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;->setContentView(I)V

    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0d0069

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/p;

    invoke-direct {v1, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/p;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
