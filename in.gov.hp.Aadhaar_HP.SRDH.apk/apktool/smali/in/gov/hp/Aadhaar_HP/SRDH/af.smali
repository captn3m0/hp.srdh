.class Lin/gov/hp/Aadhaar_HP/SRDH/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/af;->a:Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/af;->a:Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;

    const-string v1, "UserName"

    invoke-virtual {v0, v1, v3}, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "USERNAME"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "USERNAME"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "User Name is: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/af;->a:Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;

    iget-object v1, v1, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;->o:Lin/gov/hp/Aadhaar_HP/SRDH/ag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lin/gov/hp/Aadhaar_HP/SRDH/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
