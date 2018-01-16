package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.Activity;
import android.os.Bundle;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class LoginActivity
  extends Activity
{
  TextView a;
  RelativeLayout b;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968604);
    Object localObject = (TextView)findViewById(2131558504);
    a = ((TextView)localObject);
    localObject = (RelativeLayout)findViewById(2131558505);
    b = ((RelativeLayout)localObject);
    localObject = b;
    p localp = new in/gov/hp/Aadhaar_HP/SRDH/p;
    localp.<init>(this);
    ((RelativeLayout)localObject).setOnClickListener(localp);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.LoginActivity
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */