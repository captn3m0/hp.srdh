.class Lcom/example/maharashtrasrdh/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/maharashtrasrdh/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/maharashtrasrdh/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/maharashtrasrdh/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/maharashtrasrdh/MainActivity$3;->this$0:Lcom/example/maharashtrasrdh/MainActivity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 124
    return-void
.end method
