package in.gov.mgov.jh.uid;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import android.widget.TextView;

class HomeFragment$1
  implements AdapterView.OnItemSelectedListener
{
  HomeFragment$1(HomeFragment paramHomeFragment) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this$0.mobilenoEt.setVisibility(4);
      this$0.text.setVisibility(4);
      this$0.mobilenoEt.setText("");
      return;
    }
    this$0.mobilenoEt.setVisibility(0);
    this$0.text.setVisibility(0);
    this$0.mobilenoEt.setText("");
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.HomeFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */