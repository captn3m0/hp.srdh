.class Lin/gov/hp/Aadhaar_HP/SRDH/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/w;->a:Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/w;->a:Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;->finish()V

    return-void
.end method
