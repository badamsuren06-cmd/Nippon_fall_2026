
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
    private int xPosition;
    private int yPosition;
    private String color;
    private boolean isVisible;

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

        xPosition = 0;
        yPosition = 0;
        color = "red";
        isVisible = false;
        drawn = false;
    }

    public void draw() {
        wall.changeColor(color);
        wall.changeSize(120);
        wall.moveHorizontal(-70 + xPosition);
        wall.moveVertical(80 + yPosition);
        wall.makeVisible();

        window.changeColor("black");
        window.changeSize(40);
        window.moveHorizontal(-50 + xPosition);
        window.moveVertical(100 + yPosition);
        window.makeVisible();

        roof.changeColor("green");
        roof.changeSize(60, 160);
        roof.moveHorizontal(90 + xPosition);
        roof.moveVertical(0 + yPosition);
        roof.makeVisible();

        blueCircle.changeColor("blue");
        blueCircle.changeSize(65);
        blueCircle.moveHorizontal(90 + xPosition);
        blueCircle.moveVertical(-25 + yPosition);
        blueCircle.makeVisible();

        sun.changeColor("yellow");
        sun.changeSize(80);
        sun.moveHorizontal(200 + xPosition);
        sun.moveVertical(-15 + yPosition);
        sun.makeVisible();

        flagLeft.changeColor("white");
        flagLeft.changeSize(40);
        flagLeft.moveHorizontal(126 + xPosition);
        flagLeft.moveVertical(70 + yPosition);
        flagLeft.makeVisible();

        flagRight.changeColor("white");
        flagRight.changeSize(40);
        flagRight.moveHorizontal(146 + xPosition);
        flagRight.moveVertical(70 + yPosition);
        flagRight.makeVisible();

        flagSun.changeColor("red");
        flagSun.changeSize(24);
        flagSun.moveHorizontal(224 + xPosition);
        flagSun.moveVertical(68 + yPosition);
        flagSun.makeVisible();

        isVisible = true;
        drawn = true;
    }
    public void moveHorizontalFlag(int distance) {
    flagLeft.moveHorizontal(distance);
    flagRight.moveHorizontal(distance);
    flagSun.moveHorizontal(distance);
    }

    public void moveVerticalFlag(int distance) {
    flagLeft.moveVertical(distance);
    flagRight.moveVertical(distance);
    flagSun.moveVertical(distance);
    }
   
    public int getXPosition() {
        return xPosition;
    }

    public int getYPosition() {
        return yPosition;
    }

    public String getColor() {
        return color;
    }

    public boolean isVisible() {
        return isVisible;
    }

    public void changeColor(String newColor) {
        color = newColor;
        if (drawn) {
            wall.changeColor(color);
        }
    }

    public void makeVisible() {
        if (!drawn) {
            draw();
        } else {
            wall.makeVisible();
            window.makeVisible();
            roof.makeVisible();
            blueCircle.makeVisible();
            sun.makeVisible();
            flagLeft.makeVisible();
            flagRight.makeVisible();
            flagSun.makeVisible();
            isVisible = true;
        }
    }

    public void makeInvisible() {
        wall.makeInvisible();
        window.makeInvisible();
        roof.makeInvisible();
        blueCircle.makeInvisible();
        sun.makeInvisible();
        flagLeft.makeInvisible();
        flagRight.makeInvisible();
        flagSun.makeInvisible();
        isVisible = false;
    }
}