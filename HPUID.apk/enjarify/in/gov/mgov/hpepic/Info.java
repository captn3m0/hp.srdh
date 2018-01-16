package in.gov.mgov.hpepic;

import android.app.Activity;
import android.app.AlertDialog.Builder;
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
    AlertDialog.Builder localBuilder = new android/app/AlertDialog$Builder;
    localBuilder.<init>(this);
    LinearLayout localLinearLayout = new android/widget/LinearLayout;
    localLinearLayout.<init>(this);
    localLinearLayout.setBackgroundColor(-1);
    localLinearLayout.setOrientation(1);
    TextView localTextView1 = new android/widget/TextView;
    localTextView1.<init>(this);
    localTextView1.setTextColor(17170444);
    TextView localTextView2 = new android/widget/TextView;
    localTextView2.<init>(this);
    localTextView2.setText("About :\nThis application is built for Himanchal Pradesh Citizen to provide them with their uid number. It helps citizen availing these pull services easily and faster.\n\n1. This application is developed by C-DAC, Mumbai.\n2. This application is free for individual and can not be used for commercial purpose.\n3. This application cannot be modified and distributed without permission of C-DAC, Mumbai.\n\nDeveloper :\nC-DAC, Mumbai\n\nFeedback :\nSend your valuable feedback at msdp@cdac.in");
    localTextView2.setTextColor(-16777216);
    localTextView2.setTextAppearance(this, 2131165186);
    localTextView2.setGravity(119);
    localLinearLayout.addView(localTextView1);
    localLinearLayout.addView(localTextView2);
    ScrollView localScrollView = new android/widget/ScrollView;
    localScrollView.<init>(this);
    m_Scroll = localScrollView;
    m_Scroll.addView(localLinearLayout);
    localScrollView = m_Scroll;
    localBuilder.setView(localScrollView);
    localBuilder.setIcon(2130837506);
    localBuilder.setTitle("Himanchal Pradesh Services");
    Info.1 local1 = new in/gov/mgov/hpepic/Info$1;
    local1.<init>(this);
    localBuilder.setPositiveButton("Ok", local1);
    localBuilder.show();
  }
  
  protected void onPause()
  {
    super.onPause();
    super.finish();
    Process.killProcess(Process.myPid());
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.hpepic.Info
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */