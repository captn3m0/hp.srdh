.class public Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->setContentView(I)V

    invoke-virtual {p0}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Details"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lin/gov/hp/Aadhaar_HP/SRDH/ab;

    const v1, 0x7f0d007b

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->b:Landroid/widget/TextView;

    const v1, 0x7f0d0071

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->c:Landroid/widget/TextView;

    const v1, 0x7f0d0075

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->e:Landroid/widget/TextView;

    const v1, 0x7f0d0089

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->i:Landroid/widget/TextView;

    const v1, 0x7f0d007d

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->j:Landroid/widget/TextView;

    const v1, 0x7f0d008d

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->k:Landroid/widget/TextView;

    const v1, 0x7f0d008b

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->l:Landroid/widget/TextView;

    const v1, 0x7f0d007f

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->m:Landroid/widget/TextView;

    const v1, 0x7f0d0081

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->n:Landroid/widget/TextView;

    const v1, 0x7f0d0085

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->f:Landroid/widget/TextView;

    const v1, 0x7f0d0087

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->g:Landroid/widget/TextView;

    const v1, 0x7f0d0083

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->h:Landroid/widget/TextView;

    const v1, 0x7f0d0077

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->d:Landroid/widget/TextView;

    const v1, 0x7f0d0096

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->o:Landroid/widget/Button;

    const v1, 0x7f0d0070

    invoke-virtual {p0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "DOB"

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/ab;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->o:Landroid/widget/Button;

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/w;

    invoke-direct {v1, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/w;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->a:Landroid/widget/ImageView;

    new-instance v1, Lin/gov/hp/Aadhaar_HP/SRDH/x;

    invoke-direct {v1, p0}, Lin/gov/hp/Aadhaar_HP/SRDH/x;-><init>(Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
