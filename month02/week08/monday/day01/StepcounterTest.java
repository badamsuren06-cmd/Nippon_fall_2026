

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class StepcounterTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class StepcounterTest
{
    @Test
    public void testAddPositiveAndIgnoreNegative(){
        Stepcounter steps = new Stepcounter();
        steps.addSteps(1000);
        steps.addSteps(-1000);
        assertEquals(1000, steps.getSteps());
    }
    
    @Test
    public void testReset(){
        stepCounter steps = new Stepcounter();
        steps.addSteps(500);
        steps.reset();
        assertEquals(0, steps.getSteps());
    }

}
