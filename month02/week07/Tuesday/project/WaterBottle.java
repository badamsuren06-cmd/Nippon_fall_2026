
/**
 * Write a description of class WaterBottle here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class WaterBottle
{
  public int capacityMl = 1000;
  public int currentMl = 1000;
  
    public void takeSip(int sipMl){
      if (sipMl > 0){
          currentMl = currentMl - sipMl;
          
      }
     }
    public void refillFull() {
        currentMl = capacityMl; 
        }
    public double getPercentFull() {
        return (currentMl * 100) / capacityMl;
        }
}
