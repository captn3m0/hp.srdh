.class Lin/gov/mgov/hpepic/Info$1;
.super Ljava/lang/Object;
.source "Info.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/gov/mgov/hpepic/Info;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/gov/mgov/hpepic/Info;


# direct methods
.method constructor <init>(Lin/gov/mgov/hpepic/Info;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lin/gov/mgov/hpepic/Info$1;->this$0:Lin/gov/mgov/hpepic/Info;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/mgov/hpepic/Info$1;->this$0:Lin/gov/mgov/hpepic/Info;

    invoke-virtual {v1}, Lin/gov/mgov/hpepic/Info;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lin/gov/mgov/hpepic/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lin/gov/mgov/hpepic/Info$1;->this$0:Lin/gov/mgov/hpepic/Info;

    invoke-virtual {v1, v0}, Lin/gov/mgov/hpepic/Info;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
