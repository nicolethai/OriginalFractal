public void setup() {
	size(500, 500);
	noLoop();
}

public void draw() {
	background(0);
	design(width/2, height/2, 20, 500);
}

public void design(int xPos, int yPos, int size, int num) {
	if(num > 0) {
		design(xPos+2, yPos+2, size-1, num-1);
		design(xPos-2, yPos-2, size-1, num-1);
		// rotate(PI/3.0);
		ellipse(xPos, yPos, size, size);
	}
	else {
		ellipse(xPos, yPos, size, size);
	}
}