.class Lin/gov/hp/Aadhaar_HP/SRDH/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/q;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/q;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->a(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/q;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-static {v1}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->b(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/q;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-static {v2}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->c(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lin/gov/hp/Aadhaar_HP/SRDH/r;

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/q;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-direct {v2, v3}, Lin/gov/hp/Aadhaar_HP/SRDH/r;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    const/4 v0, 0x2

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/q;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-static {v1}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->c(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lin/gov/hp/Aadhaar_HP/SRDH/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/q;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Password cannot be empty"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/q;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Username cannot be empty"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/q;->a:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Something Went Wrong. Please check your network connectivity"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
