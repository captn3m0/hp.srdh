package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Intent;

class s
  implements Runnable
{
  s(SplashScreen paramSplashScreen) {}
  
  public void run()
  {
    Intent localIntent = new android/content/Intent;
    SplashScreen localSplashScreen = a;
    localIntent.<init>(localSplashScreen, LoginActivity.class);
    a.startActivity(localIntent);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.s
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */