package in.gov.mgov.jh.uid;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.design.widget.NavigationView;
import android.support.design.widget.NavigationView.OnNavigationItemSelectedListener;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.support.v7.app.ActionBarDrawerToggle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.LinearLayout;

public class MainActivity
  extends AppCompatActivity
  implements NavigationView.OnNavigationItemSelectedListener
{
  FragmentManager fragmentManager;
  FragmentTransaction fragmentTransaction;
  LinearLayout linearLayout;
  
  public void onBackPressed()
  {
    DrawerLayout localDrawerLayout = (DrawerLayout)findViewById(2131492973);
    if (localDrawerLayout.isDrawerOpen(8388611))
    {
      localDrawerLayout.closeDrawer(8388611);
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130968602);
    Object localObject = (Toolbar)findViewById(2131492975);
    setSupportActionBar((Toolbar)localObject);
    linearLayout = ((LinearLayout)findViewById(2131492977));
    paramBundle = (DrawerLayout)findViewById(2131492973);
    localObject = new ActionBarDrawerToggle(this, paramBundle, (Toolbar)localObject, 2131099670, 2131099669);
    paramBundle.setDrawerListener((DrawerLayout.DrawerListener)localObject);
    ((ActionBarDrawerToggle)localObject).syncState();
    ((NavigationView)findViewById(2131492974)).setNavigationItemSelectedListener(this);
    fragmentManager = getFragmentManager();
    fragmentTransaction = fragmentManager.beginTransaction();
    fragmentTransaction.replace(2131492977, new HomeFragment());
    fragmentTransaction.commit();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131558401, paramMenu);
    return true;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default: 
      return true;
    }
    paramKeyEvent = new AlertDialog.Builder(this);
    paramKeyEvent.setMessage("Do you want to exit the Application");
    paramKeyEvent.setCancelable(true);
    paramKeyEvent.setPositiveButton("Yes", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
        finish();
      }
    });
    paramKeyEvent.setNegativeButton("No", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
      }
    });
    paramKeyEvent.create().show();
    return true;
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
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    paramMenuItem.getItemId();
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     in.gov.mgov.jh.uid.MainActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */