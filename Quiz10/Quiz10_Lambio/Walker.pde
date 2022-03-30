public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 50;
  public float scale = 15;
  
  public float mass = 1;
  
  public float r = 255, g = 255, b = 255, a = 255;
  
  public Walker(int massInput)
  {
    mass = massInput;
    r = random(256);
    g = random(256);
    b = random(256);
  }
  
  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f); // force accumulation
  }
  
   public void update()
  {
   this.velocity.add(this.acceleration); // velocity accumulation
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity); 
   this.acceleration.mult(0);
  }
  
  public void render()
  {
   fill(r,g,b);
   circle(position.x, position.y, scale); 
  }
  
    public void checkEdges()
  {
    if(this.position.y <= Window.bottom)
    {
     this.position.y = Window.bottom;
     this.velocity.y *= -1;
    } 
    if(this.position.x >= Window.right)
    {
     this.position.x = Window.right;
     this.velocity.x *= -1;
    } 
    if(this.position.x <= Window.left)
    {
     this.position.x = Window.left;
     this.velocity.x *= -1;
    } 
  }
}
