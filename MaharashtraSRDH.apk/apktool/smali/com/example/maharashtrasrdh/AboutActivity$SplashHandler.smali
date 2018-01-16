.class Lcom/example/maharashtrasrdh/AboutActivity$SplashHandler;
.super Landroid/os/Handler;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/maharashtrasrdh/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/maharashtrasrdh/AboutActivity;


# direct methods
.method private constructor <init>(Lcom/example/maharashtrasrdh/AboutActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/example/maharashtrasrdh/AboutActivity$SplashHandler;->this$0:Lcom/example/maharashtrasrdh/AboutActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/maharashtrasrdh/AboutActivity;Lcom/example/maharashtrasrdh/AboutActivity$SplashHandler;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/example/maharashtrasrdh/AboutActivity$SplashHandler;-><init>(Lcom/example/maharashtrasrdh/AboutActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 66
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/maharashtrasrdh/AboutActivity$SplashHandler;->this$0:Lcom/example/maharashtrasrdh/AboutActivity;

    invoke-virtual {v1}, Lcom/example/maharashtrasrdh/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/maharashtrasrdh/Info;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/maharashtrasrdh/AboutActivity$SplashHandler;->this$0:Lcom/example/maharashtrasrdh/AboutActivity;

    invoke-virtual {v1, v0}, Lcom/example/maharashtrasrdh/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    iget-object v1, p0, Lcom/example/maharashtrasrdh/AboutActivity$SplashHandler;->this$0:Lcom/example/maharashtrasrdh/AboutActivity;

    invoke-virtual {v1}, Lcom/example/maharashtrasrdh/AboutActivity;->finish()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
