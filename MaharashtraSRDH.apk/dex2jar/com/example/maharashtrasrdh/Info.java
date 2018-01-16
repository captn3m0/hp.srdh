package com.example.maharashtrasrdh;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

public class Info
  extends Activity
{
  public static String value;
  private ScrollView m_Scroll;
  String result;
  
  public void finish()
  {
    System.exit(0);
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903042);
    paramBundle = new AlertDialog.Builder(this);
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setBackgroundColor(-1);
    localLinearLayout.setOrientation(1);
    TextView localTextView1 = new TextView(this);
    localTextView1.setTextColor(17170444);
    TextView localTextView2 = new TextView(this);
    localTextView2.setText("About :\nThis application allows us to get the information about the State Resident Data Hub (SRDH).\n\n1. This application is developed by C-DAC, Mumbai.\n2. This application is free for individual and can not be used for commercial purpose.\n3. This application cannot be modified and distributed without permission of C-DAC, Mumbai.\n\nDeveloper :\nC-DAC, Mumbai\n\nFeedback :\nSend your valuable feedback at msdp@cdac.in");
    localTextView2.setTextColor(-16777216);
    localTextView2.setTextAppearance(this, 2131099650);
    localTextView2.setGravity(119);
    localLinearLayout.addView(localTextView1);
    localLinearLayout.addView(localTextView2);
    m_Scroll = new ScrollView(this);
    m_Scroll.addView(localLinearLayout);
    paramBundle.setView(m_Scroll);
    paramBundle.setIcon(2130837513);
    paramBundle.setTitle("MAHARASHTRA PULL SERVICES");
    paramBundle.setPositiveButton("Ok", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = new Intent(getApplicationContext(), MainActivity.class);
        startActivity(paramAnonymousDialogInterface);
      }
    });
    paramBundle.show();
  }
  
  protected void onPause()
  {
    super.onPause();
    super.finish();
    Process.killProcess(Process.myPid());
  }
}

/* Location:
 * Qualified Name:     com.example.maharashtrasrdh.Info
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */