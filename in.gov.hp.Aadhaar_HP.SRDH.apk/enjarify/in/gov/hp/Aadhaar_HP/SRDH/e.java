package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.DatePickerDialog.OnDateSetListener;
import android.view.View;
import android.view.View.OnClickListener;

class e
  implements View.OnClickListener
{
  e(c paramc) {}
  
  public void onClick(View paramView)
  {
    c localc = a;
    int i = c.b(a);
    int j = c.c(a);
    int k = c.d(a);
    DatePickerDialog.OnDateSetListener localOnDateSetListener = c.e(a);
    c.a(localc, i, j, k, localOnDateSetListener);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.e
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */