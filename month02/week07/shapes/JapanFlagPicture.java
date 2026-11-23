
/**
 * Write a description of class JapanFlagPicture here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class JapanFlagPicture {
    private Square background;
    private Square flagLeft;
    private Square flagRight;
    private Circle redSun;
    private Square pole1;
    private Square pole2;

    public JapanFlagPicture() {
        background = new Square();
        flagLeft = new Square();
        flagRight = new Square();
        redSun = new Circle();
        pole1 = new Square();
        pole2 = new Square();
    }

    public void draw() {
        background.changeColor("black");
        background.changeSize(300);
        background.moveHorizontal(-60);
        background.moveVertical(-50);
        background.makeVisible();

        flagLeft.changeColor("white");
        flagLeft.changeSize(160);
        flagLeft.moveHorizontal(-30);
        flagLeft.moveVertical(20);
        flagLeft.makeVisible();

        flagRight.changeColor("white");
        flagRight.changeSize(160);
        flagRight.moveHorizontal(50);
        flagRight.moveVertical(20);
        flagRight.makeVisible();

        redSun.changeColor("red");
        redSun.changeSize(96);
        redSun.moveHorizontal(332);
        redSun.moveVertical(112);
        redSun.makeVisible();
        
        pole1.changeColor("white");
        pole1.changeSize(12);
        pole1.moveHorizontal(220);
        pole1.moveVertical(20);
        pole1.makeVisible();

        pole2.changeColor("white");
        pole2.changeSize(12);
        pole2.moveHorizontal(220);
        pole2.moveVertical(32);
        pole2.makeVisible();
    }
}

