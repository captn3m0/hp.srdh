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
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class AdvancedListFive
  extends Activity
{
  String a = null;
  String b = null;
  String c = null;
  String d = null;
  String e = null;
  ProgressBar f;
  List g;
  List h;
  URL i;
  HttpURLConnection j;
  StringBuilder k;
  ListView l;
  Context m;
  
  public AdvancedListFive()
  {
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    localStringBuilder.<init>();
    k = localStringBuilder;
  }
  
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
    List localList = h;
    localv.<init>(this, 2130968611, localList);
    l.setAdapter(localv);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    int n = 4;
    int i1 = 1;
    super.onCreate(paramBundle);
    setContentView(2130968601);
    Object localObject1 = getIntent().getExtras();
    Object localObject2 = ((Bundle)localObject1).getString("District");
    a = ((String)localObject2);
    localObject2 = ((Bundle)localObject1).getString("Name");
    b = ((String)localObject2);
    localObject2 = ((Bundle)localObject1).getString("FHName");
    c = ((String)localObject2);
    localObject2 = ((Bundle)localObject1).getString("Dob");
    d = ((String)localObject2);
    localObject2 = "Pincode";
    localObject1 = ((Bundle)localObject1).getString((String)localObject2);
    e = ((String)localObject1);
    localObject1 = (ListView)findViewById(2131558480);
    l = ((ListView)localObject1);
    m = this;
    localObject1 = (ProgressBar)findViewById(2131558481);
    f = ((ProgressBar)localObject1);
    f.setVisibility(n);
    localObject1 = new java/util/ArrayList;
    ((ArrayList)localObject1).<init>();
    g = ((List)localObject1);
    boolean bool = a();
    if (bool)
    {
      localObject1 = new in/gov/hp/Aadhaar_HP/SRDH/b;
      ((b)localObject1).<init>(this);
      int i2 = 5;
      localObject2 = new String[i2];
      String str1 = a;
      localObject2[0] = str1;
      String str2 = b;
      localObject2[i1] = str2;
      str1 = c;
      localObject2[2] = str1;
      int i3 = 3;
      str1 = d;
      localObject2[i3] = str1;
      str2 = e;
      localObject2[n] = str2;
      ((b)localObject1).execute((Object[])localObject2);
    }
    for (;;)
    {
      localObject1 = l;
      localObject2 = new in/gov/hp/Aadhaar_HP/SRDH/a;
      ((a)localObject2).<init>(this);
      ((ListView)localObject1).setOnItemClickListener((AdapterView.OnItemClickListener)localObject2);
      return;
      localObject1 = Toast.makeText(this, "Network isn't available", i1);
      ((Toast)localObject1).show();
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.AdvancedListFive
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */