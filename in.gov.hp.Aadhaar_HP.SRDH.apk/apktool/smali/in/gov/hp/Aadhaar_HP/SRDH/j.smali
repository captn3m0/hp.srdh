.class Lin/gov/hp/Aadhaar_HP/SRDH/j;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->a:Ljava/lang/String;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://hp.gov.in/uidreport/AWW.svc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "searbyEID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->b:Ljava/lang/String;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    invoke-static {p1}, Lin/gov/hp/Aadhaar_HP/SRDH/y;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->d:Ljava/util/List;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No match found"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->b()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lin/gov/hp/Aadhaar_HP/SRDH/j;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lin/gov/hp/Aadhaar_HP/SRDH/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/j;->c:Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
