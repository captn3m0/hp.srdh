package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import android.widget.Toast;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class r
  extends AsyncTask
{
  Boolean a;
  private ProgressDialog c;
  
  protected r(SignIn paramSignIn)
  {
    Boolean localBoolean = Boolean.valueOf(false);
    a = localBoolean;
  }
  
  protected Boolean a(String... paramVarArgs)
  {
    localObject1 = paramVarArgs[0];
    int i = 1;
    Object localObject2 = paramVarArgs[i];
    int j = 2;
    Object localObject3 = paramVarArgs[j];
    localObject3 = b.getSharedPreferences("UserName", 0).edit();
    ((SharedPreferences.Editor)localObject3).putString("USERNAME", (String)localObject1);
    ((SharedPreferences.Editor)localObject3).commit();
    localObject3 = b.getSharedPreferences("UserName", 0);
    Object localObject4 = "USERNAME";
    boolean bool2 = ((SharedPreferences)localObject3).contains((String)localObject4);
    if (bool2)
    {
      localObject4 = b;
      String str1 = "USERNAME";
      String str2 = "";
      localObject3 = ((SharedPreferences)localObject3).getString(str1, str2);
      a = ((String)localObject3);
    }
    new k();
    localObject1 = k.a((String)localObject1);
    localObject2 = k.a((String)localObject2);
    localObject3 = new java/lang/StringBuilder;
    ((StringBuilder)localObject3).<init>();
    ((StringBuilder)localObject3).append("http://hp.gov.in/uidreport/AWW.svc");
    ((StringBuilder)localObject3).append("/");
    ((StringBuilder)localObject3).append("signin");
    localObject4 = "/";
    ((StringBuilder)localObject3).append((String)localObject4);
    ((StringBuilder)localObject3).append((String)localObject1);
    ((StringBuilder)localObject3).append("/");
    ((StringBuilder)localObject3).append((String)localObject2);
    ((StringBuilder)localObject3).append("/");
    ((StringBuilder)localObject3).append("0");
    localObject1 = ((StringBuilder)localObject3).toString();
    localObject2 = new in/gov/hp/Aadhaar_HP/SRDH/m;
    ((m)localObject2).<init>();
    localObject1 = ((m)localObject2).b((String)localObject1);
    i = ((StringBuilder)localObject3).length();
    ((StringBuilder)localObject3).delete(0, i);
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
        localObject1 = "CheckUserResult";
        boolean bool3 = ((JSONObject)localObject2).optBoolean((String)localObject1);
        localObject1 = Boolean.valueOf(bool3);
        a = ((Boolean)localObject1);
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
        localObject1 = Boolean.valueOf(false);
        a = ((Boolean)localObject1);
      }
    }
    return a;
  }
  
  protected void a(Boolean paramBoolean)
  {
    super.onPostExecute(paramBoolean);
    Object localObject = c;
    ((ProgressDialog)localObject).dismiss();
    boolean bool = paramBoolean.booleanValue();
    SignIn localSignIn;
    Class localClass;
    if (bool)
    {
      localObject = new android/content/Intent;
      localSignIn = b;
      localClass = ViewPagerStyle1Activity.class;
      ((Intent)localObject).<init>(localSignIn, localClass);
      int i = 67108864;
      ((Intent)localObject).addFlags(i);
      localSignIn = b;
      localSignIn.startActivity((Intent)localObject);
      localObject = b;
      ((SignIn)localObject).finish();
    }
    for (;;)
    {
      return;
      Toast.makeText(b.getApplicationContext(), "Either the username/password is not valid or you are already logged in", 0).show();
      localObject = new android/content/Intent;
      localSignIn = b;
      localClass = LogOut.class;
      ((Intent)localObject).<init>(localSignIn, localClass);
      localSignIn = b;
      localSignIn.startActivity((Intent)localObject);
      localObject = b;
      ((SignIn)localObject).finish();
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    ProgressDialog localProgressDialog = new android/app/ProgressDialog;
    SignIn localSignIn = b;
    localProgressDialog.<init>(localSignIn);
    c = localProgressDialog;
    c.setMessage("Please wait....");
    c.show();
    c.setCancelable(false);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.r
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */