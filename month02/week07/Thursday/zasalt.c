public Circle(int xPosition, int y, int d, String col) {
    this.xPosition = xPosition;
    yPosition = y;
    diameter = d;
    color = col;
}

public class Picture {
    private Square wall;
    private Circle sun;

    public Picture() {
        wall = new Square(100, 150, 120, "red");
        sun = new Circle(220, 40, 50, "yellow");
    }

    public void draw() {
        wall.makeVisible();
        sun.makeVisible();
    }
}

Circle copy = new Circle(
    original.getX(),
    original.getY(),
    original.getDiameter(),
    original.getColor()
);
copy.changeColor("red"); 

public void drawTree(int x, int y) {
    Square trunk = new Square(x, y, 20, "brown");
    Circle leaves = new Circle(x - 20, y - 50, 60, "green");
    trunk.makeVisible();
    leaves.makeVisible();
}