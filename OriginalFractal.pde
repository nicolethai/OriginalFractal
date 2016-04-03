public int pen;
public int nTimes = 10;

public void setup() {
  size(700, 700);
  noLoop();
}

public void draw() {
  background(255, 255, 144);
  //pen = color((int)(Math.random()*255));
  thisFractal(width/2, height/2, 500);
}

public void mousePressed() {
  if(mouseButton == LEFT) {
    nTimes--;
  }
  else if(mouseButton == RIGHT) {
    nTimes++;
  }
  else {
    nTimes = 10;
  }
}

public void thisFractal(float x, float y, float thisW) {
  if(thisW > 10) {
    noFill();
    stroke(255, 139, 197);
    strokeWeight(1);
    ellipse(x, y, thisW, thisW);
    thisFractal(x+thisW/4, y, thisW/2);
    thisFractal(x-thisW/4, y, thisW/2);
    thisFractal(x, y+thisW/4, thisW/2);
    thisFractal(x, y-thisW/4, thisW/2);
  } 
}
