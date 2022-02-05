class Walker
{
  float x;
  float y;
  
  void render()
  {
    noStroke();
    fill(generateRandomColor());
   circle (x, y, 30);
   
  }
  
  color generateRandomColor()
  {
    int rVal = int(random(256));
    int gVal = int(random(256));
    int bVal = int(random(256));
    int alphaVal = int(random(50,101));
    color randomColor = color(rVal, gVal, bVal, alphaVal);
    
    return randomColor;
  }
  
 void randomWalk()
 {
    int rng = int(random(8));
    
    if (rng == 0)
    {
      y+=10;
      x+=10;
    }
    else if (rng == 1)
    {
      y-=10;
      x+=10;
    }
    else if (rng == 2)
    {
      y+=10;
      x-=10;
    }
    else if (rng == 3)
    {
      y-=10;
      x-=10;
    }
    else if (rng == 4)
    {
      x+=10;
    }
    else if (rng == 5)
    {
      x-=10;
    }
    else if (rng == 6)
    {
      y+=10;
    }
    else if (rng == 7)
    {
      y-=10;
    }
 }
 
 void randomWalkBiased()
 {
    int rng = int(random(1,81));
    
    if (rng <= 8)
    {
      y+=10;
      x+=10;
    }
    else if (rng <= 16)
    {
      y-=10;
      x+=10;
    }
    else if (rng <= 24)
    {
      y+=10;
      x-=10;
    }
    else if (rng <= 48)
    {
      y-=10;
      x-=10;
    }
    else if (rng <= 56)
    {
      x+=10;
    }
    else if (rng <= 64)
    {
      x-=10;
    }
    else if (rng <= 72)
    {
      y+=10;
    }
    else if (rng <= 80)
    {
      y-=10;
    }
 }
}
