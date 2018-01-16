package in.gov.mgov.jh.uid;

import android.content.Intent;

class SplashScreen$1
  implements Runnable
{
  SplashScreen$1(SplashScreen paramSplashScreen) {}
  
  public void run()
  {
    Intent localIntent = new Intent(this$0, MainActivity.class);
    this$0.startActivity(localIntent);
    this$0.finish();
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.SplashScreen.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */