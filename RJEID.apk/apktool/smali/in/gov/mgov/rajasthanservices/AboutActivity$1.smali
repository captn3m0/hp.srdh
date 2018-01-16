.class Lin/gov/mgov/rajasthanservices/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/gov/mgov/rajasthanservices/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/gov/mgov/rajasthanservices/AboutActivity;


# direct methods
.method constructor <init>(Lin/gov/mgov/rajasthanservices/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lin/gov/mgov/rajasthanservices/AboutActivity$1;->this$0:Lin/gov/mgov/rajasthanservices/AboutActivity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lin/gov/mgov/rajasthanservices/AboutActivity$1;->this$0:Lin/gov/mgov/rajasthanservices/AboutActivity;

    invoke-virtual {v1}, Lin/gov/mgov/rajasthanservices/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lin/gov/mgov/rajasthanservices/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lin/gov/mgov/rajasthanservices/AboutActivity$1;->this$0:Lin/gov/mgov/rajasthanservices/AboutActivity;

    invoke-virtual {v1, v0}, Lin/gov/mgov/rajasthanservices/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method
