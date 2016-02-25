public void setup() {
	size(500, 500);
	noLoop();
}

public void draw() {
	background(0);
	// noFill();
	design(width/2, height/2, 1, 500);
}

public void design(int xPos, int yPos, int size, int num) {
	if(num > 0) {
		design(xPos+size, yPos+size, size+1, num-1);
		// design(xPos-5, yPos-5, size+1, num-1);
		// design(xPos-5, yPos-5, size/5, num-2);
		// rotate(PI/3.0);
		ellipse(xPos, yPos, size, size);
		ellipse(xPos-size, yPos-size, size, size);
	}
	else {
		ellipse(xPos, yPos, size, size);
		ellipse(xPos-size, yPos-size, size, size);
	}
}