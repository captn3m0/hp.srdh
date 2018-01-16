package in.gov.hp.Aadhaar_HP.SRDH;

import android.support.v4.a.o;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

class h
  implements View.OnClickListener
{
  h(g paramg) {}
  
  public void onClick(View paramView)
  {
    try
    {
      g localg = a;
      g.a(localg);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        o localo = a.b();
        Object localObject = localException.getMessage().toString().trim();
        int i = 1;
        localObject = Toast.makeText(localo, (CharSequence)localObject, i);
        ((Toast)localObject).show();
      }
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.h
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */