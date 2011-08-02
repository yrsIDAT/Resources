float redness, blueness, greeness;
int pixel;
PImage img;
int count = 0;

void setup()
{
  size(320,240,P2D);
  img = loadImage("turkey.jpg");
  maskOff();
  for(int y=0; y<240 ;y++) {
    for(int x=0; x<320 ;x++) {
      pixel = img.get(x,y);
      redness = red(pixel);
      blueness = blue(pixel);
      greeness = green(pixel);
      if(redness<235) stroke(0);
      else {
        stroke(255);
        count = count + 1;
      }
//      stroke(redness,blueness,greeness);
      rect(x,y,1,1);
    }
  }
  println(count);
  if(count > 2000) println("Queen Victoria is docked");
  else println("Queen Victoria is at sea");
}

void maskOff()
{
  for(int y=200; y<240 ;y++) {
    for(int x=70; x<240 ;x++) {
      img.set(x,y,0);
    }
  }
  for(int y=130; y<200 ;y++) {
    for(int x=155; x<170 ;x++) {
      img.set(x,y,0);
    }
  }
  for(int y=0; y<70 ;y++) {
    for(int x=0; x<320 ;x++) {
      img.set(x,y,0);
    }
  }
}
