package in.gov.mgov.jh.uid;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class Connectioncheck
{
  public static int typeofConnectedNetwork(Context paramContext, ConnectivityManager paramConnectivityManager)
  {
    if (paramConnectivityManager.getNetworkInfo(1).isConnected()) {
      return 1;
    }
    if (paramConnectivityManager.getNetworkInfo(0).isConnected()) {
      return 2;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.Connectioncheck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */