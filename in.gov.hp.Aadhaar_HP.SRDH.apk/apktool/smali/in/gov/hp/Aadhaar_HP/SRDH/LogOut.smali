.class public Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->setContentView(I)V

    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->a:Landroid/widget/EditText;

    const v0, 0x7f0d0062

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->b:Landroid/widget/Button;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->b:Landroid/widget/Button;

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/n;

    invoke-direct {v1, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/n;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
