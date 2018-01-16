.class public Lcom/example/maharashtrasrdh/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/maharashtrasrdh/MainActivity$BackgroundAsyncTask;
    }
.end annotation


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field editMessage:Landroid/widget/EditText;

.field exitBtn:Landroid/widget/Button;

.field private fullMessage:Ljava/lang/String;

.field info:Landroid/widget/EditText;

.field infoBtn:Landroid/widget/Button;

.field private keyword:Ljava/lang/String;

.field private m_Scroll:Landroid/widget/ScrollView;

.field message:Ljava/lang/String;

.field spinnersub:Landroid/widget/Spinner;

.field string1:Ljava/lang/String;

.field private subkeyword:Ljava/lang/String;

.field submitBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string v0, "MH"

    iput-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->keyword:Ljava/lang/String;

    .line 34
    const-string v0, "SRDH"

    iput-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->subkeyword:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "sms":Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    .line 94
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 95
    return-void
.end method


# virtual methods
.method public DisplayToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/example/maharashtrasrdh/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->submitBtn:Landroid/widget/Button;

    if-ne p1, v5, :cond_2

    .line 101
    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->editMessage:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->message:Ljava/lang/String;

    .line 104
    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->message:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->string1:Ljava/lang/String;

    const-string v6, "Select Service"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->editMessage:Landroid/widget/EditText;

    const-string v6, "Please make sure you enter a valid application number & have chosen one service"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/example/maharashtrasrdh/MainActivity;->keyword:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/example/maharashtrasrdh/MainActivity;->subkeyword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/example/maharashtrasrdh/MainActivity;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->fullMessage:Ljava/lang/String;

    .line 108
    new-instance v1, Lcom/example/maharashtrasrdh/MainActivity$BackgroundAsyncTask;

    invoke-direct {v1, p0}, Lcom/example/maharashtrasrdh/MainActivity$BackgroundAsyncTask;-><init>(Lcom/example/maharashtrasrdh/MainActivity;)V

    .line 109
    .local v1, "backgroundTask":Lcom/example/maharashtrasrdh/MainActivity$BackgroundAsyncTask;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v5}, Lcom/example/maharashtrasrdh/MainActivity$BackgroundAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->fullMessage:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/example/maharashtrasrdh/MainActivity;->DisplayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v1    # "backgroundTask":Lcom/example/maharashtrasrdh/MainActivity$BackgroundAsyncTask;
    :cond_2
    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->exitBtn:Landroid/widget/Button;

    if-ne p1, v5, :cond_3

    .line 116
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    const-string v6, "MAHARASHTRA PULL SERVICES"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 118
    const-string v6, "Do you want to Exit?"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 119
    const-string v6, "No"

    new-instance v7, Lcom/example/maharashtrasrdh/MainActivity$3;

    invoke-direct {v7, p0}, Lcom/example/maharashtrasrdh/MainActivity$3;-><init>(Lcom/example/maharashtrasrdh/MainActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 126
    const-string v6, "Yes"

    new-instance v7, Lcom/example/maharashtrasrdh/MainActivity$4;

    invoke-direct {v7, p0}, Lcom/example/maharashtrasrdh/MainActivity$4;-><init>(Lcom/example/maharashtrasrdh/MainActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 133
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 134
    :cond_3
    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->infoBtn:Landroid/widget/Button;

    if-ne p1, v5, :cond_0

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 137
    .local v2, "lila1":Landroid/widget/LinearLayout;
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 138
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v3, "text":Landroid/widget/TextView;
    const v5, -0xffff01

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 145
    .local v4, "text1":Landroid/widget/TextView;
    const-string v5, "About :\nThis application allows us to get the information about the State Resident Data Hub (SRDH).\n\n1. This application is developed by C-DAC, Mumbai.\n2. This application is free for individual and can not be used for commercial purpose.\n3. This application cannot be modified and distributed without permission of C-DAC, Mumbai.\n\nDeveloper :\nC-DAC, Mumbai\n\nFeedback :\nSend your valuable feedback at msdp@cdac.in"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    const v5, 0x7f060002

    invoke-virtual {v4, p0, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 156
    const/16 v5, 0x77

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->m_Scroll:Landroid/widget/ScrollView;

    .line 161
    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->m_Scroll:Landroid/widget/ScrollView;

    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 162
    iget-object v5, p0, Lcom/example/maharashtrasrdh/MainActivity;->m_Scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 164
    const v5, 0x7f020009

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 165
    const-string v5, "MAHARASHTRA PULL SERVICES"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    const-string v5, "Ok"

    new-instance v6, Lcom/example/maharashtrasrdh/MainActivity$5;

    invoke-direct {v6, p0}, Lcom/example/maharashtrasrdh/MainActivity$5;-><init>(Lcom/example/maharashtrasrdh/MainActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/example/maharashtrasrdh/MainActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/example/maharashtrasrdh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->editMessage:Landroid/widget/EditText;

    .line 46
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/example/maharashtrasrdh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->info:Landroid/widget/EditText;

    .line 47
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/example/maharashtrasrdh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->exitBtn:Landroid/widget/Button;

    .line 48
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/example/maharashtrasrdh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->submitBtn:Landroid/widget/Button;

    .line 49
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/example/maharashtrasrdh/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->infoBtn:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->submitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->exitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/example/maharashtrasrdh/MainActivity;->infoBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/example/maharashtrasrdh/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 67
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v1, "MAHARASHTRA PULL SERVICES"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    const-string v1, "Do you want to Exit?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    const-string v1, "No"

    new-instance v2, Lcom/example/maharashtrasrdh/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/example/maharashtrasrdh/MainActivity$1;-><init>(Lcom/example/maharashtrasrdh/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    const-string v1, "Yes"

    new-instance v2, Lcom/example/maharashtrasrdh/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/example/maharashtrasrdh/MainActivity$2;-><init>(Lcom/example/maharashtrasrdh/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
