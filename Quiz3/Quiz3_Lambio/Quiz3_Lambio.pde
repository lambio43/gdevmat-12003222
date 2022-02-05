void setup()
{
 size (1280, 720, P3D);
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
 background(0);
}

void draw()
{
  float xGaussian = randomGaussian();
  float sizeGaussian = randomGaussian();
  
  float xStd = 400;
  float xMean = 0;
  float sizeStd = 35;
  float sizeMean = 2;
  
  float xCoordinate = xStd * xGaussian + xMean;
  float yCoordinate = random(-360,361);
  float circleSize = sizeStd * sizeGaussian * sizeMean;
  
  noStroke();
  fill(generateRandomColor());
  circle(xCoordinate, yCoordinate, circleSize);
}

  color generateRandomColor()
  {
    int rVal = int(random(256));
    int gVal = int(random(256));
    int bVal = int(random(256));
    int alphaVal = int(random(10,101));
    color randomColor = color(rVal, gVal, bVal, alphaVal);
    
    return randomColor;
  }
