package com.example.maharashtrasrdh;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.RelativeLayout;

public class AboutActivity
  extends Activity
{
  private static final long SPLASHTIME = 5000L;
  private static final int STOPSPLASH = 0;
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
    paramBundle = new SplashHandler(null);
    Message localMessage = new Message();
    what = 0;
    paramBundle.sendMessageDelayed(localMessage, 5000L);
    relativeLayout = ((RelativeLayout)findViewById(2131230720));
    relativeLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(getApplicationContext(), MainActivity.class);
        startActivity(paramAnonymousView);
      }
    });
  }
  
  protected void onPause()
  {
    super.onPause();
    super.finish();
    Process.killProcess(Process.myPid());
  }
  
  private class SplashHandler
    extends Handler
  {
    private SplashHandler() {}
    
    public void handleMessage(Message paramMessage)
    {
      super.handleMessage(paramMessage);
      switch (what)
      {
      default: 
        return;
      }
      paramMessage = new Intent(getApplicationContext(), Info.class);
      startActivity(paramMessage);
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.example.maharashtrasrdh.AboutActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */