class Spaceship extends Floater  
{   
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return (int)myPointDirection;}
  public Spaceship()
  {
    corners = 3;
    int[] xS = {-8,16,-8,-2};
    int[] yS = {-8,0,8,0};
    xCorners = xS;
    yCorners = yS;
    myColor = (255);
  }
  public void move ()
  {  
  //Moves the floater towards the coordinates
  //myDirectionX and myDirectionY

  //move the floater in the current direction of travel
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;

  //wrap around screen
    if(myCenterX >width){
      myCenterX = 0;
    }
    else if (myCenterX<0){
      myCenterX = width;
    }
    if(myCenterY >height){
      myCenterY = 0;
    }
    else if (myCenterY < 0){
      myCenterY = height;
    }
  }
  public void accelerate (double dAmount)
  {  
    //convert the current direction the ship is
    //pointing to radians
    double dRadians =myPointDirection*(Math.PI/180);
    //change coordinates of direction of travel
    myDirectionX += ((dAmount) * Math.cos(dRadians));
    myDirectionY += ((dAmount) * Math.sin(dRadians));    
  }
  public void turn(int nDegreesOfRotation)
  {
    myPointDirection+=nDegreesOfRotation;
  }

}
