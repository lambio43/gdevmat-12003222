void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
 float x = mouseX - Window.windowWidth ;
 float y = -(mouseY - Window.windowHeight);
 return new PVector(x, y);
 
}

void draw()
{
 background(130);
 
 
 renderLightSaber();
 renderHandle();
 
}

void renderHandle()
{
   PVector mouse = mousePos();
  strokeWeight(25);
  stroke(0,0,0);
  mouse.normalize().mult(50);
  line (-(mouse.x), -(mouse.y), mouse.x, mouse.y);
}

void renderLightSaber()
{
  PVector mouse = mousePos();
  strokeWeight(23);
  stroke(253, 0, 0);
  mouse.normalize().mult(400);
  line(-(mouse.x), -(mouse.y), mouse.x , mouse.y);
  println(mouse.mag());  
  
  strokeWeight(12);
  stroke(255,185,204);
  mouse.normalize().mult(390);
  line(-(mouse.x), -(mouse.y), mouse.x , mouse.y);
 
}
