package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.l;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class g
  extends l
{
  private EditText aa;
  private EditText ab;
  private Button ac;
  
  private void H()
  {
    int i = 1;
    Object localObject1 = aa.getText().toString().trim();
    Object localObject2 = ab.getText().toString().trim();
    int j = ((String)localObject1).length();
    if (j == 0)
    {
      j = ((String)localObject2).length();
      if (j == 0)
      {
        localObject1 = b();
        localObject2 = "Please enter your Aadhaar no. or Enroll Id no.";
        localObject1 = Toast.makeText((Context)localObject1, (CharSequence)localObject2, i);
        ((Toast)localObject1).show();
      }
    }
    for (;;)
    {
      return;
      Object localObject3;
      Class localClass;
      if (localObject1 != null)
      {
        j = ((String)localObject1).length();
        if (j != 0)
        {
          int k = ((String)localObject1).length();
          j = 12;
          if (k == j)
          {
            localObject2 = new android/content/Intent;
            localObject3 = b();
            localClass = UID_Search_List.class;
            ((Intent)localObject2).<init>((Context)localObject3, localClass);
            localObject3 = "UID";
            ((Intent)localObject2).putExtra((String)localObject3, (String)localObject1);
            a((Intent)localObject2);
            continue;
          }
          localObject1 = b();
          localObject2 = "Aadhar ID is not valid";
          localObject1 = Toast.makeText((Context)localObject1, (CharSequence)localObject2, i);
          ((Toast)localObject1).show();
          continue;
        }
      }
      if (localObject2 != null)
      {
        int m = ((String)localObject2).length();
        j = 14;
        if (m == j)
        {
          localObject1 = new android/content/Intent;
          localObject3 = b();
          localClass = EID_Search_List.class;
          ((Intent)localObject1).<init>((Context)localObject3, localClass);
          localObject3 = "EID";
          ((Intent)localObject1).putExtra((String)localObject3, (String)localObject2);
          a((Intent)localObject1);
        }
        else
        {
          localObject1 = b();
          localObject2 = "Please enter a valid Enroll ID";
          localObject1 = Toast.makeText((Context)localObject1, (CharSequence)localObject2, i);
          ((Toast)localObject1).show();
        }
      }
    }
  }
  
  public static l a(Context paramContext)
  {
    g localg = new in/gov/hp/Aadhaar_HP/SRDH/g;
    localg.<init>();
    return localg;
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130968613, null);
    Object localObject = (EditText)localViewGroup.findViewById(2131558587);
    aa = ((EditText)localObject);
    localObject = (EditText)localViewGroup.findViewById(2131558591);
    ab = ((EditText)localObject);
    localObject = (Button)localViewGroup.findViewById(2131558592);
    ac = ((Button)localObject);
    localObject = ac;
    h localh = new in/gov/hp/Aadhaar_HP/SRDH/h;
    localh.<init>(this);
    ((Button)localObject).setOnClickListener(localh);
    return localViewGroup;
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.g
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */