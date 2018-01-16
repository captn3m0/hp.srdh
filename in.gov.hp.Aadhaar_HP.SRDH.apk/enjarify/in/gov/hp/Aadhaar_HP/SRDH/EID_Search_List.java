package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;

public class EID_Search_List
  extends Activity
{
  String a = null;
  ProgressBar b;
  List c;
  List d;
  ListView e;
  Context f;
  
  protected boolean a()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
    boolean bool;
    if (localNetworkInfo != null)
    {
      bool = localNetworkInfo.isConnectedOrConnecting();
      if (bool) {
        bool = true;
      }
    }
    for (;;)
    {
      return bool;
      bool = false;
      localNetworkInfo = null;
    }
  }
  
  protected void b()
  {
    v localv = new in/gov/hp/Aadhaar_HP/SRDH/v;
    List localList = d;
    localv.<init>(this, 2130968611, localList);
    e.setAdapter(localv);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    int i = 1;
    super.onCreate(paramBundle);
    setContentView(2130968601);
    Object localObject1 = getIntent().getExtras();
    Object localObject2 = "EID";
    localObject1 = ((Bundle)localObject1).getString((String)localObject2);
    a = ((String)localObject1);
    localObject1 = (ListView)findViewById(2131558480);
    e = ((ListView)localObject1);
    f = this;
    localObject1 = (ProgressBar)findViewById(2131558481);
    b = ((ProgressBar)localObject1);
    localObject1 = b;
    int j = 4;
    ((ProgressBar)localObject1).setVisibility(j);
    localObject1 = new java/util/ArrayList;
    ((ArrayList)localObject1).<init>();
    c = ((List)localObject1);
    boolean bool = a();
    if (bool)
    {
      localObject1 = new in/gov/hp/Aadhaar_HP/SRDH/j;
      ((j)localObject1).<init>(this);
      localObject2 = new String[i];
      i = 0;
      String str = a;
      localObject2[0] = str;
      ((j)localObject1).execute((Object[])localObject2);
    }
    for (;;)
    {
      localObject1 = e;
      localObject2 = new in/gov/hp/Aadhaar_HP/SRDH/i;
      ((i)localObject2).<init>(this);
      ((ListView)localObject1).setOnItemClickListener((AdapterView.OnItemClickListener)localObject2);
      return;
      localObject1 = Toast.makeText(this, "Network isn't available", i);
      ((Toast)localObject1).show();
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.EID_Search_List
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */