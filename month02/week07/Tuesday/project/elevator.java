
/**
 * Write a description of class elevator here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class elevator
{
    public class Elevator {
    int currentFloor = 1;
    int totalTrips = 0;  
    public void goUp(int floors) {
        currentFloor = currentFloor + floors;
        totalTrips++; 
    }

    public void goDown(int floors) {
        currentFloor = currentFloor - floors;
        totalTrips++;
    }

    public void currentFloor() {
        System.out.println("currentFloor: " + currentFloor);
        System.out.println("totalTrips: " + totalTrips);
    }
}
}
