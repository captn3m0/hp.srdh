.class Lin/gov/hp/Aadhaar_HP/SRDH/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/c;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/c;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/e;->a:Lin/gov/hp/Aadhaar_HP/SRDH/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/e;->a:Lin/gov/hp/Aadhaar_HP/SRDH/c;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/e;->a:Lin/gov/hp/Aadhaar_HP/SRDH/c;

    invoke-static {v1}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->b(Lin/gov/hp/Aadhaar_HP/SRDH/c;)I

    move-result v1

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/e;->a:Lin/gov/hp/Aadhaar_HP/SRDH/c;

    invoke-static {v2}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->c(Lin/gov/hp/Aadhaar_HP/SRDH/c;)I

    move-result v2

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/e;->a:Lin/gov/hp/Aadhaar_HP/SRDH/c;

    invoke-static {v3}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->d(Lin/gov/hp/Aadhaar_HP/SRDH/c;)I

    move-result v3

    iget-object v4, p0, Lin/gov/hp/Aadhaar_HP/SRDH/e;->a:Lin/gov/hp/Aadhaar_HP/SRDH/c;

    invoke-static {v4}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->e(Lin/gov/hp/Aadhaar_HP/SRDH/c;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->a(Lin/gov/hp/Aadhaar_HP/SRDH/c;IIILandroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;

    return-void
.end method
