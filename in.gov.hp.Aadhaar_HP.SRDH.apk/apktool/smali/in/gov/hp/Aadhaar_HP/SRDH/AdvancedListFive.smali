.class public Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;
.super Landroid/app/Activity;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Landroid/widget/ProgressBar;

.field g:Ljava/util/List;

.field h:Ljava/util/List;

.field i:Ljava/net/URL;

.field j:Ljava/net/HttpURLConnection;

.field k:Ljava/lang/StringBuilder;

.field l:Landroid/widget/ListView;

.field m:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->a:Ljava/lang/String;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->b:Ljava/lang/String;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->c:Ljava/lang/String;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->d:Ljava/lang/String;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->k:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->h:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lin/gov/hp/Aadhaar_HP/SRDH/v;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->l:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->setContentView(I)V

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "District"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->a:Ljava/lang/String;

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->b:Ljava/lang/String;

    const-string v1, "FHName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->c:Ljava/lang/String;

    const-string v1, "Dob"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->d:Ljava/lang/String;

    const-string v1, "Pincode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->e:Ljava/lang/String;

    const v0, 0x7f0d0050

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->l:Landroid/widget/ListView;

    iput-object p0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->m:Landroid/content/Context;

    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->f:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->g:Ljava/util/List;

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/b;

    invoke-direct {v0, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/b;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->b:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->e:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->l:Landroid/widget/ListView;

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/a;

    invoke-direct {v1, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/a;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    const-string v0, "Network isn\'t available"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
