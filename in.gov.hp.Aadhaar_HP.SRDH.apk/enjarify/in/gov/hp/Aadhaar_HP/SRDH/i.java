package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.io.Serializable;

class i
  implements AdapterView.OnItemClickListener
{
  i(EID_Search_List paramEID_Search_List) {}
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = (ab)paramAdapterView.getItemAtPosition(paramInt);
    Intent localIntent = new android/content/Intent;
    localIntent.<init>();
    localIntent.putExtra("Details", (Serializable)localObject);
    localObject = a;
    localIntent.setClass((Context)localObject, UserDetailsSearch.class);
    a.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.i
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */