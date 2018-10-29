Spaceship one;

public void setup() 
{
  size(300,300);
  one = new Spaceship();
}
public void draw() 
{
  background(0);
  one.setX(150);
  one.setY(150);
  one.show();
  one.move();
}
public void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      one.accelerate(10);
    }
    if (keyCode == LEFT)
    {
      one.turn(-10);
    }
    if(keyCode == RIGHT)
    {
      one.turn(10);
    }
  }
}
