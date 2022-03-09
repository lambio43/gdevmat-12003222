public class Walker
{
 PVector position = new PVector(random(-640,640),random(-360,360));
 PVector direction = new PVector();
 public float circleSize = 50;
 public color circleColor = color(255,255,255);
 float speed = 10;
 
 PVector mousePos()
{
 float x = mouseX - Window.windowWidth ;
 float y = -(mouseY - Window.windowHeight);
 return new PVector(x, y);
}

void followMouse()
{
 position = mousePos(); 
}
 void render()
 {
   noStroke();
   fill (circleColor);
   circle(position.x, position.y ,circleSize);
 }
 
  void generateRandomSize()
  {
    circleSize = random(30, 100);
  }

  void generateRandomPos()
  {
   if (position.x < 1550 && position.y < 1220 )
   {
   float gaussianX = randomGaussian();
   float gaussianY = randomGaussian();
   float standardDeviation = 900;
   float mean = 0;
   position.x = standardDeviation * gaussianX + mean;
   position.y = standardDeviation * gaussianY + mean;
   }
   
  }
  
  void generateDirection(Walker target)
  {
    direction = PVector.sub(target.position, position);
    direction.normalize();
  }
  
  void walkingWalker()
  {
   position.add(direction.mult(speed));
  }
  
  void generateRandomColor()
  {
     circleColor = color(random(255), random(255), random(255), random(80,101));
  }
  
}
