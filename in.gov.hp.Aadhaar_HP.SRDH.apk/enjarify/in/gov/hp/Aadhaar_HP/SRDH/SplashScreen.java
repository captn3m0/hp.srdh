package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;

public class SplashScreen
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968605);
    Handler localHandler = new android/os/Handler;
    localHandler.<init>();
    s locals = new in/gov/hp/Aadhaar_HP/SRDH/s;
    locals.<init>(this);
    localHandler.postDelayed(locals, 2500L);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.SplashScreen
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */