package in.gov.hp.Aadhaar_HP.SRDH;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.a.o;
import android.support.v4.a.t;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bh;
import android.view.View;

public class ViewPagerStyle1Activity
  extends o
{
  SignIn n;
  ag o;
  private ViewPager p;
  private ac q;
  
  public ViewPagerStyle1Activity()
  {
    Object localObject = new in/gov/hp/Aadhaar_HP/SRDH/SignIn;
    ((SignIn)localObject).<init>();
    n = ((SignIn)localObject);
    localObject = new in/gov/hp/Aadhaar_HP/SRDH/ag;
    ((ag)localObject).<init>(this);
    o = ((ag)localObject);
  }
  
  private void g()
  {
    Object localObject1 = (ViewPager)findViewById(2131558556);
    p = ((ViewPager)localObject1);
    localObject1 = new in/gov/hp/Aadhaar_HP/SRDH/ac;
    Object localObject2 = getApplicationContext();
    t localt = f();
    ((ac)localObject1).<init>((Context)localObject2, localt);
    q = ((ac)localObject1);
    localObject1 = p;
    localObject2 = q;
    ((ViewPager)localObject1).setAdapter((bh)localObject2);
    p.setCurrentItem(0);
  }
  
  private void h()
  {
    boolean bool = true;
    findViewById(2131558552).setActivated(bool);
    findViewById(2131558553).setActivated(bool);
    ViewPager localViewPager = p;
    ad localad = new in/gov/hp/Aadhaar_HP/SRDH/ad;
    localad.<init>(this);
    localViewPager.setOnPageChangeListener(localad);
  }
  
  public void onBackPressed()
  {
    AlertDialog.Builder localBuilder1 = new android/app/AlertDialog$Builder;
    localBuilder1.<init>(this);
    AlertDialog.Builder localBuilder2 = localBuilder1.setMessage("Are you sure you want to exit the HPSRDH application?").setCancelable(false);
    Object localObject = new in/gov/hp/Aadhaar_HP/SRDH/af;
    ((af)localObject).<init>(this);
    localBuilder2 = localBuilder2.setPositiveButton("Yes", (DialogInterface.OnClickListener)localObject);
    localObject = new in/gov/hp/Aadhaar_HP/SRDH/ae;
    ((ae)localObject).<init>(this);
    localBuilder2.setNegativeButton("No", (DialogInterface.OnClickListener)localObject);
    localBuilder1.create().show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968608);
    g();
    h();
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.ViewPagerStyle1Activity
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */