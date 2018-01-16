.class Lin/gov/hp/Aadhaar_HP/SRDH/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/n;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/n;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/n;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-static {v1}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->a(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->a(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/n;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->b(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/n;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->b(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/o;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/n;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-direct {v0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/o;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)V

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/n;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-static {v3}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->b(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/n;->a:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Username cannot be empty"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
