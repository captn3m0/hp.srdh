.class Lin/gov/hp/Aadhaar_HP/SRDH/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lin/gov/hp/Aadhaar_HP/SRDH/UID_Search_List;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/UID_Search_List;)V
    .locals 0

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/t;->a:Lin/gov/hp/Aadhaar_HP/SRDH/UID_Search_List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/gov/hp/Aadhaar_HP/SRDH/ab;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "Details"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/t;->a:Lin/gov/hp/Aadhaar_HP/SRDH/UID_Search_List;

    const-class v2, Lin/gov/hp/Aadhaar_HP/SRDH/UserDetailsSearch;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/t;->a:Lin/gov/hp/Aadhaar_HP/SRDH/UID_Search_List;

    invoke-virtual {v0, v1}, Lin/gov/hp/Aadhaar_HP/SRDH/UID_Search_List;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
