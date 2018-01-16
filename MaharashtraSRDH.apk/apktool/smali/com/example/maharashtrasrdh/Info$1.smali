.class Lcom/example/maharashtrasrdh/Info$1;
.super Ljava/lang/Object;
.source "Info.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/maharashtrasrdh/Info;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/maharashtrasrdh/Info;


# direct methods
.method constructor <init>(Lcom/example/maharashtrasrdh/Info;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/maharashtrasrdh/Info$1;->this$0:Lcom/example/maharashtrasrdh/Info;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/maharashtrasrdh/Info$1;->this$0:Lcom/example/maharashtrasrdh/Info;

    invoke-virtual {v1}, Lcom/example/maharashtrasrdh/Info;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/maharashtrasrdh/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/maharashtrasrdh/Info$1;->this$0:Lcom/example/maharashtrasrdh/Info;

    invoke-virtual {v1, v0}, Lcom/example/maharashtrasrdh/Info;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
