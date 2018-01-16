.class public Lin/gov/mgov/rajasthanservices/Info;
.super Landroid/app/Activity;
.source "Info.java"


# static fields
.field public static value:Ljava/lang/String;


# instance fields
.field private m_Scroll:Landroid/widget/ScrollView;

.field result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 90
    invoke-virtual {p0}, Lin/gov/mgov/rajasthanservices/Info;->finish()V

    .line 91
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-virtual {p0}, Lin/gov/mgov/rajasthanservices/Info;->finish()V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Lin/gov/mgov/rajasthanservices/Info;->setContentView(I)V

    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .local v1, "lila1":Landroid/widget/LinearLayout;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 29
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    .local v2, "text":Landroid/widget/TextView;
    const v4, 0x106000c

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    .local v3, "text1":Landroid/widget/TextView;
    const-string v4, "About :\nThe service can be used by the Citizens of Rajasthan state to retrieve their Enrollment Number (EID) based on the UID number provided. \n\n1. This application is developed by C-DAC, Mumbai.\n2. This application is free for individual and can not be used for commercial purpose.\n3. This application cannot be modified and distributed without permission of C-DAC, Mumbai.\n\nDeveloper :\nC-DAC, Mumbai\n\nFeedback :\nSend your valuable feedback at msdp@cdac.in"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    const v4, 0x7f060002

    invoke-virtual {v3, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 47
    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lin/gov/mgov/rajasthanservices/Info;->m_Scroll:Landroid/widget/ScrollView;

    .line 52
    iget-object v4, p0, Lin/gov/mgov/rajasthanservices/Info;->m_Scroll:Landroid/widget/ScrollView;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 53
    iget-object v4, p0, Lin/gov/mgov/rajasthanservices/Info;->m_Scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 55
    const v4, 0x7f020001

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 56
    const-string v4, "Rajasthan Services"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    const-string v4, "Ok"

    new-instance v5, Lin/gov/mgov/rajasthanservices/Info$1;

    invoke-direct {v5, p0}, Lin/gov/mgov/rajasthanservices/Info$1;-><init>(Lin/gov/mgov/rajasthanservices/Info;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 70
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 82
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 83
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 84
    return-void
.end method
