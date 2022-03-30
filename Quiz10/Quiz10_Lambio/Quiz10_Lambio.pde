Walker[] dragWalkers = new Walker[10];
Liquid ocean= new Liquid(0, -100, Window.right, Window.bottom, 0.1f);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  float posInterval = 60;
  float posX = Window.left + 100;
  
  for(int i = dragWalkers.length; i > 0; i--)
  {
   dragWalkers[i - 1] = new Walker(i);
   dragWalkers[i - 1].position = new PVector(posX, 300);
   dragWalkers[i - 1].scale = dragWalkers[i - 1].mass * 15;
   posX += posInterval * 2;
  }
  
}

void draw()
{
  background(255);
  
  PVector wind = new PVector (0.1, 0);
  PVector gravity = new PVector(0, -0.15f);
  
  float c = 0.1f;
  float normal = 1;
  float frictionMagnitude = c * normal;
  PVector friction = new PVector();
  
  ocean.render();
  
  for(Walker dWalker : dragWalkers)
  {
   dWalker.render(); 
   dWalker.update();
   dWalker.applyForce(wind);
   
   dWalker.applyForce(gravity.mult(gravity, dWalker.mass));
   
   friction = dWalker.velocity.copy();
   dWalker.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));
   
   if (ocean.isCollidingWith(dWalker))
   {
    PVector dragForce = ocean.calculateDragForce(dWalker);
    dWalker.applyForce(dragForce);
   }
   
   dWalker.checkEdges();
  }
}

void mousePressed()
{
 setup();
}
