package in.gov.mgov.rajasthanservices;

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
    switch (what)
    {
    default: 
      return;
    }
    paramMessage = new Intent(this$0.getApplicationContext(), Info.class);
    this$0.startActivity(paramMessage);
    this$0.finish();
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.rajasthanservices.AboutActivity.SplashHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */