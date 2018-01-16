.class public Lin/gov/hp/Aadhaar_HP/SRDH/g;
.super Landroid/support/v4/a/l;


# instance fields
.field private aa:Landroid/widget/EditText;

.field private ab:Landroid/widget/EditText;

.field private ac:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/l;-><init>()V

    return-void
.end method

.method private H()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/g;->aa:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/g;->ab:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->b()Landroid/support/v4/a/o;

    move-result-object v0

    const-string v1, "Please enter your Aadhaar no. or Enroll Id no."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->b()Landroid/support/v4/a/o;

    move-result-object v2

    const-class v3, Lin/gov/hp/Aadhaar_HP/SRDH/UID_Search_List;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "UID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->b()Landroid/support/v4/a/o;

    move-result-object v0

    const-string v1, "Aadhar ID is not valid"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->b()Landroid/support/v4/a/o;

    move-result-object v2

    const-class v3, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->b()Landroid/support/v4/a/o;

    move-result-object v0

    const-string v1, "Please enter a valid Enroll ID"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/a/l;
    .locals 1

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/g;

    invoke-direct {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lin/gov/hp/Aadhaar_HP/SRDH/g;)V
    .locals 0

    invoke-direct {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->H()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f040025

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0d00bb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/g;->aa:Landroid/widget/EditText;

    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/g;->ab:Landroid/widget/EditText;

    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/g;->ac:Landroid/widget/Button;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/g;->ac:Landroid/widget/Button;

    new-instance v2, Lin/gov/hp/Aadhaar_HP/SRDH/h;

    invoke-direct {v2, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/h;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/g;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
