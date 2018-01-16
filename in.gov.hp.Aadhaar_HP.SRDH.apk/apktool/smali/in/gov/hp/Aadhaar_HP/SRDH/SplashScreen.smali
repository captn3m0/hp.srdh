.class public Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;->setContentView(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/s;

    invoke-direct {v1, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/s;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
