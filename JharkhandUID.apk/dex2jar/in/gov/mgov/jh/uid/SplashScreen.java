package in.gov.mgov.jh.uid;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

public class SplashScreen
  extends Activity
{
  private static int SPLASH_TIME_OUT = 3000;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968601);
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        Intent localIntent = new Intent(SplashScreen.this, MainActivity.class);
        startActivity(localIntent);
        finish();
      }
    }, SPLASH_TIME_OUT);
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.SplashScreen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */