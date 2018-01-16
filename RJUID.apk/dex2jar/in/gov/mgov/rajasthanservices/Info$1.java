package in.gov.mgov.rajasthanservices;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class Info$1
  implements DialogInterface.OnClickListener
{
  Info$1(Info paramInfo) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent(this$0.getApplicationContext(), MainActivity.class);
    this$0.startActivity(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.rajasthanservices.Info.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */