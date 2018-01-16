package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class UserDetailsSearch
  extends Activity
{
  ImageView a;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private TextView n;
  private Button o;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968606);
    Object localObject1 = (ab)getIntent().getSerializableExtra("Details");
    Object localObject2 = (TextView)findViewById(2131558523);
    b = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558513);
    c = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558517);
    e = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558537);
    i = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558525);
    j = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558541);
    k = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558539);
    l = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558527);
    m = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558529);
    n = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558533);
    f = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558535);
    g = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558531);
    h = ((TextView)localObject2);
    localObject2 = (TextView)findViewById(2131558519);
    d = ((TextView)localObject2);
    localObject2 = (Button)findViewById(2131558550);
    o = ((Button)localObject2);
    localObject2 = (ImageView)findViewById(2131558512);
    a = ((ImageView)localObject2);
    localObject2 = b;
    String str = ((ab)localObject1).m();
    ((TextView)localObject2).setText(str);
    localObject2 = c;
    str = ((ab)localObject1).l();
    ((TextView)localObject2).setText(str);
    localObject2 = e;
    str = ((ab)localObject1).k();
    ((TextView)localObject2).setText(str);
    localObject2 = i;
    str = ((ab)localObject1).j();
    ((TextView)localObject2).setText(str);
    localObject2 = j;
    str = ((ab)localObject1).i();
    ((TextView)localObject2).setText(str);
    localObject2 = k;
    str = ((ab)localObject1).h();
    ((TextView)localObject2).setText(str);
    localObject2 = l;
    str = ((ab)localObject1).g();
    ((TextView)localObject2).setText(str);
    localObject2 = m;
    str = ((ab)localObject1).f();
    ((TextView)localObject2).setText(str);
    localObject2 = n;
    str = ((ab)localObject1).e();
    ((TextView)localObject2).setText(str);
    localObject2 = f;
    str = ((ab)localObject1).d();
    ((TextView)localObject2).setText(str);
    localObject2 = g;
    str = ((ab)localObject1).c();
    ((TextView)localObject2).setText(str);
    localObject2 = h;
    str = ((ab)localObject1).b();
    ((TextView)localObject2).setText(str);
    localObject2 = d;
    str = ((ab)localObject1).a();
    ((TextView)localObject2).setText(str);
    localObject1 = ((ab)localObject1).a();
    Log.d("DOB", (String)localObject1);
    localObject1 = o;
    localObject2 = new in/gov/hp/Aadhaar_HP/SRDH/w;
    ((w)localObject2).<init>(this);
    ((Button)localObject1).setOnClickListener((View.OnClickListener)localObject2);
    localObject1 = a;
    localObject2 = new in/gov/hp/Aadhaar_HP/SRDH/x;
    ((x)localObject2).<init>(this);
    ((ImageView)localObject1).setOnClickListener((View.OnClickListener)localObject2);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.UserDetailsSearch
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */