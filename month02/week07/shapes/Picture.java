
/**
 * Write a description of class Picture here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Picture
{
    private Square wall;
    private Square window;
    private Triangle roof;
    private Circle sun;

    public Picture()
    {
        wall = new Square(100, 150, 120, "red");
        window = new Square(130, 180, 40, "black");
        roof = new Triangle(160, 90, 60, 160, "green");
        sun = new Circle(350, 40, 70, "yellow");
    }
    
    public void drawTree(int x, int y)
    {
        Square trunk = new Square(x, y, 20, "brown");
        Circle leaves = new Circle(x - 20, y - 50, 60, "green");
        trunk.makeVisible();
        leaves.makeVisible();
    }
    
    public void forest(int n)
    {
        for (int i = 0; i < n; i++)
        {
            int x = 300 + i * 50;
            drawTree(x, 250);
        }
    }

    public void draw()
    {
        wall.makeVisible();
        window.makeVisible();
        roof.makeVisible();
        sun.makeVisible();
        drawTree(30, 250);
        drawTree(280, 250);
        drawTree(340, 250);
        drawTree(400, 250);
        drawTree(450, 280);
    }
    
    public void setNight()
    {
        wall.changeColor("gray");
        window.changeColor("yellow");
        roof.changeColor("black");
        sun.makeInvisible();
    }

    public void setDay()
    {
        wall.changeColor("red");
        window.changeColor("black");
        roof.changeColor("green");
        sun.makeVisible();
    }
    
    public Circle getSun()
    {
    return sun;
    }
    
}
    


