Walker[] newtonWalkers = new Walker[10]; 
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector(0, -0.4);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for(int i = 0; i < newtonWalkers.length; i++)
  {
   newtonWalkers[i]  = new Walker(i+1); 
   newtonWalkers[i].position = new PVector(-500,200);
   newtonWalkers[i].scale = newtonWalkers[i].mass * 15;
  }
} 

void draw()
{
 background(80); 
  
  for(int i = newtonWalkers.length; i > 0 ; i--)
  {
    newtonWalkers[i-1].render();
    newtonWalkers[i-1].update();
    newtonWalkers[i-1].applyForce(wind);
    newtonWalkers[i-1].applyForce(gravity);
    newtonWalkers[i-1].checkEdges();
  }
}
