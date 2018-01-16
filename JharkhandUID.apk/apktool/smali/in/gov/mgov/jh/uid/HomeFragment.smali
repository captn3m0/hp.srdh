.class public Lin/gov/mgov/jh/uid/HomeFragment;
.super Landroid/app/Fragment;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;
    }
.end annotation


# instance fields
.field mobilenoEt:Landroid/widget/EditText;

.field ok:Landroid/widget/Button;

.field parameterEt:Landroid/widget/EditText;

.field text:Landroid/widget/TextView;

.field typeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field typeSpinner:Landroid/widget/Spinner;

.field typelist:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Internet"

    aput-object v2, v0, v1

    iput-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment;->typelist:[Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    const v1, 0x7f040028

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->ok:Landroid/widget/Button;

    .line 62
    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->text:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->typeSpinner:Landroid/widget/Spinner;

    .line 65
    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->parameterEt:Landroid/widget/EditText;

    .line 66
    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->mobilenoEt:Landroid/widget/EditText;

    .line 69
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lin/gov/mgov/jh/uid/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090003

    iget-object v4, p0, Lin/gov/mgov/jh/uid/HomeFragment;->typelist:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->typeAdapter:Landroid/widget/ArrayAdapter;

    .line 70
    iget-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->typeSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lin/gov/mgov/jh/uid/HomeFragment;->typeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 77
    iget-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->typeSpinner:Landroid/widget/Spinner;

    new-instance v2, Lin/gov/mgov/jh/uid/HomeFragment$1;

    invoke-direct {v2, p0}, Lin/gov/mgov/jh/uid/HomeFragment$1;-><init>(Lin/gov/mgov/jh/uid/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 116
    iget-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->ok:Landroid/widget/Button;

    new-instance v2, Lin/gov/mgov/jh/uid/HomeFragment$2;

    invoke-direct {v2, p0}, Lin/gov/mgov/jh/uid/HomeFragment$2;-><init>(Lin/gov/mgov/jh/uid/HomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-object v0
.end method

.method public sendSMSRegular(Ljava/lang/String;)V
    .locals 7
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment;->parameterEt:Landroid/widget/EditText;

    const-string v2, "Please Enter valid parameter"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 209
    :goto_0
    return-void

    .line 197
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 198
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    const-string v1, "166"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JH UID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :catch_0
    move-exception v6

    .line 201
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lin/gov/mgov/jh/uid/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "SMS faild, please try again."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
