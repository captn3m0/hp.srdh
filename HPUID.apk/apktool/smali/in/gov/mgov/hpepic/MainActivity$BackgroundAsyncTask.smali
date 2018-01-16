.class public Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/gov/mgov/hpepic/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field myProgress:I

.field final synthetic this$0:Lin/gov/mgov/hpepic/MainActivity;


# direct methods
.method public constructor <init>(Lin/gov/mgov/hpepic/MainActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->this$0:Lin/gov/mgov/hpepic/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 195
    :goto_0
    iget v0, p0, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->myProgress:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    iget v0, p0, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->myProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->myProgress:I

    .line 197
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    iget v2, p0, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->myProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 198
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 212
    iget-object v0, p0, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->this$0:Lin/gov/mgov/hpepic/MainActivity;

    const-string v1, "Message Sent"

    invoke-virtual {v0, v1}, Lin/gov/mgov/hpepic/MainActivity;->DisplayToast(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->this$0:Lin/gov/mgov/hpepic/MainActivity;

    iget-object v0, v0, Lin/gov/mgov/hpepic/MainActivity;->editMessage:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->this$0:Lin/gov/mgov/hpepic/MainActivity;

    const-string v1, "Sending....."

    invoke-virtual {v0, v1}, Lin/gov/mgov/hpepic/MainActivity;->DisplayToast(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->myProgress:I

    .line 190
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 207
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lin/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
