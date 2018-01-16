.class Lin/gov/mgov/hpepic/MainActivity$4;
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
    iput-object p1, p0, Lin/gov/mgov/hpepic/MainActivity$4;->this$0:Lin/gov/mgov/hpepic/MainActivity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 135
    iget-object v0, p0, Lin/gov/mgov/hpepic/MainActivity$4;->this$0:Lin/gov/mgov/hpepic/MainActivity;

    invoke-virtual {v0}, Lin/gov/mgov/hpepic/MainActivity;->finish()V

    .line 136
    return-void
.end method
