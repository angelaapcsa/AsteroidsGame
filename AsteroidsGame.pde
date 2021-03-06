Spaceship one;
ArrayList <Asteroid> two = new ArrayList <Asteroid>();
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
  for(int j = 0; j<25; j++){
    two.add(j, new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<nightSky.length; i++)
  {
    nightSky[i].show();
  }
  for(int j = 0; j<two.size(); j++)
  {  //asteroids
     two.get(j).move();
     two.get(j).show();
     if(dist(one.getX(), one.getY(), two.get(j).getX(), two.get(j).getY()) <= 20)
     {
        two.remove(j);
        two.add(j, new Asteroid());
     }
  }
  one.show();
  one.move();
  }
public void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP) //accelerate
    {
      one.accelerate(.75);
    }
    if (keyCode == LEFT) //counter
    {
      one.turn(-10);
    }
    if(keyCode == RIGHT) //clockwise
    {
      one.turn(10);
    }
  }
  else if(key == 'h') //hyperspace
    {
      one.setX((int)(Math.random()*500));
      one.setY((int)(Math.random()*500));
      one.setDirectionX(0);
      one.setDirectionY(0);
      one.setPointDirection((int)(Math.random()*361)); 
    }
 
}
