package com.example.maharashtrasrdh;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.os.Process;
import android.view.Window;
import android.widget.RelativeLayout;

public class AboutActivity
  extends Activity
{
  private static final long SPLASHTIME = 5000L;
  private static final int STOPSPLASH;
  RelativeLayout relativeLayout;
  
  public void finish()
  {
    System.exit(0);
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().addFlags(128);
    setContentView(2130903040);
    AboutActivity.SplashHandler localSplashHandler = new com/example/maharashtrasrdh/AboutActivity$SplashHandler;
    localSplashHandler.<init>(this, null);
    Message localMessage = new android/os/Message;
    localMessage.<init>();
    what = 0;
    localSplashHandler.sendMessageDelayed(localMessage, 5000L);
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131230720);
    relativeLayout = localRelativeLayout;
    localRelativeLayout = relativeLayout;
    AboutActivity.1 local1 = new com/example/maharashtrasrdh/AboutActivity$1;
    local1.<init>(this);
    localRelativeLayout.setOnClickListener(local1);
  }
  
  protected void onPause()
  {
    super.onPause();
    super.finish();
    Process.killProcess(Process.myPid());
  }
}

/* Location:
 * Qualified Name:     com.example.maharashtrasrdh.AboutActivity
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */