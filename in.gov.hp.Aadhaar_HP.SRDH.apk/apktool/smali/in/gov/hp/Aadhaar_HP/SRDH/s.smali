.class Lin/gov/hp/Aadhaar_HP/SRDH/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/s;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/s;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;

    const-class v2, Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/s;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;

    invoke-virtual {v1, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/s;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SplashScreen;->finish()V

    return-void
.end method
