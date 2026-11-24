
/**
 * Write a description of class Thermastat here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Thermastat{
    private int temperature;
    public int Thermostat(){
        // TODO 1: Анхны температур 22 градус байна.
        temperature = 22;
        return temperature;
    }
    // TODO 2: getTemperature гэдэг нэртэй method бичнэ үү
    // () -> int
    public int getTemperature(){
        return temperature;
    }
    //3 / 15// TODO 3: increaseTemp гэдэг нэртэй method бичнэ үү
    // () -> void
    // temperature-ийг 1-ээр нэмнэ (хамгийн ихдээ 30 байна).
    public void increaseMemp(){
        temperature = temperature + 1;
        if (temperature > 30){
            temperature = 30; 
        }
    }
    // TODO 4: decreaseTemp гэдэг нэртэй method бичнэ үү
    // () -> void
    // temperature-ийг 1-ээр хасна (хамгийн багадаа 16 байна).
    public void decreaseTemp(){
        temperature = temperature - 1;
        if (temperature < 16){
            temperature = 16;
        }
    }
    
}
