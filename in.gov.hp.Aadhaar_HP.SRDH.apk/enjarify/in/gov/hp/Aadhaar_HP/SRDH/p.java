package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class p
  implements View.OnClickListener
{
  p(LoginActivity paramLoginActivity) {}
  
  public void onClick(View paramView)
  {
    Intent localIntent = new android/content/Intent;
    LoginActivity localLoginActivity = a;
    localIntent.<init>(localLoginActivity, SignIn.class);
    a.startActivity(localIntent);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.p
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */