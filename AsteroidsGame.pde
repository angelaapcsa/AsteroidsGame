Spaceship one;

public void setup() 
{
  size(600,600);
  one = new Spaceship();
}
public void draw() 
{
  background(0);
  one.setX(300);
  one.setY(300);
  one.show();
  one.move();
  System.out.println(one.getPointDirection());
}
public void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      one.accelerate(100);
      one.move();
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
