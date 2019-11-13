Spaceship ufo;//your variable declarations here
public void setup() 
{
	size(500,500);
    ufo = new Spaceship();
}
public void draw() 
{
	background(127);
	ufo.show();
	ufo.move();
}
public void keyPressed(){
	if(key == 'w'){ufo.accelerate(.1);}
	if(key == 'a'){ufo.turn(-3);}
	if(key == 'd'){ufo.turn(3);}
	if(key == 'q'){
		ufo.setDirectionX(0);
		ufo.setDirectionY(0);
		ufo.setCenterX(500*Math.random());
		ufo.setCenterY(500*Math.random());
		ufo.setPointDirection(360*Math.random());
	}
}

