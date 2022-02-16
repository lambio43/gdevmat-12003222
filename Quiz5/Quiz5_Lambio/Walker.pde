public class Walker
{
 PVector position = new PVector();
 PVector speed = new PVector(5, 8);
 
 void render()
{
  fill(201, 69, 45);
  circle(position.x, position.y, 45);
}

void moveAndBounce()
{
  
  position.add(speed);
  
  if ((position.x > Window.right) || (position.x < Window.left))
  {
   speed.x *= -1; 
  }
 if ((position.y > Window.top) || (position.y < Window.bottom))
  {
   speed.y *= -1; 
  }
}
}


 
