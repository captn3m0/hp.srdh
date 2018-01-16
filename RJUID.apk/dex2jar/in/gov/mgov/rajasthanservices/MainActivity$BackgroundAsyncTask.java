package in.gov.mgov.rajasthanservices;

import android.os.AsyncTask;
import android.os.SystemClock;
import android.widget.EditText;

public class MainActivity$BackgroundAsyncTask
  extends AsyncTask<Void, Integer, Void>
{
  int myProgress;
  
  public MainActivity$BackgroundAsyncTask(MainActivity paramMainActivity) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    for (;;)
    {
      if (myProgress >= 100) {
        return null;
      }
      myProgress += 1;
      publishProgress(new Integer[] { Integer.valueOf(myProgress) });
      SystemClock.sleep(30L);
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
 * Qualified Name:     in.gov.mgov.rajasthanservices.MainActivity.BackgroundAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */