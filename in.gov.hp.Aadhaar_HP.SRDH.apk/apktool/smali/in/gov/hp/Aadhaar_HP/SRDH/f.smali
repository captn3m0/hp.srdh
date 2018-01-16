.class Lin/gov/hp/Aadhaar_HP/SRDH/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/c;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/c;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/f;->a:Lin/gov/hp/Aadhaar_HP/SRDH/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/f;->a:Lin/gov/hp/Aadhaar_HP/SRDH/c;

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->f(Lin/gov/hp/Aadhaar_HP/SRDH/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/f;->a:Lin/gov/hp/Aadhaar_HP/SRDH/c;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->b()Landroid/support/v4/a/o;

    move-result-object v0

    const-string v1, "Something Went Wrong. Please check your network connectivity"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
