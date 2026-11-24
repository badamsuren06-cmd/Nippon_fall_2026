
/**
 * Write a description of class rectangle here.
 *
 * @author (your name)
 * @version (a version number or a date)
 */
public class Rectangle
{
    private int width;
    private int height;
    private int xPosition;
    private int yPosition;
    private String color;
    private boolean isVisible;

    public Rectangle() {
        width = 80;
        height = 40;
        xPosition = 310;
        yPosition = 120;
        color = "blue";
        isVisible = false;
    }

    public void makeVisible(){
        isVisible = true;
        draw();
    }

    public void makeInvisible(){
        erase();
        isVisible = false;
    }

    public void changeSize(int newWidth, int newHeight){
        erase();
        width = newWidth;
        height = newHeight;
        draw();
    }

    public void changeColor(String newColor){
        color = newColor;
        draw();
    }

    public void moveHorizontal(int distance){
        erase();
        xPosition += distance;
        draw();
    }

    public void moveVertical(int distance){
        erase();
        yPosition += distance;
        draw();
    }

    private void draw(){
        if(isVisible){
            Canvas canvas = Canvas.getCanvas();
            canvas.draw(this, color,
                new java.awt.Rectangle(xPosition, yPosition, width, height));
            canvas.wait(10);

        }
    }

    private void erase(){
        if (isVisible){
            Canvas canvas = Canvas.getCanvas();
            canvas.erase(this);
        }
    }


}
