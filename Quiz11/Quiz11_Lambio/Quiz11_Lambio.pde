Walker gravAttractionWalkers[] = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  
  for (int i = 0; i < gravAttractionWalkers.length; i++)
  {
    gravAttractionWalkers[i] = new Walker(i + 1);
    gravAttractionWalkers[i].position = new PVector(random(Window.left + 100, Window.right - 100),
    random(Window.bottom + 50, Window.top - 50));
    gravAttractionWalkers[i].scale *= gravAttractionWalkers[i].mass;
  }
}

void draw()
{
  background(255);
  
  for (int i = gravAttractionWalkers.length -1 ; i > 0; i--)
  {
   gravAttractionWalkers[i].render();
   gravAttractionWalkers[i].update();
   gravAttractionWalkers[i].checkEdges();   
   
   for (int j = 0; j < gravAttractionWalkers.length; j++)
   {
     if (i != j)
     {
      gravAttractionWalkers[i].applyForce(
      gravAttractionWalkers[j].calculateAttraction(gravAttractionWalkers[i]));    
     }
   }
  }
}
