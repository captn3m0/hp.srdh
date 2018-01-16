.class Lin/gov/hp/Aadhaar_HP/SRDH/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/g;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/g;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/h;->a:Lin/gov/hp/Aadhaar_HP/SRDH/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/h;->a:Lin/gov/hp/Aadhaar_HP/SRDH/g;

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->a(Lin/gov/hp/Aadhaar_HP/SRDH/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/h;->a:Lin/gov/hp/Aadhaar_HP/SRDH/g;

    invoke-virtual {v1}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->b()Landroid/support/v4/a/o;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
