package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.l;
import android.support.v4.a.o;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class c
  extends l
{
  ArrayAdapter aa = null;
  private EditText ab;
  private EditText ac;
  private EditText ad;
  private TextView ae;
  private EditText af;
  private Button ag;
  private int ah;
  private int ai;
  private int aj;
  private DatePickerDialog.OnDateSetListener ak;
  
  public c()
  {
    d locald = new in/gov/hp/Aadhaar_HP/SRDH/d;
    locald.<init>(this);
    ak = locald;
  }
  
  private void H()
  {
    Object localObject1 = af.getText().toString().trim();
    String str1 = ae.getText().toString().trim();
    String str2 = ab.getText().toString().trim();
    String str3 = ac.getText().toString().trim();
    String str4 = ad.getText().toString().trim();
    int i = ((String)localObject1).length();
    if (i == 0)
    {
      i = str1.length();
      if (i == 0)
      {
        i = str2.length();
        if (i == 0)
        {
          i = str3.length();
          if (i == 0)
          {
            i = str4.length();
            if (i == 0) {
              break label215;
            }
          }
        }
      }
    }
    Intent localIntent = new android/content/Intent;
    Object localObject2 = b();
    Class localClass = AdvancedListFive.class;
    localIntent.<init>((Context)localObject2, localClass);
    localObject2 = "District";
    localIntent.putExtra((String)localObject2, (String)localObject1);
    localIntent.putExtra("Name", str2);
    localIntent.putExtra("FHName", str3);
    localIntent.putExtra("Dob", str1);
    localObject1 = "Pincode";
    localIntent.putExtra((String)localObject1, str4);
    a(localIntent);
    for (;;)
    {
      return;
      label215:
      localObject1 = b();
      str1 = " Our Central System is as big as the universe. Please provide some parameter.  ";
      int j = 1;
      localObject1 = Toast.makeText((Context)localObject1, str1, j);
      ((Toast)localObject1).show();
    }
  }
  
  private void I()
  {
    int i = ai + 1;
    int j = 9;
    Object localObject1;
    int k;
    Object localObject3;
    if (i > j)
    {
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      localObject2 = "";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      j = ai + 1;
      localObject1 = j;
      j = aj;
      k = 10;
      if (j >= k) {
        break label203;
      }
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject3 = "0";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      k = aj;
    }
    for (Object localObject2 = k;; localObject2 = k)
    {
      localObject3 = ae;
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localObject1 = localStringBuilder.append((String)localObject2).append("-").append((String)localObject1).append("-");
      j = ah;
      localObject1 = j;
      ((TextView)localObject3).setText((CharSequence)localObject1);
      return;
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      localObject2 = "0";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      j = ai + 1;
      localObject1 = j;
      break;
      label203:
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject3 = "";
      localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
      k = aj;
    }
  }
  
  private DatePickerDialog a(int paramInt1, int paramInt2, int paramInt3, DatePickerDialog.OnDateSetListener paramOnDateSetListener)
  {
    DatePickerDialog localDatePickerDialog = new android/app/DatePickerDialog;
    o localo = b();
    localDatePickerDialog.<init>(localo, paramOnDateSetListener, paramInt1, paramInt2, paramInt3);
    localDatePickerDialog.setTitle("Please Select Your Date Of Birth");
    localDatePickerDialog.show();
    return localDatePickerDialog;
  }
  
  public static l a(Context paramContext)
  {
    c localc = new in/gov/hp/Aadhaar_HP/SRDH/c;
    localc.<init>();
    return localc;
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130968612, null);
    Object localObject1 = (EditText)localViewGroup.findViewById(2131558566);
    af = ((EditText)localObject1);
    localObject1 = (Button)localViewGroup.findViewById(2131558583);
    ag = ((Button)localObject1);
    localObject1 = (TextView)localViewGroup.findViewById(2131558570);
    ae = ((TextView)localObject1);
    localObject1 = (EditText)localViewGroup.findViewById(2131558574);
    ab = ((EditText)localObject1);
    localObject1 = (EditText)localViewGroup.findViewById(2131558578);
    ac = ((EditText)localObject1);
    localObject1 = (EditText)localViewGroup.findViewById(2131558582);
    ad = ((EditText)localObject1);
    localObject1 = ae;
    Object localObject2 = new in/gov/hp/Aadhaar_HP/SRDH/e;
    ((e)localObject2).<init>(this);
    ((TextView)localObject1).setOnClickListener((View.OnClickListener)localObject2);
    localObject1 = ag;
    localObject2 = new in/gov/hp/Aadhaar_HP/SRDH/f;
    ((f)localObject2).<init>(this);
    ((Button)localObject1).setOnClickListener((View.OnClickListener)localObject2);
    return localViewGroup;
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.c
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */