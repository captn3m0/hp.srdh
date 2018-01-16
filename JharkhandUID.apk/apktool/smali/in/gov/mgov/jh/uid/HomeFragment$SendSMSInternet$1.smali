.class Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$1"    # Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;

    .prologue
    .line 319
    iput-object p1, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet$1;->this$1:Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;

    iput-object p2, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet$1;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet$1;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 325
    return-void
.end method
