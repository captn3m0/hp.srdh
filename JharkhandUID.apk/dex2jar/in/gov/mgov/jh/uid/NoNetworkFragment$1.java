package in.gov.mgov.jh.uid;

import android.app.Activity;
import android.net.ConnectivityManager;
import android.view.View;
import android.view.View.OnClickListener;

class NoNetworkFragment$1
  implements View.OnClickListener
{
  NoNetworkFragment$1(NoNetworkFragment paramNoNetworkFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = this$0.getActivity();
    this$0.getActivity();
    paramView = (ConnectivityManager)paramView.getSystemService("connectivity");
    if (Connectioncheck.typeofConnectedNetwork(this$0.getActivity(), paramView) != 0) {
      this$0.getActivity().finish();
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.NoNetworkFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */