package in.gov.hp.Aadhaar_HP.SRDH;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class k
{
  private static MessageDigest a;
  
  static
  {
    Object localObject = "MD5";
    try
    {
      localObject = MessageDigest.getInstance((String)localObject);
      a = (MessageDigest)localObject;
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;)
      {
        localNoSuchAlgorithmException.printStackTrace();
      }
    }
  }
  
  public static String a(String paramString)
  {
    if (paramString != null)
    {
      i = paramString.length();
      if (i != 0) {}
    }
    else
    {
      localObject1 = new java/lang/IllegalArgumentException;
      ((IllegalArgumentException)localObject1).<init>("String to encript cannot be null or zero length");
      throw ((Throwable)localObject1);
    }
    Object localObject1 = a;
    byte[] arrayOfByte = paramString.getBytes();
    ((MessageDigest)localObject1).update(arrayOfByte);
    arrayOfByte = a.digest();
    StringBuffer localStringBuffer = new java/lang/StringBuffer;
    localStringBuffer.<init>();
    int i = 0;
    localObject1 = null;
    int j = arrayOfByte.length;
    if (i < j)
    {
      j = arrayOfByte[i] & 0xFF;
      int k = 16;
      Object localObject2;
      if (j < k)
      {
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject2 = ((StringBuilder)localObject2).append("0");
        k = arrayOfByte[i] & 0xFF;
        String str = Integer.toHexString(k);
        localObject2 = str;
        localStringBuffer.append((String)localObject2);
      }
      for (;;)
      {
        i += 1;
        break;
        j = arrayOfByte[i] & 0xFF;
        localObject2 = Integer.toHexString(j);
        localStringBuffer.append((String)localObject2);
      }
    }
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.k
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */