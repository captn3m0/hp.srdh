package in.gov.hp.Aadhaar_HP.SRDH;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class y
{
  public static List a(String paramString)
  {
    try
    {
      Object localObject1 = new org/json/JSONTokener;
      ((JSONTokener)localObject1).<init>(paramString);
      localObject1 = ((JSONTokener)localObject1).nextValue();
      int i = localObject1 instanceof JSONObject;
      String str1;
      if (i != 0)
      {
        localObject1 = "Json ";
        str1 = "Object";
        Log.d((String)localObject1, str1);
        localObject1 = new org/json/JSONObject;
        ((JSONObject)localObject1).<init>(paramString);
        str1 = "GetWithEIDResult";
        localObject1 = ((JSONObject)localObject1).optString(str1);
        str1 = "Table===";
        Log.d(str1, (String)localObject1);
      }
      boolean bool;
      for (;;)
      {
        JSONArray localJSONArray = new org/json/JSONArray;
        localJSONArray.<init>((String)localObject1);
        localObject1 = new java/util/ArrayList;
        ((ArrayList)localObject1).<init>();
        i = 0;
        str1 = null;
        for (;;)
        {
          int k = localJSONArray.length();
          if (i >= k) {
            break;
          }
          Object localObject2 = localJSONArray.getJSONObject(i);
          ab localab = new in/gov/hp/Aadhaar_HP/SRDH/ab;
          localab.<init>();
          String str2 = "Aadhaar";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.m(str2);
          str2 = "Aadhaar is @@@";
          String str3 = "Aadhaar";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "Resident_Name";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.l(str2);
          str2 = "Resident_Name is @@@";
          str3 = "Resident_Name";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "Enroll_ID";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.k(str2);
          str2 = "Enroll_ID is @@@";
          str3 = "Enroll_ID";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "Addr_District";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.j(str2);
          str2 = "Addr_District is @@@";
          str3 = "Addr_District";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "Gender";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.i(str2);
          str2 = "Gender is @@@";
          str3 = "Gender";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "addr_pincode";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.h(str2);
          str2 = "addr_pincode is @@@";
          str3 = "addr_pincode";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "addr_state_name";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.g(str2);
          str2 = "addr_state_name is @@@";
          str3 = "addr_state_name";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "Address_Building";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.e(str2);
          str2 = "Address_Building is @@@";
          str3 = "Address_Building";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "Care_of";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.f(str2);
          str2 = "Care_of is @@@";
          str3 = "Care_of";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "Addr_Landmark";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.d(str2);
          str2 = "Addr_Landmark is @@@";
          str3 = "Addr_Landmark";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "Addr_Locality";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.c(str2);
          str2 = "Addr_Locality is @@@";
          str3 = "Addr_Locality";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "Addr_Street";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.b(str2);
          str2 = "Addr_Street is @@@";
          str3 = "Addr_Street";
          str3 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, str3);
          str2 = "DOB";
          str2 = ((JSONObject)localObject2).getString(str2);
          localab.a(str2);
          str2 = "Addr_Street is @@@";
          str3 = "DOB";
          localObject2 = ((JSONObject)localObject2).getString(str3);
          Log.d(str2, (String)localObject2);
          ((List)localObject1).add(localab);
          int j;
          i += 1;
        }
        bool = localObject1 instanceof JSONArray;
        if (bool)
        {
          localObject1 = "Json ";
          str1 = "Array";
          Log.d((String)localObject1, str1);
        }
        bool = false;
        localObject1 = null;
      }
      return (List)localObject1;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      bool = false;
      localObject1 = null;
    }
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.y
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */