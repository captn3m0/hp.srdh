package in.gov.hp.Aadhaar_HP.SRDH;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;

public class m
{
  static InputStream a = null;
  static String b = null;
  public String c = "";
  
  public String a(String paramString)
  {
    Object localObject1 = new org/apache/http/impl/client/DefaultHttpClient;
    ((DefaultHttpClient)localObject1).<init>();
    for (;;)
    {
      try
      {
        localObject4 = new org/apache/http/client/methods/HttpGet;
        ((HttpGet)localObject4).<init>(paramString);
        localObject1 = ((HttpClient)localObject1).execute((HttpUriRequest)localObject4);
        localObject4 = ((HttpResponse)localObject1).getStatusLine();
        i = ((StatusLine)localObject4).getStatusCode();
        int j = 200;
        if (i != j) {
          continue;
        }
        localObject1 = ((HttpResponse)localObject1).getEntity();
        localObject1 = ((HttpEntity)localObject1).getContent();
        a = (InputStream)localObject1;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        int i;
        Object localObject5;
        Object localObject6;
        Object localObject2;
        localUnsupportedEncodingException.printStackTrace();
        continue;
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        localClientProtocolException.printStackTrace();
        continue;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        continue;
        Object localObject3 = a;
        ((InputStream)localObject3).close();
        localObject3 = ((StringBuilder)localObject4).toString();
        c = ((String)localObject3);
        localObject3 = System.out;
        Object localObject4 = c;
        ((PrintStream)localObject3).println((String)localObject4);
        localObject3 = c;
        continue;
      }
      try
      {
        localObject1 = new java/io/BufferedReader;
        localObject4 = new java/io/InputStreamReader;
        localObject5 = a;
        localObject6 = "utf-8";
        ((InputStreamReader)localObject4).<init>((InputStream)localObject5, (String)localObject6);
        i = 32;
        ((BufferedReader)localObject1).<init>((Reader)localObject4, i);
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        localObject5 = ((BufferedReader)localObject1).readLine();
        if (localObject5 == null) {
          continue;
        }
        localObject6 = new java/lang/StringBuilder;
        ((StringBuilder)localObject6).<init>();
        localObject5 = ((StringBuilder)localObject6).append((String)localObject5);
        localObject6 = "\n";
        localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
        localObject5 = ((StringBuilder)localObject5).toString();
        ((StringBuilder)localObject4).append((String)localObject5);
        continue;
        return (String)localObject2;
      }
      catch (Exception localException)
      {
        localObject4 = "Buffer Error";
        localObject5 = new java/lang/StringBuilder;
        ((StringBuilder)localObject5).<init>();
        localObject6 = "Error converting result ";
        localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
        localObject2 = localException.toString();
        localObject2 = (String)localObject2;
        Log.e((String)localObject4, (String)localObject2);
        localObject2 = "";
      }
    }
    localObject2 = ((HttpResponse)localObject2).getEntity();
    localObject2 = ((HttpEntity)localObject2).getContent();
    ((InputStream)localObject2).close();
    localObject2 = new java/io/IOException;
    localObject4 = ((StatusLine)localObject4).getReasonPhrase();
    ((IOException)localObject2).<init>((String)localObject4);
    throw ((Throwable)localObject2);
  }
  
  public String b(String paramString)
  {
    Object localObject1 = new org/apache/http/impl/client/DefaultHttpClient;
    ((DefaultHttpClient)localObject1).<init>();
    for (;;)
    {
      try
      {
        localObject4 = new org/apache/http/client/methods/HttpGet;
        ((HttpGet)localObject4).<init>(paramString);
        localObject1 = ((HttpClient)localObject1).execute((HttpUriRequest)localObject4);
        localObject4 = ((HttpResponse)localObject1).getStatusLine();
        i = ((StatusLine)localObject4).getStatusCode();
        int j = 200;
        if (i != j) {
          continue;
        }
        localObject1 = ((HttpResponse)localObject1).getEntity();
        localObject1 = ((HttpEntity)localObject1).getContent();
        a = (InputStream)localObject1;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        int i;
        Object localObject6;
        Object localObject2;
        localUnsupportedEncodingException.printStackTrace();
        continue;
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        localClientProtocolException.printStackTrace();
        continue;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        continue;
        Object localObject3 = a;
        ((InputStream)localObject3).close();
        localObject3 = ((StringBuilder)localObject4).toString();
        c = ((String)localObject3);
        localObject3 = System.out;
        Object localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        Object localObject5 = "varification is";
        localObject4 = ((StringBuilder)localObject4).append((String)localObject5);
        localObject5 = c;
        localObject4 = ((StringBuilder)localObject4).append((String)localObject5);
        localObject4 = ((StringBuilder)localObject4).toString();
        ((PrintStream)localObject3).println((String)localObject4);
        localObject3 = c;
        continue;
      }
      try
      {
        localObject1 = new java/io/BufferedReader;
        localObject4 = new java/io/InputStreamReader;
        localObject5 = a;
        localObject6 = "utf-8";
        ((InputStreamReader)localObject4).<init>((InputStream)localObject5, (String)localObject6);
        i = 32;
        ((BufferedReader)localObject1).<init>((Reader)localObject4, i);
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        localObject5 = ((BufferedReader)localObject1).readLine();
        if (localObject5 == null) {
          continue;
        }
        localObject6 = new java/lang/StringBuilder;
        ((StringBuilder)localObject6).<init>();
        localObject5 = ((StringBuilder)localObject6).append((String)localObject5);
        localObject6 = "\n";
        localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
        localObject5 = ((StringBuilder)localObject5).toString();
        ((StringBuilder)localObject4).append((String)localObject5);
        continue;
        return (String)localObject2;
      }
      catch (Exception localException)
      {
        localObject4 = "Buffer Error";
        localObject5 = new java/lang/StringBuilder;
        ((StringBuilder)localObject5).<init>();
        localObject6 = "Error converting result ";
        localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
        localObject2 = localException.toString();
        localObject2 = (String)localObject2;
        Log.e((String)localObject4, (String)localObject2);
        localObject2 = "";
      }
    }
    localObject2 = ((HttpResponse)localObject2).getEntity();
    localObject2 = ((HttpEntity)localObject2).getContent();
    ((InputStream)localObject2).close();
    localObject2 = new java/io/IOException;
    localObject4 = ((StatusLine)localObject4).getReasonPhrase();
    ((IOException)localObject2).<init>((String)localObject4);
    throw ((Throwable)localObject2);
  }
}

/* Location:
 * Qualified Name:     in.gov.hp.Aadhaar_HP.SRDH.m
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */