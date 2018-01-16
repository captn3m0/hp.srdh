package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.io.Serializable;

class t
  implements AdapterView.OnItemClickListener
{
  t(UID_Search_List paramUID_Search_List) {}
  
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
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.t
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */