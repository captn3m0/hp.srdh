package in.gov.mgov.hpepic;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

class AboutActivity$SplashHandler
  extends Handler
{
  private AboutActivity$SplashHandler(AboutActivity paramAboutActivity) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    int i = what;
    switch (i)
    {
    }
    for (;;)
    {
      return;
      Intent localIntent = new android/content/Intent;
      Object localObject = this$0.getApplicationContext();
      Class localClass = Info.class;
      localIntent.<init>((Context)localObject, localClass);
      this$0.startActivity(localIntent);
      localObject = this$0;
      ((AboutActivity)localObject).finish();
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.hpepic.AboutActivity.SplashHandler
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */