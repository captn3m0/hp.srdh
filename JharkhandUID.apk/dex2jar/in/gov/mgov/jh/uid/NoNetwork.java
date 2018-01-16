package in.gov.mgov.jh.uid;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.design.widget.NavigationView;
import android.support.design.widget.NavigationView.OnNavigationItemSelectedListener;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.widget.LinearLayout;

public class NoNetwork
  extends AppCompatActivity
  implements NavigationView.OnNavigationItemSelectedListener
{
  FragmentManager fragmentManager;
  FragmentTransaction fragmentTransaction;
  LinearLayout linearLayout;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968619);
    Object localObject = (Toolbar)findViewById(2131492975);
    setSupportActionBar((Toolbar)localObject);
    paramBundle = (DrawerLayout)findViewById(2131492973);
    localObject = new ActionBarDrawerToggle(this, paramBundle, (Toolbar)localObject, 2131099670, 2131099669);
    paramBundle.setDrawerListener((DrawerLayout.DrawerListener)localObject);
    ((ActionBarDrawerToggle)localObject).syncState();
    ((NavigationView)findViewById(2131492974)).setNavigationItemSelectedListener(this);
    linearLayout = ((LinearLayout)findViewById(2131492977));
    fragmentManager = getFragmentManager();
    fragmentTransaction = fragmentManager.beginTransaction();
    fragmentTransaction.replace(2131492977, new NoNetworkFragment());
    fragmentTransaction.commit();
  }
  
  public boolean onNavigationItemSelected(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getItemId();
    fragmentManager = getFragmentManager();
    fragmentTransaction = fragmentManager.beginTransaction();
    if (i == 2131493004)
    {
      fragmentTransaction.replace(2131492977, new AboutFragment());
      fragmentTransaction.commit();
    }
    for (;;)
    {
      ((DrawerLayout)findViewById(2131492973)).closeDrawer(8388611);
      return true;
      if (i == 2131493005)
      {
        fragmentTransaction.replace(2131492977, new FeedBackFragment());
        fragmentTransaction.commit();
      }
      else if (i == 2131493003)
      {
        fragmentTransaction.replace(2131492977, new HomeFragment());
        fragmentTransaction.commit();
      }
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.NoNetwork
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */