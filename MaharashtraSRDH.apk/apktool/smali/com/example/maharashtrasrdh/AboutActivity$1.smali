.class Lcom/example/maharashtrasrdh/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/maharashtrasrdh/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/maharashtrasrdh/AboutActivity;


# direct methods
.method constructor <init>(Lcom/example/maharashtrasrdh/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/maharashtrasrdh/AboutActivity$1;->this$0:Lcom/example/maharashtrasrdh/AboutActivity;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/maharashtrasrdh/AboutActivity$1;->this$0:Lcom/example/maharashtrasrdh/AboutActivity;

    invoke-virtual {v1}, Lcom/example/maharashtrasrdh/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/maharashtrasrdh/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/maharashtrasrdh/AboutActivity$1;->this$0:Lcom/example/maharashtrasrdh/AboutActivity;

    invoke-virtual {v1, v0}, Lcom/example/maharashtrasrdh/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
