.class Lin/gov/mgov/jh/uid/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/gov/mgov/jh/uid/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/gov/mgov/jh/uid/MainActivity;


# direct methods
.method constructor <init>(Lin/gov/mgov/jh/uid/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lin/gov/mgov/jh/uid/MainActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lin/gov/mgov/jh/uid/MainActivity$2;->this$0:Lin/gov/mgov/jh/uid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 136
    return-void
.end method
