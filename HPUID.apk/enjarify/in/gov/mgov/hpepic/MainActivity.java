package in.gov.mgov.hpepic;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity
  extends Activity
  implements View.OnClickListener
{
  ArrayAdapter adapter;
  EditText editMessage;
  Button exitBtn;
  private String fullMessage;
  EditText info;
  Button infoBtn;
  private String keyword = "HP";
  private ScrollView m_Scroll;
  String message;
  Spinner spinnersub;
  String string1;
  private String subkeyword = "UID";
  Button submitBtn;
  
  private void sendSMS(String paramString1, String paramString2)
  {
    SmsManager.getDefault().sendTextMessage(paramString1, null, paramString2, null, null);
  }
  
  public void DisplayToast(String paramString)
  {
    Toast.makeText(getBaseContext(), paramString, 0).show();
  }
  
  public void onClick(View paramView)
  {
    Object localObject1 = submitBtn;
    Object localObject2;
    boolean bool;
    if (paramView == localObject1)
    {
      localObject1 = editMessage.getText().toString();
      message = ((String)localObject1);
      localObject1 = message;
      int i = ((String)localObject1).length();
      if (i == 0)
      {
        localObject1 = string1;
        localObject2 = "Select Service";
        bool = ((String)localObject1).equalsIgnoreCase((String)localObject2);
        if (bool)
        {
          localObject1 = editMessage;
          localObject2 = "Please make sure you enter a valid application number & have chosen one service";
          ((EditText)localObject1).setError((CharSequence)localObject2);
        }
      }
    }
    for (;;)
    {
      return;
      localObject1 = new java/lang/StringBuilder;
      localObject2 = String.valueOf(keyword);
      ((StringBuilder)localObject1).<init>((String)localObject2);
      localObject1 = ((StringBuilder)localObject1).append(" ");
      localObject2 = subkeyword;
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2).append(" ");
      localObject2 = message;
      localObject1 = (String)localObject2;
      fullMessage = ((String)localObject1);
      MainActivity.BackgroundAsyncTask localBackgroundAsyncTask = new in/gov/mgov/hpepic/MainActivity$BackgroundAsyncTask;
      localBackgroundAsyncTask.<init>(this);
      bool = false;
      localObject1 = new Void[0];
      localBackgroundAsyncTask.execute((Object[])localObject1);
      localObject1 = fullMessage;
      DisplayToast((String)localObject1);
      continue;
      localObject1 = exitBtn;
      if (paramView == localObject1)
      {
        localObject1 = new android/app/AlertDialog$Builder;
        ((AlertDialog.Builder)localObject1).<init>(this);
        localObject1 = ((AlertDialog.Builder)localObject1).setTitle("Himanchal Pradesh Services").setMessage("Do you want to Exit?");
        Object localObject3 = new in/gov/mgov/hpepic/MainActivity$3;
        ((MainActivity.3)localObject3).<init>(this);
        localObject1 = ((AlertDialog.Builder)localObject1).setNeutralButton("No", (DialogInterface.OnClickListener)localObject3);
        localObject2 = "Yes";
        localObject3 = new in/gov/mgov/hpepic/MainActivity$4;
        ((MainActivity.4)localObject3).<init>(this);
        localObject1 = ((AlertDialog.Builder)localObject1).setPositiveButton((CharSequence)localObject2, (DialogInterface.OnClickListener)localObject3);
        ((AlertDialog.Builder)localObject1).show();
      }
      else
      {
        localObject1 = infoBtn;
        if (paramView == localObject1)
        {
          AlertDialog.Builder localBuilder = new android/app/AlertDialog$Builder;
          localBuilder.<init>(this);
          LinearLayout localLinearLayout = new android/widget/LinearLayout;
          localLinearLayout.<init>(this);
          localLinearLayout.setBackgroundColor(-1);
          localLinearLayout.setOrientation(1);
          TextView localTextView1 = new android/widget/TextView;
          localTextView1.<init>(this);
          localTextView1.setTextColor(-16776961);
          TextView localTextView2 = new android/widget/TextView;
          localTextView2.<init>(this);
          localTextView2.setText("About :\nThis application is built for Himanchal Pradesh Citizen to provide them with their uid number. It helps citizen availing these pull services easily and faster.\n\n1. This application is developed by C-DAC, Mumbai.\n2. This application is free for individual and can not be used for commercial purpose.\n3. This application cannot be modified and distributed without permission of C-DAC, Mumbai.\n\nDeveloper :\nC-DAC, Mumbai\n\nFeedback :\nSend your valuable feedback at msdp@cdac.in");
          localTextView2.setTextColor(-16777216);
          localTextView2.setTextAppearance(this, 2131165186);
          localTextView2.setGravity(119);
          localLinearLayout.addView(localTextView1);
          localLinearLayout.addView(localTextView2);
          localObject1 = new android/widget/ScrollView;
          ((ScrollView)localObject1).<init>(this);
          m_Scroll = ((ScrollView)localObject1);
          m_Scroll.addView(localLinearLayout);
          localObject1 = m_Scroll;
          localBuilder.setView((View)localObject1);
          int j = 2130837506;
          localBuilder.setIcon(j);
          localBuilder.setTitle("Himanchal Pradesh Services");
          localObject1 = "Ok";
          localObject2 = new in/gov/mgov/hpepic/MainActivity$5;
          ((MainActivity.5)localObject2).<init>(this);
          localBuilder.setPositiveButton((CharSequence)localObject1, (DialogInterface.OnClickListener)localObject2);
          localBuilder.show();
        }
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    Object localObject = (EditText)findViewById(2131296271);
    editMessage = ((EditText)localObject);
    localObject = (EditText)findViewById(2131296270);
    info = ((EditText)localObject);
    localObject = (Button)findViewById(2131296266);
    exitBtn = ((Button)localObject);
    localObject = (Button)findViewById(2131296267);
    submitBtn = ((Button)localObject);
    localObject = (Button)findViewById(2131296268);
    infoBtn = ((Button)localObject);
    submitBtn.setOnClickListener(this);
    exitBtn.setOnClickListener(this);
    infoBtn.setOnClickListener(this);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131230720, paramMenu);
    return true;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    int i = 4;
    if (paramInt == i)
    {
      AlertDialog.Builder localBuilder = new android/app/AlertDialog$Builder;
      localBuilder.<init>(this);
      localBuilder = localBuilder.setTitle("Himanchal Pradesh Services").setMessage("Do you want to Exit?");
      Object localObject = new in/gov/mgov/hpepic/MainActivity$1;
      ((MainActivity.1)localObject).<init>(this);
      localBuilder = localBuilder.setNeutralButton("No", (DialogInterface.OnClickListener)localObject);
      String str = "Yes";
      localObject = new in/gov/mgov/hpepic/MainActivity$2;
      ((MainActivity.2)localObject).<init>(this);
      localBuilder = localBuilder.setPositiveButton(str, (DialogInterface.OnClickListener)localObject);
      localBuilder.show();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.hpepic.MainActivity
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */