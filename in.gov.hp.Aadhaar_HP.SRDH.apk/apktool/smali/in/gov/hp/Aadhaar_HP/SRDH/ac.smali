.class public Lin/gov/hp/Aadhaar_HP/SRDH/ac;
.super Landroid/support/v4/a/ab;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/a/t;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/support/v4/a/ab;-><init>(Landroid/support/v4/a/t;)V

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ac;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/a/l;
    .locals 1

    new-instance v0, Landroid/support/v4/a/l;

    invoke-direct {v0}, Landroid/support/v4/a/l;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/c;->a(Landroid/content/Context;)Landroid/support/v4/a/l;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/g;->a(Landroid/content/Context;)Landroid/support/v4/a/l;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
