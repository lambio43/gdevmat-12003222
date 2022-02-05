Walker randomWalker = new Walker();
Walker biasedWalker = new Walker();
int walkerInstance = int(random(4));

void setup()
{
  size (1020,720,P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}


void draw()
{
println(walkerInstance);

 if (walkerInstance <=1)
 {
   randomWalker.randomWalk();
   randomWalker.render();
 }
 else if (walkerInstance <=3)
 {
  biasedWalker.randomWalkBiased(); 
   biasedWalker.render();
 }
}
