package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.ProgressBar;
import android.widget.Toast;
import java.io.PrintStream;
import java.util.List;

class u
  extends AsyncTask
{
  String a = null;
  String b = null;
  
  u(UID_Search_List paramUID_Search_List) {}
  
  protected String a(String... paramVarArgs)
  {
    Object localObject = paramVarArgs[0];
    a = ((String)localObject);
    localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    ((StringBuilder)localObject).append("http://hp.gov.in/uidreport/AWW.svc");
    ((StringBuilder)localObject).append("/");
    ((StringBuilder)localObject).append("searbyAadhaar");
    ((StringBuilder)localObject).append("/");
    String str = a;
    ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).toString();
    b = ((String)localObject);
    return l.a(b);
  }
  
  protected void a(String paramString)
  {
    super.onPostExecute(paramString);
    Object localObject1 = c;
    Object localObject2 = aa.a(paramString);
    d = ((List)localObject2);
    localObject1 = c.d;
    boolean bool = ((List)localObject1).isEmpty();
    if (bool)
    {
      localObject1 = c.getApplicationContext();
      localObject2 = "No match found";
      int j = 1;
      localObject1 = Toast.makeText((Context)localObject1, (CharSequence)localObject2, j);
      ((Toast)localObject1).show();
    }
    for (;;)
    {
      c.c.remove(this);
      localObject1 = c.c;
      int i = ((List)localObject1).size();
      if (i == 0)
      {
        localObject1 = c.b;
        int k = 4;
        ((ProgressBar)localObject1).setVisibility(k);
      }
      System.out.print(paramString);
      return;
      localObject1 = c;
      ((UID_Search_List)localObject1).b();
    }
  }
  
  protected void onPreExecute()
  {
    super.onPreExecute();
    Object localObject = c.c;
    int i = ((List)localObject).size();
    if (i == 0)
    {
      localObject = c.b;
      ((ProgressBar)localObject).setVisibility(0);
    }
    c.c.add(this);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.u
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */