package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.widget.Button;
import android.widget.EditText;

public class SignIn
  extends Activity
{
  public String a;
  private Button b;
  private EditText c;
  private EditText d;
  private String e;
  
  public String a(Context paramContext)
  {
    String str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    if (str == null) {
      str = Integer.toString(0);
    }
    return str;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968603);
    Object localObject = a(this);
    e = ((String)localObject);
    localObject = (Button)findViewById(2131558501);
    b = ((Button)localObject);
    localObject = (EditText)findViewById(2131558500);
    c = ((EditText)localObject);
    localObject = (EditText)findViewById(2131558497);
    d = ((EditText)localObject);
    localObject = b;
    q localq = new in/gov/hp/Aadhaar_HP/SRDH/q;
    localq.<init>(this);
    ((Button)localObject).setOnClickListener(localq);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.SignIn
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */