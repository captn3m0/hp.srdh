package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.DatePickerDialog.OnDateSetListener;
import android.widget.DatePicker;

class d
  implements DatePickerDialog.OnDateSetListener
{
  d(c paramc) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    c.a(a, paramInt3);
    c.b(a, paramInt2);
    c.c(a, paramInt1);
    c.a(a);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.d
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */