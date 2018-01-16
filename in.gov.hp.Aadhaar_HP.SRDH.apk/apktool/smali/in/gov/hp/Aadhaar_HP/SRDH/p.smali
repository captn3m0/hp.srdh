.class Lin/gov/hp/Aadhaar_HP/SRDH/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/p;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/p;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;

    const-class v2, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/p;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;

    invoke-virtual {v1, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/p;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LoginActivity;->finish()V

    return-void
.end method
