
/**
 * Write a description of class ParkingMeter here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class ParkingMeter
{
   public int minutesRemaining = 0;
   public int totalCoinsInserted = 0;
   
   public void isertQuarter(){
        minutesRemaining += 15;
        totalCoinsInserted += 1; 
       
   }
   public void insertDollar(){
       minutesRemaining += 60;
       totalCoinsInserted += 4;
   }
   public int waitTime(int minutesRemaining, int minutesPassed){
       int waitTime = minutesRemaining - minutesPassed;
       return waitTime;
   }
   public void getHoursRemaining(){
       double getHoursRemaining = minutesRemaining / 60.0;
       
   }


   
}
