.class public Lin/gov/hp/Aadhaar_HP/SRDH/o;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Boolean;

.field final synthetic c:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;)V
    .locals 1

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->c:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    aget-object v0, p1, v3

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/k;

    invoke-direct {v1}, Lin/gov/hp/Aadhaar_HP/SRDH/k;-><init>()V

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://hp.gov.in/uidreport/AWW.svc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "signout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->a:Ljava/lang/String;

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/m;

    invoke-direct {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/m;-><init>()V

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lin/gov/hp/Aadhaar_HP/SRDH/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "LogOutUserResult"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->b:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->b:Ljava/lang/Boolean;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->b:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->c:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    const-class v2, Lin/gov/hp/Aadhaar_HP/SRDH/SignIn;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->c:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-virtual {v1, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->c:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->c:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Something Went Wrong. Please check your network connectivity"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lin/gov/hp/Aadhaar_HP/SRDH/o;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lin/gov/hp/Aadhaar_HP/SRDH/o;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->c:Lin/gov/hp/Aadhaar_HP/SRDH/LogOut;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->d:Landroid/app/ProgressDialog;

    const-string v1, "Please wait...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/o;->d:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method
