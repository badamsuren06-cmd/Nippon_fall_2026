
/**
 * Write a description of class House here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class House {
    private Square wall;
    private Square window;
    private Triangle roof;
    private Circle blueCircle;
    private Circle sun;

    private Square pole1;
    private Square pole2;
    private Square pole3;
    private Square flagLeft;
    private Square flagRight;
    private Circle flagSun;

    private boolean drawn;

    public House() {
        wall = new Square();
        window = new Square();
        roof = new Triangle();
        blueCircle = new Circle();
        sun = new Circle();

        pole1 = new Square();
        pole2 = new Square();
        pole3 = new Square();
        flagLeft = new Square();
        flagRight = new Square();
        flagSun = new Circle();

        drawn = false;
    }

    public void draw() {
        wall.changeColor("red");
        wall.changeSize(120);
        wall.moveHorizontal(-70);
        wall.moveVertical(80);
        wall.makeVisible();

        window.changeColor("black");
        window.changeSize(40);
        window.moveHorizontal(-50);
        window.moveVertical(100);
        window.makeVisible();

        roof.changeColor("green");
        roof.changeSize(60, 160);
        roof.moveHorizontal(90);
        roof.moveVertical(0);
        roof.makeVisible();

        blueCircle.changeColor("blue");
        blueCircle.changeSize(65);
        blueCircle.moveHorizontal(90);
        blueCircle.moveVertical(-25);
        blueCircle.makeVisible();

        sun.changeColor("yellow");
        sun.changeSize(80);
        sun.moveHorizontal(200);
        sun.moveVertical(-15);
        sun.makeVisible();

        pole1.changeColor("black");
        pole1.changeSize(6);
        pole1.moveHorizontal(120);
        pole1.moveVertical(70);
        pole1.makeVisible();

        pole2.changeColor("black");
        pole2.changeSize(6);
        pole2.moveHorizontal(120);
        pole2.moveVertical(130);
        pole2.makeVisible();

        pole3.changeColor("black");
        pole3.changeSize(6);
        pole3.moveHorizontal(120);
        pole3.moveVertical(190);
        pole3.makeVisible();

        flagLeft.changeColor("white");
        flagLeft.changeSize(40);
        flagLeft.moveHorizontal(126);
        flagLeft.moveVertical(70);
        flagLeft.makeVisible();

        flagRight.changeColor("white");
        flagRight.changeSize(40);
        flagRight.moveHorizontal(146);
        flagRight.moveVertical(70);
        flagRight.makeVisible();

        flagSun.changeColor("red");
        flagSun.changeSize(24);
        flagSun.moveHorizontal(224);
        flagSun.moveVertical(68);
        flagSun.makeVisible();

        drawn = true;
    }
}