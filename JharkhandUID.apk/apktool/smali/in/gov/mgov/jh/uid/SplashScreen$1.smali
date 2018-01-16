.class Lin/gov/mgov/jh/uid/SplashScreen$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/gov/mgov/jh/uid/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/gov/mgov/jh/uid/SplashScreen;


# direct methods
.method constructor <init>(Lin/gov/mgov/jh/uid/SplashScreen;)V
    .locals 0
    .param p1, "this$0"    # Lin/gov/mgov/jh/uid/SplashScreen;

    .prologue
    .line 17
    iput-object p1, p0, Lin/gov/mgov/jh/uid/SplashScreen$1;->this$0:Lin/gov/mgov/jh/uid/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/mgov/jh/uid/SplashScreen$1;->this$0:Lin/gov/mgov/jh/uid/SplashScreen;

    const-class v2, Lin/gov/mgov/jh/uid/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lin/gov/mgov/jh/uid/SplashScreen$1;->this$0:Lin/gov/mgov/jh/uid/SplashScreen;

    invoke-virtual {v1, v0}, Lin/gov/mgov/jh/uid/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 32
    iget-object v1, p0, Lin/gov/mgov/jh/uid/SplashScreen$1;->this$0:Lin/gov/mgov/jh/uid/SplashScreen;

    invoke-virtual {v1}, Lin/gov/mgov/jh/uid/SplashScreen;->finish()V

    .line 33
    return-void
.end method
