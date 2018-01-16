package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;

public class LogOut
  extends Activity
{
  private EditText a;
  private Button b;
  private String c = null;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968602);
    Object localObject = (EditText)findViewById(2131558493);
    a = ((EditText)localObject);
    localObject = (Button)findViewById(2131558498);
    b = ((Button)localObject);
    localObject = b;
    n localn = new in/gov/hp/Aadhaar_HP/SRDH/n;
    localn.<init>(this);
    ((Button)localObject).setOnClickListener(localn);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.LogOut
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */