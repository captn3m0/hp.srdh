package in.gov.mgov.rajasthanservices;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class AboutActivity$1
  implements View.OnClickListener
{
  AboutActivity$1(AboutActivity paramAboutActivity) {}
  
  public void onClick(View paramView)
  {
    Intent localIntent = new android/content/Intent;
    Context localContext = this$0.getApplicationContext();
    localIntent.<init>(localContext, MainActivity.class);
    this$0.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.rajasthanservices.AboutActivity.1
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */