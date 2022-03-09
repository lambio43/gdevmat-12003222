public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  public float scale;
  
  public float velocityLimit = 9;
  
  PVector mousePos()
{
 float x = mouseX - Window.windowWidth ;
 float y = -(mouseY - Window.windowHeight);
 return new PVector(x, y);
}

void generateDirection()
{
 acceleration = PVector.sub(mousePos(), position);
 acceleration.normalize();
}
  
  public void update()
  {
   this.acceleration.mult(0.2);
   this.velocity.add(acceleration);
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity); 
  }
  
  public void render()
  {
   circle(position.x, position.y, scale); 
  }
}
