package in.gov.mgov.rajasthanservices;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemClock;
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
  ArrayAdapter<CharSequence> adapter;
  EditText editMessage;
  Button exitBtn;
  private String fullMessage;
  EditText info;
  Button infoBtn;
  private String keyword = "RJ";
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
    if (paramView == submitBtn)
    {
      message = editMessage.getText().toString();
      if ((message.length() == 0) && (string1.equalsIgnoreCase("Select Service"))) {
        editMessage.setError("Please make sure you enter a valid application number & have chosen one service");
      }
    }
    do
    {
      return;
      fullMessage = (keyword + " " + subkeyword + " " + message);
      new BackgroundAsyncTask().execute(new Void[0]);
      DisplayToast(fullMessage);
      return;
      if (paramView == exitBtn)
      {
        new AlertDialog.Builder(this).setTitle("Rajasthan Services").setMessage("Do you want to Exit?").setNeutralButton("No", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.cancel();
          }
        }).setPositiveButton("Yes", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            System.exit(0);
            finish();
          }
        }).show();
        return;
      }
    } while (paramView != infoBtn);
    paramView = new AlertDialog.Builder(this);
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setBackgroundColor(-1);
    localLinearLayout.setOrientation(1);
    TextView localTextView1 = new TextView(this);
    localTextView1.setTextColor(-16776961);
    TextView localTextView2 = new TextView(this);
    localTextView2.setText("About :\nThe service can be used by the Citizens of Rajasthan state to retrieve their Enrollment Number (EID) based on the UID number provided. \n\n1. This application is developed by C-DAC, Mumbai.\n2. This application is free for individual and can not be used for commercial purpose.\n3. This application cannot be modified and distributed without permission of C-DAC, Mumbai.\n\nDeveloper :\nC-DAC, Mumbai\n\nFeedback :\nSend your valuable feedback at msdp@cdac.in");
    localTextView2.setTextColor(-16777216);
    localTextView2.setTextAppearance(this, 2131099650);
    localTextView2.setGravity(119);
    localLinearLayout.addView(localTextView1);
    localLinearLayout.addView(localTextView2);
    m_Scroll = new ScrollView(this);
    m_Scroll.addView(localLinearLayout);
    paramView.setView(m_Scroll);
    paramView.setIcon(2130837505);
    paramView.setTitle("Rajasthan Services");
    paramView.setPositiveButton("Ok", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    paramView.show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    editMessage = ((EditText)findViewById(2131230737));
    info = ((EditText)findViewById(2131230734));
    exitBtn = ((Button)findViewById(2131230730));
    submitBtn = ((Button)findViewById(2131230731));
    infoBtn = ((Button)findViewById(2131230732));
    submitBtn.setOnClickListener(this);
    exitBtn.setOnClickListener(this);
    infoBtn.setOnClickListener(this);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131165184, paramMenu);
    return true;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      new AlertDialog.Builder(this).setTitle("Rajasthan Services").setMessage("Do you want to Exit?").setNeutralButton("No", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.cancel();
        }
      }).setPositiveButton("Yes", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          System.exit(0);
          finish();
        }
      }).show();
    }
    return false;
  }
  
  public class BackgroundAsyncTask
    extends AsyncTask<Void, Integer, Void>
  {
    int myProgress;
    
    public BackgroundAsyncTask() {}
    
    protected Void doInBackground(Void... paramVarArgs)
    {
      for (;;)
      {
        if (myProgress >= 100) {
          return null;
        }
        myProgress += 1;
        publishProgress(new Integer[] { Integer.valueOf(myProgress) });
        SystemClock.sleep(30L);
      }
    }
    
    protected void onPostExecute(Void paramVoid)
    {
      DisplayToast("Message Sent");
      editMessage.setText("");
    }
    
    protected void onPreExecute()
    {
      DisplayToast("Sending.....");
      myProgress = 0;
    }
    
    protected void onProgressUpdate(Integer... paramVarArgs) {}
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.rajasthanservices.MainActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */