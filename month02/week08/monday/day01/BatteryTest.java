

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class BatteryTest.
 *
 * @author  Badamsuren
 * @version (a version number or a date)
 */
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class BatteryTest {

    private Battery battery;

    @BeforeEach
    public void setUp() {
        // Тест бүрийн өмнө цэнэг нь 50-тай шинэ Battery үүсгэнэ
        battery = new Battery();
    }

    @Test
    public void testInitialCharge() {
        assertEquals(50, battery.getCharger());
    }

    @Test
    public void testChargeBatteryNormal() {
        battery.chargeBattery(30);
        assertEquals(80, battery.getCharger());
    }

    @Test
    public void testChargeBatteryUpperCap() {
        battery.chargeBattery(80);
        assertEquals(100, battery.getCharger());
    }

    @Test
    public void testChargeBatteryInvalidZeroOrNegative() {
        battery.chargeBattery(0);
        assertEquals(50, battery.getCharger());

        battery.chargeBattery(-15);
        assertEquals(50, battery.getCharger());
    }

    @Test
    public void testUseBatteryNormal() {
        battery.useBattery(20);
        assertEquals(30, battery.getCharger());
    }

    @Test
    public void testUseBatteryLowerCap() {
        battery.useBattery(75);
        assertEquals(0, battery.getCharger());
    }

    @Test
    public void testUseBatteryZeroOrNegative() {
        battery.useBattery(0);
        assertEquals(50, battery.getCharger());

        battery.useBattery(-10);
        assertEquals(50, battery.getCharger());
    }
}


//Battery — BlueJ тестийн тохиолдлууд (Тайлбар)
//Дээд хязгаар (100) дээр тогтоох тест:

//Зорилго: Анхны 50 цэнэгтэй зайг дээд хязгаараас хэтрүүлэн цэнэглэхэд 100 дээр зогсож байгааг шалгана.

//BlueJ дээрх шалгалт: Шинэ Battery объект үүсгээд chargeBattery(80) дуудсаны дараа getCharge() нь 100 буцаахыг хүлээнэ.

//Тэг болон сөрөг цэнэглэлтийг хориглох тест:

//Зорилго: 0 эсвэл хасах утгаар цэнэглэх үед цэнэгийн хэмжээ өөрчлөгдөхгүй хэвээр байхыг шалгана.

//BlueJ дээрх шалгалт: Шинэ Battery объект (charge = 50) дээр chargeBattery(0) болон chargeBattery(-20) дуудсаны дараа getCharge() нь 50 хэвээр байхыг хүлээнэ.
   

