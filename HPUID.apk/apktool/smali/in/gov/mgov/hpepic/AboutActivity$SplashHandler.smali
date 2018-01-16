.class Lin/gov/mgov/hpepic/AboutActivity$SplashHandler;
.super Landroid/os/Handler;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/gov/mgov/hpepic/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lin/gov/mgov/hpepic/AboutActivity;


# direct methods
.method private constructor <init>(Lin/gov/mgov/hpepic/AboutActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lin/gov/mgov/hpepic/AboutActivity$SplashHandler;->this$0:Lin/gov/mgov/hpepic/AboutActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lin/gov/mgov/hpepic/AboutActivity;Lin/gov/mgov/hpepic/AboutActivity$SplashHandler;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lin/gov/mgov/hpepic/AboutActivity$SplashHandler;-><init>(Lin/gov/mgov/hpepic/AboutActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 65
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/mgov/hpepic/AboutActivity$SplashHandler;->this$0:Lin/gov/mgov/hpepic/AboutActivity;

    invoke-virtual {v1}, Lin/gov/mgov/hpepic/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lin/gov/mgov/hpepic/Info;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lin/gov/mgov/hpepic/AboutActivity$SplashHandler;->this$0:Lin/gov/mgov/hpepic/AboutActivity;

    invoke-virtual {v1, v0}, Lin/gov/mgov/hpepic/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    iget-object v1, p0, Lin/gov/mgov/hpepic/AboutActivity$SplashHandler;->this$0:Lin/gov/mgov/hpepic/AboutActivity;

    invoke-virtual {v1}, Lin/gov/mgov/hpepic/AboutActivity;->finish()V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
