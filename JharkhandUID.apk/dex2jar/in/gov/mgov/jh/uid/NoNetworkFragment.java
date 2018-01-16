package in.gov.mgov.jh.uid;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;

public class NoNetworkFragment
  extends Fragment
{
  Button goToSettings;
  Button retry;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130968617, null);
    retry = ((Button)paramLayoutInflater.findViewById(2131492987));
    goToSettings = ((Button)paramLayoutInflater.findViewById(2131492988));
    retry.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = getActivity();
        getActivity();
        paramAnonymousView = (ConnectivityManager)paramAnonymousView.getSystemService("connectivity");
        if (Connectioncheck.typeofConnectedNetwork(getActivity(), paramAnonymousView) != 0) {
          getActivity().finish();
        }
      }
    });
    goToSettings.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivityForResult(new Intent("android.settings.SETTINGS"), 1);
      }
    });
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.NoNetworkFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */