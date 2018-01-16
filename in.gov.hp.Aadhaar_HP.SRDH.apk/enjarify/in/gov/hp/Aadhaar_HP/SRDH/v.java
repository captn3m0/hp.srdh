package in.gov.hp.Aadhaar_HP.SRDH;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

public class v
  extends ArrayAdapter
{
  private Context a;
  private List b;
  
  public v(Context paramContext, int paramInt, List paramList)
  {
    super(paramContext, paramInt, paramList);
    a = paramContext;
    b = paramList;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = ((LayoutInflater)a.getSystemService("layout_inflater")).inflate(2130968611, paramViewGroup, false);
    Object localObject = (ab)b.get(paramInt);
    TextView localTextView1 = (TextView)localView.findViewById(2131558561);
    TextView localTextView2 = (TextView)localView.findViewById(2131558562);
    String str = ((ab)localObject).m();
    localTextView1.setText(str);
    localObject = ((ab)localObject).l();
    localTextView2.setText((CharSequence)localObject);
    return localView;
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.v
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */