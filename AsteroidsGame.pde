Spaceship one;

public void setup() 
{
  size(300,300);
  one = new Spaceship();
}
public void draw() 
{
  one.setX(150);
  one.setY(150);
  one.show();
}
public void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      one.accelerate(1.5);
    }
    if (keyCode == LEFT)
    {
      one.turn(-20);
    }
    if(keyCode == RIGHT)
    {
      one.turn(20);
    }
}
