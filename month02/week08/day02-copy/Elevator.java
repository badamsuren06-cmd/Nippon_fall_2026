
/**
 * Write a description of class Elevator here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Elevator
{
    private int currentFloor;
    private int maxFloor;
    private boolean doorOpen;
    public Elevator(int topFloor) {
        // TODO 1: currentFloor = 1, doorOpen = false байна.
        // Хэрэв topFloor >= 2 бол maxFloor = topFloor, үгүй бол maxFloor = 5 болгоно.
        currentFloor = 1;
        doorOpen = false;
        if (topFloor >= 2){
            maxFloor = topFloor;
        }else{
            maxFloor = 5;
        }
    }
    // TODO 2: getCurrentFloor (() -> int), isDoorOpen (() -> boolean) бичнэ үү
    public int getCurrentFloor(){
        return currentFloor;
    }
    public boolean isDoorOpen(){
        return doorOpen;
    }
    // TODO 3: openDoor (() -> void) ба closeDoor (() -> void) бичнэ үү
    public void openDoor(){
        
        
    }
    // TODO 4: goToFloor гэдэг нэртэй method бичнэ үү
    // int -> boolean (targetFloor гэдэг параметр авна)
    // Хаалга хаалттай (doorOpen == false) БА targetFloor нь 1..maxFloor хооронд байвал
    // currentFloor-ийг өөрчлөөд true буцаана. Бусад үед хөдлөхгүй ба false буцаана.
    public boolean goToFloor(int targetFloor){
        doorOpen = false;
        if (targetFloor >= 1 && targetFloor <= maxFloor){
            doorOpen = false;
            currentFloor = targetFloor;
            return true;
        }else{
            return false;
        }
    }
}
