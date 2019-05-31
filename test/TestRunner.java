import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

/**
 *
 * @author jbrien
 */

public class TestRunner {
    public static void main(String[] args) {

    System.out.println("- Testing DB Manager: ");
    Result manager = JUnitCore.runClasses(testDBManager.class);

    for (Failure failure : manager.getFailures()) {
      System.out.println(failure.toString());
    }

    String status = manager.wasSuccessful() ? "Passed" : "Failed";
    System.out.println(" Test status = "+status);
    System.out.println(" Number of Tests Passed = "+manager.getRunCount());
    System.out.println(" Number of Tests Ignored = "+manager.getIgnoreCount());
    System.out.println(" Number of Tests Failed = "+manager.getFailureCount());
    System.out.println(" Time = "+manager.getRunTime()/1000.0+"s");   
  }
}
