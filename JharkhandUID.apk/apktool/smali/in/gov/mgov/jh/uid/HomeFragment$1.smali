.class Lin/gov/mgov/jh/uid/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/gov/mgov/jh/uid/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/gov/mgov/jh/uid/HomeFragment;


# direct methods
.method constructor <init>(Lin/gov/mgov/jh/uid/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lin/gov/mgov/jh/uid/HomeFragment;

    .prologue
    .line 77
    iput-object p1, p0, Lin/gov/mgov/jh/uid/HomeFragment$1;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 83
    packed-switch p3, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$1;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v0, v0, Lin/gov/mgov/jh/uid/HomeFragment;->mobilenoEt:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$1;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v0, v0, Lin/gov/mgov/jh/uid/HomeFragment;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$1;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v0, v0, Lin/gov/mgov/jh/uid/HomeFragment;->mobilenoEt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$1;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v0, v0, Lin/gov/mgov/jh/uid/HomeFragment;->mobilenoEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$1;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v0, v0, Lin/gov/mgov/jh/uid/HomeFragment;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$1;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v0, v0, Lin/gov/mgov/jh/uid/HomeFragment;->mobilenoEt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
