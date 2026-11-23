
/**
 * Write a description of class BankAccount here.
 *
 * @author Badamsuren
 * @version (a version number or a date)
 */
public class BankAccount
{
    private double balance;
    private double getBalance;
    private double deposit;
    public BankAccount(){
        balance = 0.0;
    }
    public double getBalance(){
        return balance;
        
    }
    public void deposit(double amount){
        if (amount > 0){
            balance = balance + amount;
        }else{
            System.out.println("Алдаа: 0-ээс их дүн оруулна уу!");
        }
    }
    
    
}
