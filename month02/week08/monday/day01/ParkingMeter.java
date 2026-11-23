
/**
 * Write a description of class ParkingMeter here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class ParkingMeter
{
    private double minutes; 

    public ParkingMeter(){
        minutes = 0; 
    }

    public double getMinutes(){
        return minutes;
    }

    public void addTime(int mins){
        if (mins > 0){
            minutes = mins + minutes; 

        }else{
            System.out.println("Алдаа: Алхмын тоо эерэг байх ёстой!");
        }

    }
    public void tick(){
        if (minutes > 0){
            minutes = minutes - 1;
        }
    }

}
// ParkingMeter (Зогсоолын тоолуур)
//Классын тайлбар
//Зорилго: Зогсоолын үлдэгдэл хугацааг (минутаар) удирдана. Эхлэхэд minutes = 0 байна.

//Method-ууд:

//getMinutes() (() -> int): Одоогийн үлдсэн минутыг буцаана.

//addTime(int mins) (int -> void): mins > 0 бол minutes-ийг нэмнэ. mins <= 0 бол "Алдаа: 0-ээс их минут оруулна уу!" гэж хэвлэнэ.

//tick() (() -> void): minutes > 0 бол 1 минутаар хорогдуулна (minutes 0-ээс доош орохгүй).

