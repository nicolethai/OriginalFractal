public int pen;

public void setup() {
  size(500, 500);
}

public void draw() {
  background(250, 230, 5);
  //pen = color((int)(Math.random()*255));
  thisFractal(width/2, height/2, 500);
}

public void thisFractal(float x, float y, float thisW) {
  if(thisW > 10) {
    noFill();
    stroke(0, (int)(Math.random()*255), (int)(Math.random()*255));
    strokeWeight(1);
    ellipse(x, y, thisW, thisW);
    thisFractal(x+thisW/4, y, thisW/2);
    thisFractal(x-thisW/4, y, thisW/2);
    thisFractal(x, y+thisW/4, thisW/2);
    thisFractal(x, y-thisW/4, thisW/2);
  } 
}