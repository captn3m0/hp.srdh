.class Lin/gov/mgov/rajasthanservices/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/gov/mgov/rajasthanservices/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/gov/mgov/rajasthanservices/MainActivity;


# direct methods
.method constructor <init>(Lin/gov/mgov/rajasthanservices/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lin/gov/mgov/rajasthanservices/MainActivity$5;->this$0:Lin/gov/mgov/rajasthanservices/MainActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 172
    return-void
.end method
