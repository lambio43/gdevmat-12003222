public class Walker
{
 public float xCoordinate;
 public float yCoordinate;
 public int circleSize = 0;
 public float tx =21000, ty = 39000;
 public float tRedColor = 6900, tGreenColor = 4200, tBlueColor= 2100;
 public float tSize = 39;
 
 void render()
 {
  fill(generateRandomColor());
  generateRandomSize();
  circle(xCoordinate, yCoordinate ,circleSize);
 }
 
 void perlinWalk()
 {
   xCoordinate = map(noise(tx), 0, 1, -640, 640);
   yCoordinate = map(noise(ty), 0, 1, -360, 360);
   
   tx +=0.01f;
   ty +=0.01f;
 }
 
   color generateRandomColor()
  {
    int rVal = int(map(noise(tRedColor), 0, 1, 0, 255));
    int gVal = int(map(noise(tGreenColor), 0, 1, 0, 255));
    int bVal = int(map(noise(tBlueColor), 0, 1, 0, 255));
    //int alphaVal = int(random(10,101));
    color randomColor = color(rVal, gVal, bVal);  
    tRedColor += 2;
    tGreenColor += 2;
    tBlueColor += 2;

    return randomColor;
  }
  
  void generateRandomSize()
  {
    circleSize = int(map(noise(tSize), 0, 1, 5, 150));
    tSize += 21;
  }
}
