.class Lcom/example/maharashtrasrdh/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/maharashtrasrdh/MainActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
    iput-object p1, p0, Lcom/example/maharashtrasrdh/MainActivity$2;->this$0:Lcom/example/maharashtrasrdh/MainActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 84
    iget-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity$2;->this$0:Lcom/example/maharashtrasrdh/MainActivity;

    invoke-virtual {v0}, Lcom/example/maharashtrasrdh/MainActivity;->finish()V

    .line 85
    return-void
.end method
