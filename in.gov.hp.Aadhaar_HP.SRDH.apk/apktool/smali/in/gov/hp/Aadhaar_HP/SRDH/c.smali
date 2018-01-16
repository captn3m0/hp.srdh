.class public Lin/gov/hp/Aadhaar_HP/SRDH/c;
.super Landroid/support/v4/a/l;


# instance fields
.field aa:Landroid/widget/ArrayAdapter;

.field private ab:Landroid/widget/EditText;

.field private ac:Landroid/widget/EditText;

.field private ad:Landroid/widget/EditText;

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/widget/EditText;

.field private ag:Landroid/widget/Button;

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/a/l;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->aa:Landroid/widget/ArrayAdapter;

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/d;

    invoke-direct {v0, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/d;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/c;)V

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ak:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method private H()V
    .locals 8

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->af:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ae:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ab:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ac:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ad:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->b()Landroid/support/v4/a/o;

    move-result-object v6

    const-class v7, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "District"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Name"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "FHName"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Dob"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Pincode"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->b()Landroid/support/v4/a/o;

    move-result-object v0

    const-string v1, " Our Central System is as big as the universe. Please provide some parameter.  "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private I()V
    .locals 4

    iget v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ai:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ai:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->aj:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->aj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ae:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ah:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ai:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->aj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic a(Lin/gov/hp/Aadhaar_HP/SRDH/c;I)I
    .locals 0

    iput p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->aj:I

    return p1
.end method

.method private a(IIILandroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;
    .locals 6

    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->b()Landroid/support/v4/a/o;

    move-result-object v1

    move-object v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    const-string v1, "Please Select Your Date Of Birth"

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    return-object v0
.end method

.method static synthetic a(Lin/gov/hp/Aadhaar_HP/SRDH/c;IIILandroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->a(IIILandroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/a/l;
    .locals 1

    new-instance v0, Lin/gov/hp/Aadhaar_HP/SRDH/c;

    invoke-direct {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/c;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lin/gov/hp/Aadhaar_HP/SRDH/c;)V
    .locals 0

    invoke-direct {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->I()V

    return-void
.end method

.method static synthetic b(Lin/gov/hp/Aadhaar_HP/SRDH/c;)I
    .locals 1

    iget v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ah:I

    return v0
.end method

.method static synthetic b(Lin/gov/hp/Aadhaar_HP/SRDH/c;I)I
    .locals 0

    iput p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ai:I

    return p1
.end method

.method static synthetic c(Lin/gov/hp/Aadhaar_HP/SRDH/c;)I
    .locals 1

    iget v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ai:I

    return v0
.end method

.method static synthetic c(Lin/gov/hp/Aadhaar_HP/SRDH/c;I)I
    .locals 0

    iput p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ah:I

    return p1
.end method

.method static synthetic d(Lin/gov/hp/Aadhaar_HP/SRDH/c;)I
    .locals 1

    iget v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->aj:I

    return v0
.end method

.method static synthetic e(Lin/gov/hp/Aadhaar_HP/SRDH/c;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ak:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic f(Lin/gov/hp/Aadhaar_HP/SRDH/c;)V
    .locals 0

    invoke-direct {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->H()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f040024

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0d00a6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->af:Landroid/widget/EditText;

    const v1, 0x7f0d00b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ag:Landroid/widget/Button;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ae:Landroid/widget/TextView;

    const v1, 0x7f0d00ae

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ab:Landroid/widget/EditText;

    const v1, 0x7f0d00b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ac:Landroid/widget/EditText;

    const v1, 0x7f0d00b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ad:Landroid/widget/EditText;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ae:Landroid/widget/TextView;

    new-instance v2, Lin/gov/hp/Aadhaar_HP/SRDH/e;

    invoke-direct {v2, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/e;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/c;->ag:Landroid/widget/Button;

    new-instance v2, Lin/gov/hp/Aadhaar_HP/SRDH/f;

    invoke-direct {v2, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/f;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
