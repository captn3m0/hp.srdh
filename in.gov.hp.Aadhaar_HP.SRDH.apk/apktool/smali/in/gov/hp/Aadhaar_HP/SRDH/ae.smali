.class Lin/gov/hp/Aadhaar_HP/SRDH/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/ae;->a:Lin/gov/hp/Aadhaar_HP/SRDH/ViewPagerStyle1Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
