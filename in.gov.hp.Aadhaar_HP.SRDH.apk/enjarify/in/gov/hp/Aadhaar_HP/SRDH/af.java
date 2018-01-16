package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.util.Log;

class af
  implements DialogInterface.OnClickListener
{
  af(ViewPagerStyle1Activity paramViewPagerStyle1Activity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject1 = a.getSharedPreferences("UserName", 0);
    String str = null;
    Object localObject2 = "USERNAME";
    boolean bool = ((SharedPreferences)localObject1).contains((String)localObject2);
    if (bool)
    {
      localObject2 = "";
      str = ((SharedPreferences)localObject1).getString("USERNAME", (String)localObject2);
      localObject1 = "User Name is: ";
      Log.d((String)localObject1, str);
    }
    localObject1 = a.o;
    localObject2 = new String[1];
    localObject2[0] = str;
    ((ag)localObject1).execute((Object[])localObject2);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.af
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */