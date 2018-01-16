package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;

class n
  implements View.OnClickListener
{
  n(LogOut paramLogOut) {}
  
  public void onClick(View paramView)
  {
    int i = 1;
    Object localObject1 = a;
    Object localObject2 = LogOut.a(a).getText().toString().trim();
    LogOut.a((LogOut)localObject1, (String)localObject2);
    localObject1 = LogOut.b(a);
    int j = ((String)localObject1).length();
    if (j != 0)
    {
      localObject1 = LogOut.b(a);
      if (localObject1 != null)
      {
        localObject1 = new in/gov/hp/Aadhaar_HP/SRDH/o;
        localObject2 = a;
        ((o)localObject1).<init>((LogOut)localObject2);
        localObject2 = new String[i];
        i = 0;
        String str = LogOut.b(a);
        localObject2[0] = str;
        ((o)localObject1).execute((Object[])localObject2);
      }
    }
    for (;;)
    {
      return;
      localObject1 = a.getApplicationContext();
      localObject2 = "Username cannot be empty";
      localObject1 = Toast.makeText((Context)localObject1, (CharSequence)localObject2, i);
      ((Toast)localObject1).show();
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.n
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */