
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class ParkingMeterTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class ParkingMeterTest
{
@Test
public void testAddPositiveAndIgnoreNegative()
{
ParkingMeter meter = new ParkingMeter();
meter.addMinutes(30);
meter.addMinutes(-10);
assertEquals(30, meter.getMinutes());
}

@Test
public void testTickDoesNotGoBelowZero()
{
ParkingMeter meter = new ParkingMeter();
meter.addMinutes(1);
meter.tick();
meter.tick();
assertEquals(0, meter.getMinutes());
}
}

