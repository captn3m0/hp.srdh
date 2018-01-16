.class Lin/gov/hp/Aadhaar_HP/SRDH/b;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;


# direct methods
.method constructor <init>(Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;)V
    .locals 1

    iput-object p1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    new-instance v1, Ljava/net/URL;

    const-string v2, "http://hp.gov.in/uidreport/AWW.svc/Search"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->i:Ljava/net/URL;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->i:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "HPSRDH_Search"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "District"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "F_H_Name"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "DOB"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "Pincode"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#############"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v2, v2, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@@@@@@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v2, v2, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v2, v2, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->k:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v3, v3, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@@@@@@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :cond_2
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v1, v1, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v1, v1, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v1, v1, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    invoke-static {p1}, Lin/gov/hp/Aadhaar_HP/SRDH/z;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->h:Ljava/util/List;

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No match found"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->b()V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Only the top 100 results are being displayed. Please be more specific. "

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    invoke-virtual {v0}, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->b()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lin/gov/hp/Aadhaar_HP/SRDH/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lin/gov/hp/Aadhaar_HP/SRDH/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lin/gov/hp/Aadhaar_HP/SRDH/b;->b:Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;

    iget-object v0, v0, Lin/gov/hp/Aadhaar_HP/SRDH/AdvancedListFive;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
