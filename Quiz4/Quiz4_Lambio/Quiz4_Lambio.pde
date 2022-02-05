void setup()
{
    size (1280,720,P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
}


Walker perlinWalker = new Walker();
//float tColor = 0.6f;
 
void draw()
{
  //float random = noise(t);
  //println(random);
  //t+= 0.01f;
  
  //float n = noise(t);
  //float x = map(n, 0, 1, 0, 360);
  //rect(-640 + (t*100), -360, 1, x);
  
  //t+= 0.01f;
  
  
 noStroke();

 perlinWalker.perlinWalk();
 perlinWalker.render();


    //int rVal = int(map(noise(tColor), 0, 1, 0, 255));
    //println(rVal);
    //tColor +=0.1f;
    
    //color red = color(rVal, rVal, 0);
    //fill(red);
    //noStroke();
    //circle(random(250), random(300), 10);
    
}
