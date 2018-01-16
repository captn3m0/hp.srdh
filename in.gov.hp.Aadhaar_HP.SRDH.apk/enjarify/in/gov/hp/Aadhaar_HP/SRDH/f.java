package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

class f
  implements View.OnClickListener
{
  f(c paramc) {}
  
  public void onClick(View paramView)
  {
    try
    {
      c localc = a;
      c.f(localc);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject = a.b();
        String str = "Something Went Wrong. Please check your network connectivity";
        int i = 1;
        localObject = Toast.makeText((Context)localObject, str, i);
        ((Toast)localObject).show();
      }
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.f
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */