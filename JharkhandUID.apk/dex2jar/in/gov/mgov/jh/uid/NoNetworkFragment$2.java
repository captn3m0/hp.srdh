package in.gov.mgov.jh.uid;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class NoNetworkFragment$2
  implements View.OnClickListener
{
  NoNetworkFragment$2(NoNetworkFragment paramNoNetworkFragment) {}
  
  public void onClick(View paramView)
  {
    this$0.startActivityForResult(new Intent("android.settings.SETTINGS"), 1);
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.NoNetworkFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */