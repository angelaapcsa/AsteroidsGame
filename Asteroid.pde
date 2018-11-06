class Asteroid extends Floater
{
  private int rotSpeed;
  Asteroid()
  {
    corners = 8;
    int[] xS = {5,3,0,-2,-4,-3,1,4};
    int[] yS = {0,2,1,2,0,-3,-4,-2};
    xCorners = xS;
    yCorners = yS;
    myColor = (65);
    myCenterX = 150;
    myCenterY = 150;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    rotSpeed = 10;
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return (double)myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return (double)myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return (int)myPointDirection;}
  
  public void move()
  {
    
  }
}
