.class Lin/gov/mgov/hpepic/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/gov/mgov/hpepic/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/gov/mgov/hpepic/MainActivity;


# direct methods
.method constructor <init>(Lin/gov/mgov/hpepic/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lin/gov/mgov/hpepic/MainActivity$3;->this$0:Lin/gov/mgov/hpepic/MainActivity;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 128
    return-void
.end method
