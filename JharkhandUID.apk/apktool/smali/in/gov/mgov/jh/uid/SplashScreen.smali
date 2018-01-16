.class public Lin/gov/mgov/jh/uid/SplashScreen;
.super Landroid/app/Activity;
.source "SplashScreen.java"


# static fields
.field private static SPLASH_TIME_OUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0xbb8

    sput v0, Lin/gov/mgov/jh/uid/SplashScreen;->SPLASH_TIME_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lin/gov/mgov/jh/uid/SplashScreen;->setContentView(I)V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lin/gov/mgov/jh/uid/SplashScreen$1;

    invoke-direct {v1, p0}, Lin/gov/mgov/jh/uid/SplashScreen$1;-><init>(Lin/gov/mgov/jh/uid/SplashScreen;)V

    sget v2, Lin/gov/mgov/jh/uid/SplashScreen;->SPLASH_TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method
