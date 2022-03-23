Walker[] frictionWalkers = new Walker[8];
PVector brakingLine = new PVector(0,0);

void setup()
{
   size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i = frictionWalkers.length; i > 0; i--)
  {
    frictionWalkers[i-1] = new Walker(i);
    float posY = 2 *(Window.windowHeight / frictionWalkers.length)  * 
    (i - (frictionWalkers.length / 2));
    frictionWalkers[i-1].position = new PVector(-540, posY);
    frictionWalkers[i-1].scale = frictionWalkers[i-1].mass * 15;
  }
}

void draw()
{
  background(255);
  
  strokeWeight(5);
  line(0,360,0,-360);
  
  for(Walker fWalker : frictionWalkers)
  {
    
    fWalker.render();
    fWalker.update();
    float mew  = 0.01f;
    float normal = 1f;
    if(fWalker.position.x >= brakingLine.x)
    {
      mew = 0.4f;
    }
    float frictionMagnitude = mew * normal;
    PVector friction = fWalker.velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    fWalker.applyForce(friction);
    PVector acceleration = new PVector(0.2, 0);
    fWalker.applyForce(acceleration);
  }
}

void mousePressed()
{
 setup();
}
