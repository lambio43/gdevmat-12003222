Walker[] colorWalkers = new Walker[150];
Walker blackHole = new Walker();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  background(255,255,255);
  
  for (int i = 0; i < colorWalkers.length; i++)
  {
    colorWalkers[i] = new Walker();
  }
  
  for (int i = 0; i < colorWalkers.length; i++)
  {
   colorWalkers[i].generateRandomPos();
   colorWalkers[i].generateRandomSize();
   colorWalkers[i].generateRandomColor();
   colorWalkers[i].render();
  }
  blackHole.render();
}

void draw()
{
    background(0,0,0);
    
   for (int i = 0; i < colorWalkers.length; i++)
  {
    colorWalkers[i].generateDirection(blackHole);
    colorWalkers[i].walkingWalker();
  }
  
   for (int i = 0; i < colorWalkers.length; i++)
  {
    colorWalkers[i].render();
    blackHole.followMouse();
    blackHole.render();
  }
  
}
