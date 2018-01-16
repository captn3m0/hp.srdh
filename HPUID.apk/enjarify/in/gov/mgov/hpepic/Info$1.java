package in.gov.mgov.hpepic;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class Info$1
  implements DialogInterface.OnClickListener
{
  Info$1(Info paramInfo) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new android/content/Intent;
    Context localContext = this$0.getApplicationContext();
    localIntent.<init>(localContext, MainActivity.class);
    this$0.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.hpepic.Info.1
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */