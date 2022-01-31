int frequencyVal = -10;
int amplitudeVal = 30;
float waveSpeed = 0.0;  

void setup()
{
  size (1280, 720, P3D);
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0); 
}

void draw()
{
  background(0);
  
  drawCartesianPlane();
  drawQuadraticEquation1();
  drawLinearEquation2();
  drawSinWave3(amplitudeVal, frequencyVal);
}

 void drawCartesianPlane()
  {
  strokeWeight(3);
  color white = color(255,255,255);
  fill (white);
  stroke (white);
  line(300, 0, -300, 0);
  line(0, 300, 0, -300);
  
  strokeWeight(1);
  for (int i = -300 ; i <= 300; i+=10)
  {
    line(i, 10, i, -10);
    line(10, i, -10, i);
  }
  }

void drawQuadraticEquation1()
{
 color yellow = color(255,255,0);
 fill(yellow);
 stroke(yellow);
 
 for (float x = -300; x <= 300; x+= 0.1f)
 {
  circle ( x * 10, ((float)Math.pow(x,2) - (15 * x) - 3), 5);
 }
}

void drawLinearEquation2()
{
 color purple = color(128,0,128);
 fill(purple);
 noStroke();
 
 for (float x = -250; x <= 250; x+=0.5f)
 {
  circle( x, (-5 * x) + 30, 5);
 }
}

void drawSinWave3(float amp, float freq)
{
 color blue = color(0,0,255); 
 fill (blue);
 noStroke();
 waveSpeed += 1;

  float yValue= waveSpeed;

 for (float x = -50; x < 50; x+=0.08f)
  {
    circle(x * freq, (float)Math.sin(yValue) * amp , 5); 
       yValue += 0.09f;
  }
}

void keyPressed() 
{
  if (key == CODED) 
  {
    
    if (keyCode == UP) {
      amplitudeVal += 1;
    } else if (keyCode == DOWN) {
      amplitudeVal -= 1;
    } 
     else if (keyCode == RIGHT)
     {
       frequencyVal += 1;
     }
     else if (keyCode == LEFT)
     {
       frequencyVal -= 1; 
     }
  }
}
