package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Process;
import android.util.Log;
import android.widget.Toast;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class ag
  extends AsyncTask
{
  String a = null;
  Boolean b;
  private ProgressDialog d;
  
  public ag(ViewPagerStyle1Activity paramViewPagerStyle1Activity)
  {
    Boolean localBoolean = Boolean.valueOf(false);
    b = localBoolean;
  }
  
  protected Boolean a(String... paramVarArgs)
  {
    localObject1 = paramVarArgs[0];
    new k();
    localObject1 = k.a((String)localObject1);
    Object localObject2 = new java/lang/StringBuilder;
    ((StringBuilder)localObject2).<init>();
    ((StringBuilder)localObject2).append("http://hp.gov.in/uidreport/AWW.svc");
    ((StringBuilder)localObject2).append("/");
    ((StringBuilder)localObject2).append("signout");
    ((StringBuilder)localObject2).append("/");
    ((StringBuilder)localObject2).append((String)localObject1);
    localObject1 = ((StringBuilder)localObject2).toString();
    a = ((String)localObject1);
    localObject1 = new in/gov/hp/Aadhaar_HP/SRDH/m;
    ((m)localObject1).<init>();
    String str = a;
    localObject1 = ((m)localObject1).a(str);
    int i = ((StringBuilder)localObject2).length();
    ((StringBuilder)localObject2).delete(0, i);
    try
    {
      localObject2 = new org/json/JSONTokener;
      ((JSONTokener)localObject2).<init>((String)localObject1);
      localObject2 = ((JSONTokener)localObject2).nextValue();
      boolean bool1 = localObject2 instanceof JSONObject;
      if (bool1)
      {
        localObject2 = new org/json/JSONObject;
        ((JSONObject)localObject2).<init>((String)localObject1);
        localObject1 = "LogOutUserResult";
        boolean bool2 = ((JSONObject)localObject2).optBoolean((String)localObject1);
        localObject1 = Boolean.valueOf(bool2);
        b = ((Boolean)localObject1);
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
        localObject1 = Boolean.valueOf(false);
        b = ((Boolean)localObject1);
      }
    }
    return b;
  }
  
  protected void a(Boolean paramBoolean)
  {
    super.onPostExecute(paramBoolean);
    Object localObject = d;
    ((ProgressDialog)localObject).dismiss();
    boolean bool = paramBoolean.booleanValue();
    String str;
    if (bool)
    {
      str = paramBoolean.toString();
      Log.d("Result Exit", str);
      localObject = c;
      ((ViewPagerStyle1Activity)localObject).finish();
      int i = Process.myPid();
      Process.killProcess(i);
    }
    for (;;)
    {
      return;
      localObject = c.getApplicationContext();
      str = "Something Went Wrong. Please check your network connectivity";
      int j = 1;
      localObject = Toast.makeText((Context)localObject, str, j);
      ((Toast)localObject).show();
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    ViewPagerStyle1Activity localViewPagerStyle1Activity = c;
    localProgressDialog.<init>(localViewPagerStyle1Activity);
    d = localProgressDialog;
    d.setMessage("Logging Out,Please wait..");
    d.show();
    d.setCancelable(false);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.ag
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */