.class public Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;
.super Landroid/app/Activity;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/widget/ProgressBar;

.field c:Ljava/util/List;

.field d:Ljava/util/List;

.field e:Landroid/widget/ListView;

.field f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/v;

    const v1, 0x7f040023

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->d:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lin/gov/hp/Aadhaar_HP/SRDH/v;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->setContentView(I)V

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->a:Ljava/lang/String;

    const v0, 0x7f0d0050

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->e:Landroid/widget/ListView;

    iput-object p0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->f:Landroid/content/Context;

    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->b:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->c:Ljava/util/List;

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/j;

    invoke-direct {v0, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/j;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;)V

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;->e:Landroid/widget/ListView;

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/i;

    invoke-direct {v1, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/i;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/EID_Search_List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    const-string v0, "Network isn\'t available"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
