.class public Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;
.super Landroid/app/Activity;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->setContentView(I)V

    invoke-virtual {p0, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->e:Ljava/lang/String;

    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->b:Landroid/widget/Button;

    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->c:Landroid/widget/EditText;

    const v0, 0x7f0d0061

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->b:Landroid/widget/Button;

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/q;

    invoke-direct {v1, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/q;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
