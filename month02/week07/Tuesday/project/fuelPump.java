
/**
 * Write a description of class Fuelpump here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class fuelPump
{
  public double pricePerLiter = 2500.0;
  public double totalLiters = 0.0;
  
   public void pumpFuel(double liters){
       if (liters > 0){
           totalLiters += liters;
       }
   }
   public void setPricePerLiter(double price){
       pricePerLiter = price;
   }
   public double getTotalCost(){
       return totalLiters * pricePerLiter;
   }
   public void resetPump(){
       totalLiters = 0.0;
   }
           
}
