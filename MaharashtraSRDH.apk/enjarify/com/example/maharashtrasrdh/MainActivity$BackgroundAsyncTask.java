package com.example.maharashtrasrdh;

import android.os.AsyncTask;
import android.os.SystemClock;
import android.widget.EditText;

public class MainActivity$BackgroundAsyncTask
  extends AsyncTask
{
  int myProgress;
  
  public MainActivity$BackgroundAsyncTask(MainActivity paramMainActivity) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    for (;;)
    {
      int i = myProgress;
      int j = 100;
      if (i >= j) {
        return null;
      }
      i = myProgress + 1;
      myProgress = i;
      i = 1;
      Integer[] arrayOfInteger = new Integer[i];
      j = 0;
      int k = myProgress;
      Integer localInteger = Integer.valueOf(k);
      arrayOfInteger[0] = localInteger;
      publishProgress(arrayOfInteger);
      long l = 30;
      SystemClock.sleep(l);
    }
  }
  
  protected void onPostExecute(Void paramVoid)
  {
    this$0.DisplayToast("Message Sent");
    this$0.editMessage.setText("");
  }
  
  protected void onPreExecute()
  {
    this$0.DisplayToast("Sending.....");
    myProgress = 0;
  }
  
  protected void onProgressUpdate(Integer... paramVarArgs) {}
}

/* Location:
 * Qualified Name:     com.example.maharashtrasrdh.MainActivity.BackgroundAsyncTask
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */