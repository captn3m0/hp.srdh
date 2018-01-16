.class public Lin/gov/hp/Aadhaar_HP/SRDH/r;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/Boolean;

.field final synthetic b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method protected constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;)V
    .locals 1

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x0

    aget-object v0, p1, v6

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    const-string v3, "UserName"

    invoke-virtual {v2, v3, v6}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "USERNAME"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    const-string v3, "UserName"

    invoke-virtual {v2, v3, v6}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "USERNAME"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    const-string v4, "USERNAME"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->a:Ljava/lang/String;

    :cond_0
    new-instance v2, Lin/gov/hp/Aadhaar_HP/SRDH/k;

    invoke-direct {v2}, Lin/gov/hp/Aadhaar_HP/SRDH/k;-><init>()V

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lin/gov/hp/Aadhaar_HP/SRDH/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://hp.gov.in/uidreport/AWW.svc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "signin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/m;

    invoke-direct {v1}, Lin/gov/hp/Aadhaar_HP/SRDH/m;-><init>()V

    invoke-virtual {v1, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v6, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "CheckUserResult"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->a:Ljava/lang/Boolean;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    const-class v2, Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-virtual {v1, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Either the username/password is not valid or you are already logged in"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    const-class v2, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-virtual {v1, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;->finish()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lin/gov/hp/Aadhaar_HP/SRDH/r;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lin/gov/hp/Aadhaar_HP/SRDH/r;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->b:Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->c:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->c:Landroid/app/ProgressDialog;

    const-string v1, "Please wait...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/r;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method
