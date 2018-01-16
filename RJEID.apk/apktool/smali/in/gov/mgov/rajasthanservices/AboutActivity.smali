.class public Lin/gov/mgov/rajasthanservices/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/gov/mgov/rajasthanservices/AboutActivity$SplashHandler;
    }
.end annotation


# static fields
.field private static final SPLASHTIME:J = 0x1388L

.field private static final STOPSPLASH:I


# instance fields
.field relativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 78
    invoke-virtual {p0}, Lin/gov/mgov/rajasthanservices/AboutActivity;->finish()V

    .line 79
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p0}, Lin/gov/mgov/rajasthanservices/AboutActivity;->finish()V

    .line 47
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lin/gov/mgov/rajasthanservices/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 24
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lin/gov/mgov/rajasthanservices/AboutActivity;->setContentView(I)V

    .line 26
    new-instance v1, Lin/gov/mgov/rajasthanservices/AboutActivity$SplashHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lin/gov/mgov/rajasthanservices/AboutActivity$SplashHandler;-><init>(Lin/gov/mgov/rajasthanservices/AboutActivity;Lin/gov/mgov/rajasthanservices/AboutActivity$SplashHandler;)V

    .line 27
    .local v1, "splashHandler":Lin/gov/mgov/rajasthanservices/AboutActivity$SplashHandler;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 28
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 29
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lin/gov/mgov/rajasthanservices/AboutActivity$SplashHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 31
    const/high16 v2, 0x7f080000

    invoke-virtual {p0, v2}, Lin/gov/mgov/rajasthanservices/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lin/gov/mgov/rajasthanservices/AboutActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 32
    iget-object v2, p0, Lin/gov/mgov/rajasthanservices/AboutActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lin/gov/mgov/rajasthanservices/AboutActivity$1;

    invoke-direct {v3, p0}, Lin/gov/mgov/rajasthanservices/AboutActivity$1;-><init>(Lin/gov/mgov/rajasthanservices/AboutActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 55
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 56
    return-void
.end method
