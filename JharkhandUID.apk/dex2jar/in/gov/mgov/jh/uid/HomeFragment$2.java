package in.gov.mgov.jh.uid;

import android.app.Activity;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Spinner;

class HomeFragment$2
  implements View.OnClickListener
{
  HomeFragment$2(HomeFragment paramHomeFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = this$0.parameterEt.getText().toString();
    String str = this$0.mobilenoEt.getText().toString();
    Object localObject = (String)this$0.typeSpinner.getSelectedItem();
    if (((String)localObject).equalsIgnoreCase("SMS"))
    {
      this$0.sendSMSRegular(paramView);
      this$0.parameterEt.setText("");
    }
    int i;
    if (((String)localObject).equalsIgnoreCase("Internet"))
    {
      localObject = this$0.getActivity();
      this$0.getActivity();
      localObject = (ConnectivityManager)((Activity)localObject).getSystemService("connectivity");
      i = Connectioncheck.typeofConnectedNetwork(this$0.getActivity(), (ConnectivityManager)localObject);
      if ((str.equals("") | paramView.equals(""))) {
        this$0.mobilenoEt.setError("Please Enter valid parameter and mobile number");
      }
    }
    else
    {
      return;
    }
    if (i == 0)
    {
      paramView = new Intent(this$0.getActivity(), NoNetwork.class);
      this$0.startActivity(paramView);
      return;
    }
    new HomeFragment.SendSMSInternet(this$0).execute(new String[] { str, paramView });
    this$0.mobilenoEt.setText("");
    this$0.parameterEt.setText("");
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.HomeFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */