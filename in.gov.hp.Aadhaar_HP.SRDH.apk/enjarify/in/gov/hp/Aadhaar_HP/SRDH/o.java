package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.widget.Toast;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class o
  extends AsyncTask
{
  String a = null;
  Boolean b;
  private ProgressDialog d;
  
  public o(LogOut paramLogOut)
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
    Object localObject1 = d;
    ((ProgressDialog)localObject1).dismiss();
    boolean bool = paramBoolean.booleanValue();
    Object localObject2;
    if (bool)
    {
      localObject1 = new android/content/Intent;
      localObject2 = c;
      Class localClass = SignIn.class;
      ((Intent)localObject1).<init>((Context)localObject2, localClass);
      localObject2 = c;
      ((LogOut)localObject2).startActivity((Intent)localObject1);
      localObject1 = c;
      ((LogOut)localObject1).finish();
    }
    for (;;)
    {
      return;
      localObject1 = c.getApplicationContext();
      localObject2 = "Something Went Wrong. Please check your network connectivity";
      int i = 1;
      localObject1 = Toast.makeText((Context)localObject1, (CharSequence)localObject2, i);
      ((Toast)localObject1).show();
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    LogOut localLogOut = c;
    localProgressDialog.<init>(localLogOut);
    d = localProgressDialog;
    d.setMessage("Please wait....");
    d.show();
    d.setCancelable(false);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.o
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */