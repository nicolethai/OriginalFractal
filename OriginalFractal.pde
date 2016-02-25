public void setup() {
	size(500, 500);
	noLoop();
}

public void draw() {
	background(0);
	noFill();
	// stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));   
	design(0, 0, width, 500);
}

public void design(int xPos, int yPos, int size, int num) {
	if(num > 0) {
		design(xPos+2, yPos+2, size-5, num-1);
		stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));   
		ellipse(xPos, yPos, size, size);
		rotate(PI/3.0);
	 	rect(xPos, yPos, size, size);
	}
	else {
		ellipse(xPos, yPos, size, size);
		rect(xPos, yPos, size, size);
	}
}