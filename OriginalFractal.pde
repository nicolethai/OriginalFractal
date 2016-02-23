public void setup() {
	size(500, 500);
	noLoop();
}

public void draw() {
	background(0);
	design(width/2, height/2, 10, 100);
}

public void design(int xPos, int yPos, int size, int num) {
	if(num > 0) {
	 	design(xPos, yPos, size-5, num-1);
	 	ellipse(xPos, yPos, size, size);
	}
	else {
		noFill();
		strokeWeight(1);
		stroke((int)(Math.random()*255), (int)(Math.random()*255), 0);
		ellipse(xPos, yPos, size, size);
	}
}