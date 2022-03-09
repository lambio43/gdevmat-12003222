Walker[] randomWalkers = new Walker[100];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  
  for(int i = 0; i < randomWalkers.length; i++)
  {
   randomWalkers[i] = new Walker();
   randomWalkers[i].position = new PVector (random(-640,640),random(-360,360));
   randomWalkers[i].scale = random(10, 40);
  }

} 

void draw()
{
 background(80); 
 
 for (int i = 0; i< randomWalkers.length; i++)
 {
  randomWalkers[i].render();
  randomWalkers[i].generateDirection();
  randomWalkers[i].update();
 }

}
