package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;

class q
  implements View.OnClickListener
{
  q(SignIn paramSignIn) {}
  
  public void onClick(View paramView)
  {
    int i = 1;
    Object localObject1 = SignIn.a(a).getText().toString().trim();
    String str = SignIn.b(a).getText().toString().trim();
    Object localObject2 = SignIn.c(a);
    int j = ((String)localObject2).length();
    if (j != 0) {
      if (localObject1 != null)
      {
        j = ((String)localObject1).length();
        if (j != 0) {
          if (str != null)
          {
            j = str.length();
            if (j != 0)
            {
              localObject2 = new in/gov/hp/Aadhaar_HP/SRDH/r;
              Object localObject3 = a;
              ((r)localObject2).<init>((SignIn)localObject3);
              int k = 3;
              localObject3 = new String[k];
              localObject3[0] = localObject1;
              localObject3[i] = str;
              int m = 2;
              str = SignIn.c(a);
              localObject3[m] = str;
              ((r)localObject2).execute((Object[])localObject3);
            }
          }
        }
      }
    }
    for (;;)
    {
      return;
      localObject1 = a.getApplicationContext();
      str = "Password cannot be empty";
      localObject1 = Toast.makeText((Context)localObject1, str, i);
      ((Toast)localObject1).show();
      continue;
      localObject1 = a.getApplicationContext();
      str = "Username cannot be empty";
      localObject1 = Toast.makeText((Context)localObject1, str, i);
      ((Toast)localObject1).show();
      continue;
      localObject1 = a.getApplicationContext();
      str = "Something Went Wrong. Please check your network connectivity";
      localObject1 = Toast.makeText((Context)localObject1, str, i);
      ((Toast)localObject1).show();
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.q
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */