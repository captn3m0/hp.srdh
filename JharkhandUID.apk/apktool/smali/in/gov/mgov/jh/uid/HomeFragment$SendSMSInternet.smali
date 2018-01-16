.class Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;
.super Landroid/os/AsyncTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/gov/mgov/jh/uid/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendSMSInternet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lin/gov/mgov/jh/uid/HomeFragment;


# direct methods
.method constructor <init>(Lin/gov/mgov/jh/uid/HomeFragment;)V
    .locals 1
    .param p1, "this$0"    # Lin/gov/mgov/jh/uid/HomeFragment;

    .prologue
    .line 212
    iput-object p1, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->pd:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 229
    const/4 v14, 0x0

    .line 231
    .local v14, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x0

    .line 232
    .local v12, "str":Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v5, p1, v15

    .line 233
    .local v5, "mobno":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v11, p1, v15

    .line 237
    .local v11, "prm":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const-string v15, "http://msdgweb.mgov.gov.in/esms/smspullrequest"

    invoke-direct {v13, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 241
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v14, v0

    .line 242
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 243
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 245
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 246
    const-string v15, "POST"

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 248
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 249
    .local v6, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v15, "keyword"

    const-string v16, "JH"

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v15, "subkey"

    const-string v16, "UID"

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v15, "mobilno"

    invoke-interface {v6, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v15, "message"

    invoke-interface {v6, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v15, "operatorname"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v15, "areacode"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v6, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v8, "postData":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 263
    .local v7, "param1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x26

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const/16 v15, 0x3d

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 288
    .end local v6    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "param1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "postData":Ljava/lang/StringBuilder;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 297
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :goto_1
    return-object v12

    .line 268
    .restart local v6    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "postData":Ljava/lang/StringBuilder;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 269
    .local v9, "postDataBytes":[B
    array-length v10, v9

    .line 271
    .local v10, "postDataLength":I
    const-string v15, "charset"

    const-string v16, "utf-8"

    invoke-virtual/range {v14 .. v16}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v15, "Content-Length"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 275
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/io/OutputStream;->write([B)V

    .line 281
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v3, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 283
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 284
    .local v4, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 285
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 293
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 290
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "postData":Ljava/lang/StringBuilder;
    .end local v9    # "postDataBytes":[B
    .end local v10    # "postDataLength":I
    .end local v13    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 291
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v15
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 212
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 304
    iget-object v3, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 305
    iget-object v3, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-virtual {v3}, Lin/gov/mgov/jh/uid/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 307
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-virtual {v3}, Lin/gov/mgov/jh/uid/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, "d":Landroid/app/Dialog;
    const-string v3, "Response From Pull Service"

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    const v3, 0x7f040035

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 313
    const v3, 0x7f0c007b

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 314
    .local v1, "ok":Landroid/widget/Button;
    const v3, 0x7f0c006c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 316
    .local v2, "responsetv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 319
    new-instance v3, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet$1;

    invoke-direct {v3, p0, v0}, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet$1;-><init>(Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 219
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->this$0:Lin/gov/mgov/jh/uid/HomeFragment;

    invoke-virtual {v1}, Lin/gov/mgov/jh/uid/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->pd:Landroid/app/ProgressDialog;

    .line 220
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->pd:Landroid/app/ProgressDialog;

    const-string v1, "loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 223
    iget-object v0, p0, Lin/gov/mgov/jh/uid/HomeFragment$SendSMSInternet;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 225
    return-void
.end method
