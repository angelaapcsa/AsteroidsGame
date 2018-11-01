Spaceship one;
Star [] nightSky = new Star[200];
public void setup() 
{
  background(0);
  size(600,600);
  one = new Spaceship();
  for (int i = 0; i<nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<nightSky.length; i++)
  {
    nightSky[i].show();
  }
  one.show();
  one.move();
  System.out.println("Point direction: " + one.getPointDirection());
  System.out.println("DirectionX: " + one.getDirectionX());
  System.out.println("DirectionY: " + one.getDirectionY());
}
public void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      one.accelerate(.7);
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
