.class Lin/gov/mgov/jh/uid/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 116
    iput-object p1, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v7, v7, Lin/gov/mgov/jh/uid/HomeFragment;->parameterEt:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "parameter":Ljava/lang/String;
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v7, v7, Lin/gov/mgov/jh/uid/HomeFragment;->mobilenoEt:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "mobno":Ljava/lang/String;
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v7, v7, Lin/gov/mgov/jh/uid/HomeFragment;->typeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 130
    .local v6, "type":Ljava/lang/String;
    const-string v7, "SMS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 132
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-virtual {v7, v3}, Lin/gov/mgov/jh/uid/HomeFragment;->sendSMSRegular(Ljava/lang/String;)V

    .line 133
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v7, v7, Lin/gov/mgov/jh/uid/HomeFragment;->parameterEt:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    const-string v7, "Internet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-virtual {v7}, Lin/gov/mgov/jh/uid/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-virtual {v8}, Lin/gov/mgov/jh/uid/HomeFragment;->getActivity()Landroid/app/Activity;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 144
    .local v1, "manager":Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-virtual {v7}, Lin/gov/mgov/jh/uid/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v1}, Lin/gov/mgov/jh/uid/Connectioncheck;->typeofConnectedNetwork(Landroid/content/Context;Landroid/net/ConnectivityManager;)I

    move-result v4

    .line 147
    .local v4, "status":I
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    if-eqz v7, :cond_2

    .line 148
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v7, v7, Lin/gov/mgov/jh/uid/HomeFragment;->mobilenoEt:Landroid/widget/EditText;

    const-string v8, "Please Enter valid parameter and mobile number"

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 175
    .end local v1    # "manager":Landroid/net/ConnectivityManager;
    .end local v4    # "status":I
    :cond_1
    :goto_0
    return-void

    .line 152
    .restart local v1    # "manager":Landroid/net/ConnectivityManager;
    .restart local v4    # "status":I
    :cond_2
    if-nez v4, :cond_3

    .line 155
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-virtual {v7}, Lin/gov/mgov/jh/uid/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lin/gov/mgov/jh/uid/NoNetwork;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-virtual {v7, v0}, Lin/gov/mgov/jh/uid/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v5, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;

    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-direct {v5, v7}, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;-><init>(Lin/gov/mgov/jh/uid/HomeFragment;)V

    .line 162
    .local v5, "task":Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v5, v7}, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v7, v7, Lin/gov/mgov/jh/uid/HomeFragment;->mobilenoEt:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v7, p0, Lin/gov/mgov/jh/uid/HomeFragment$2;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    iget-object v7, v7, Lin/gov/mgov/jh/uid/HomeFragment;->parameterEt:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
